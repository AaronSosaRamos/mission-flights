import os
import sys
import argparse
import yaml
import traceback
import paramiko
from ftplib import FTP, error_perm, all_errors
import threading
import socket
import time
import stat
from abc import ABC, abstractmethod
import boto3
from botocore.exceptions import BotoCoreError, ClientError, NoCredentialsError
from google.cloud import storage as gcs_storage
from google.api_core.exceptions import GoogleAPIError

# protocols/base.py

class BaseFileClient(ABC):
    def __init__(self, config):
        self.config = config

    @abstractmethod
    def list_files(self, path):
        pass

    @abstractmethod
    def upload_file(self, local_path, remote_path):
        pass

    @abstractmethod
    def download_file(self, remote_path, local_path):
        pass

    @abstractmethod
    def delete_file(self, remote_path):
        pass

    @abstractmethod
    def move_file(self, src_path, dst_path):
        pass

    @abstractmethod
    def ensure_dir(self, path):
        pass

    @abstractmethod
    def connect(self):
        pass

    @abstractmethod
    def disconnect(self):
        pass

    @abstractmethod
    def reconnect(self):
        pass

# protocols/sftp_client.py

class SFTPFileClient(BaseFileClient):
    def __init__(self, config):
        super().__init__(config)
        self.transport = None
        self.sftp = None
        self.lock = threading.RLock()
        self.append_only = config.get('policies', {}).get('append_only', False)
        self.overwrite_allowed = config.get('policies', {}).get('overwrite_allowed', True)
        self._connected = False

    def connect(self):
        with self.lock:
            if self._connected:
                return
            conn_cfg = self.config['connection']
            host = conn_cfg['host']
            port = int(conn_cfg.get('port', 22))
            username = conn_cfg['username']
            timeout = float(conn_cfg.get('timeout_seconds', 30))
            auth_method = conn_cfg['auth_method']
            host_key_policy = conn_cfg.get('host_key_policy', 'require')
            known_hosts_path = conn_cfg.get('known_hosts_path')
            host_fingerprint = conn_cfg.get('host_fingerprint')
            password = None

            try:
                self.transport = paramiko.Transport((host, port))
            except Exception as e:
                raise RuntimeError(f"Failed to instantiate paramiko.Transport: {e}")

            if host_key_policy != 'disable':
                if known_hosts_path and os.path.exists(known_hosts_path):
                    known_hosts = paramiko.HostKeys(known_hosts_path)
                    kh = known_hosts.lookup(host)
                    if not kh:
                        self.transport.close()
                        raise RuntimeError(
                            f"Host {host} not found in known_hosts ({known_hosts_path})"
                        )
                    self.transport.set_keepalive(10)
                    keytype, key = next(iter(kh.items()))
                    self.transport.get_remote_server_key()
                elif host_fingerprint:
                    self.transport.set_keepalive(10)
                    self.transport.start_client(timeout=timeout)
                    key = self.transport.get_remote_server_key()
                    fp_sha256 = paramiko.util.hexlify(paramiko.util.sha256(key.asbytes()))
                    if fp_sha256.decode() != host_fingerprint.lower().replace(':', ''):
                        self.transport.close()
                        raise RuntimeError(
                            "Host fingerprint mismatch"
                        )
                else:
                    raise RuntimeError(
                        "Host key verification required but no known_hosts_path or host_fingerprint provided"
                    )

            ssh_args = {}
            if auth_method == 'ssh_key':
                ssh_key_path = conn_cfg.get('ssh_key_path')
                ssh_key_env = conn_cfg.get('ssh_key_env')
                private_key = None
                if ssh_key_path:
                    private_key = paramiko.RSAKey.from_private_key_file(ssh_key_path)
                elif ssh_key_env:
                    ssh_key_data = os.environ[ssh_key_env]
                    private_key = paramiko.RSAKey.from_private_key(
                        io.StringIO(ssh_key_data)
                    )
                else:
                    self.transport.close()
                    raise RuntimeError('No ssh_key_path or ssh_key_env defined for authentication')

                self.transport.connect(username=username, pkey=private_key)
            elif auth_method == 'password':
                password_env = conn_cfg.get('password_env')
                if not password_env or password_env not in os.environ:
                    self.transport.close()
                    raise RuntimeError('password_env required for password authentication')
                password = os.environ[password_env]
                self.transport.connect(username=username, password=password)
            else:
                self.transport.close()
                raise RuntimeError(f'Unknown auth_method: {auth_method}')
            try:
                self.sftp = paramiko.SFTPClient.from_transport(self.transport)
            except Exception as e:
                self.transport.close()
                raise RuntimeError(f"Failed to create SFTP client: {e}")
            self._connected = True

    def disconnect(self):
        with self.lock:
            if self.sftp:
                self.sftp.close()
                self.sftp = None
            if self.transport:
                self.transport.close()
                self.transport = None
            self._connected = False

    def reconnect(self):
        self.disconnect()
        self.connect()

    def _exists(self, path):
        try:
            self.sftp.stat(path)
            return True
        except FileNotFoundError:
            return False

    def list_files(self, path):
        with self.lock:
            self.connect()
            try:
                items = self.sftp.listdir_attr(path)
                return [item.filename for item in items]
            except Exception as e:
                raise RuntimeError(f"SFTP list_files failed: {e}")

    def upload_file(self, local_path, remote_path):
        with self.lock:
            self.connect()
            if self.append_only and self._exists(remote_path):
                raise RuntimeError("Append-only policy enforced. Cannot overwrite existing file.")
            if (not self.overwrite_allowed) and self._exists(remote_path):
                raise RuntimeError("Overwrite policy disabled. Remote file already exists.")
            try:
                self.ensure_dir(os.path.dirname(remote_path))
                self.sftp.put(local_path, remote_path)
            except Exception as e:
                raise RuntimeError(f"SFTP upload_file failed: {e}")

    def download_file(self, remote_path, local_path):
        with self.lock:
            self.connect()
            try:
                os.makedirs(os.path.dirname(local_path), exist_ok=True)
                self.sftp.get(remote_path, local_path)
            except Exception as e:
                raise RuntimeError(f"SFTP download_file failed: {e}")

    def delete_file(self, remote_path):
        with self.lock:
            self.connect()
            if self.append_only:
                raise RuntimeError("Append-only policy enforced. Cannot delete files.")
            try:
                self.sftp.remove(remote_path)
            except FileNotFoundError:
                pass
            except Exception as e:
                raise RuntimeError(f"SFTP delete_file failed: {e}")

    def move_file(self, src_path, dst_path):
        with self.lock:
            self.connect()
            if self.append_only:
                raise RuntimeError("Append-only policy enforced. Cannot move files.")
            if (not self.overwrite_allowed) and self._exists(dst_path):
                raise RuntimeError("Overwrite policy disabled. Destination file already exists.")
            try:
                self.ensure_dir(os.path.dirname(dst_path))
                self.sftp.rename(src_path, dst_path)
            except Exception as e:
                raise RuntimeError(f"SFTP move_file failed: {e}")

    def ensure_dir(self, path):
        with self.lock:
            self.connect()
            if not path or path == '/':
                return
            try:
                self.sftp.stat(path)
                return
            except FileNotFoundError:
                parent = os.path.dirname(path.rstrip('/'))
                if parent != path:
                    self.ensure_dir(parent)
                self.sftp.mkdir(path)
            except Exception as e:
                raise RuntimeError(f"SFTP ensure_dir failed: {e}")

# protocols/ftp_client.py

class FTPFileClient(BaseFileClient):
    def __init__(self, config):
        super().__init__(config)
        self.ftp = None
        self.lock = threading.RLock()
        self.append_only = config.get('policies', {}).get('append_only', False)
        self.overwrite_allowed = config.get('policies', {}).get('overwrite_allowed', True)
        self._connected = False

    def connect(self):
        with self.lock:
            if self._connected:
                return
            conn_cfg = self.config['connection']
            host = conn_cfg['host']
            port = int(conn_cfg.get('port', 21))
            username = conn_cfg['username']
            timeout = float(conn_cfg.get('timeout_seconds', 30))
            passive = conn_cfg.get('passive_mode', True)
            auth_method = conn_cfg.get('auth_method')
            password = None

            ftp = FTP()
            try:
                ftp.connect(host, port, timeout=timeout)
                if auth_method == 'password':
                    password_env = conn_cfg.get('password_env')
                    if not password_env or password_env not in os.environ:
                        ftp.close()
                        raise RuntimeError('password_env required for password authentication')
                    password = os.environ[password_env]
                else:
                    password = ''
                ftp.login(username, password)
                ftp.set_pasv(passive)
            except Exception as e:
                ftp.close()
                raise RuntimeError(f"FTP connection failed: {e}")
            self.ftp = ftp
            self._connected = True

    def disconnect(self):
        with self.lock:
            if self.ftp:
                try:
                    self.ftp.quit()
                except Exception:
                    self.ftp.close()
                self.ftp = None
            self._connected = False

    def reconnect(self):
        self.disconnect()
        self.connect()

    def _exists(self, path):
        dirname, filename = os.path.split(path)
        try:
            self.ftp.cwd(dirname)
            files = self.ftp.nlst()
            return filename in files
        except Exception:
            return False

    def list_files(self, path):
        with self.lock:
            self.connect()
            try:
                file_list = []
                self.ftp.cwd(path)
                self.ftp.retrlines('NLST', file_list.append)
                return file_list
            except Exception as e:
                raise RuntimeError(f"FTP list_files failed: {e}")

    def upload_file(self, local_path, remote_path):
        with self.lock:
            self.connect()
            if self.append_only and self._exists(remote_path):
                raise RuntimeError("Append-only policy enforced. Cannot overwrite existing file.")
            if (not self.overwrite_allowed) and self._exists(remote_path):
                raise RuntimeError("Overwrite policy disabled. Remote file already exists.")
            try:
                self.ensure_dir(os.path.dirname(remote_path))
                with open(local_path, 'rb') as f:
                    self.ftp.storbinary(f"STOR {remote_path}", f)
            except Exception as e:
                raise RuntimeError(f"FTP upload_file failed: {e}")

    def download_file(self, remote_path, local_path):
        with self.lock:
            self.connect()
            try:
                os.makedirs(os.path.dirname(local_path), exist_ok=True)
                with open(local_path, 'wb') as f:
                    self.ftp.retrbinary(f"RETR {remote_path}", f.write)
            except Exception as e:
                raise RuntimeError(f"FTP download_file failed: {e}")

    def delete_file(self, remote_path):
        with self.lock:
            self.connect()
            if self.append_only:
                raise RuntimeError("Append-only policy enforced. Cannot delete files.")
            try:
                self.ftp.delete(remote_path)
            except error_perm as e:
                if str(e).startswith('550'):
                    pass
                else:
                    raise
            except Exception as e:
                raise RuntimeError(f"FTP delete_file failed: {e}")

    def move_file(self, src_path, dst_path):
        with self.lock:
            self.connect()
            if self.append_only:
                raise RuntimeError("Append-only policy enforced. Cannot move files.")
            if (not self.overwrite_allowed) and self._exists(dst_path):
                raise RuntimeError("Overwrite policy disabled. Destination file already exists.")
            try:
                self.ensure_dir(os.path.dirname(dst_path))
                self.ftp.rename(src_path, dst_path)
            except Exception as e:
                raise RuntimeError(f"FTP move_file failed: {e}")

    def ensure_dir(self, path):
        with self.lock:
            self.connect()
            if not path or path == '/':
                return
            parts = path.strip('/').split('/')
            pwd = self.ftp.pwd()
            for part in parts:
                try:
                    self.ftp.cwd(part)
                except error_perm:
                    self.ftp.mkd(part)
                    self.ftp.cwd(part)
            self.ftp.cwd(pwd)

# adapters/azure.py

class AzureSFTPFileClient(SFTPFileClient):
    def __init__(self, config):
        super().__init__(config)

    def list_files(self, path):
        try:
            return super().list_files(path)
        except Exception as e:
            raise RuntimeError(f"Azure SFTP list_files failed: {e}")

    def upload_file(self, local_path, remote_path):
        try:
            super().upload_file(local_path, remote_path)
        except Exception as e:
            raise RuntimeError(f"Azure SFTP upload_file failed: {e}")

    def download_file(self, remote_path, local_path):
        try:
            super().download_file(remote_path, local_path)
        except Exception as e:
            raise RuntimeError(f"Azure SFTP download_file failed: {e}")

    def delete_file(self, remote_path):
        try:
            super().delete_file(remote_path)
        except Exception as e:
            raise RuntimeError(f"Azure SFTP delete_file failed: {e}")

    def move_file(self, src_path, dst_path):
        try:
            super().move_file(src_path, dst_path)
        except Exception as e:
            raise RuntimeError(f"Azure SFTP move_file failed: {e}")

    def ensure_dir(self, path):
        try:
            super().ensure_dir(path)
        except Exception as e:
            raise RuntimeError(f"Azure SFTP ensure_dir failed: {e}")

# adapters/aws.py

class AWSFileClient(SFTPFileClient):
    def __init__(self, config):
        super().__init__(config)
        self.aws_config = config.get('aws', {})
        self.session = None

    def _boto3_session(self):
        if self.session:
            return self.session
        try:
            if self.aws_config.get('profile_name'):
                session = boto3.Session(profile_name=self.aws_config['profile_name'])
            else:
                session = boto3.Session()
            self.session = session
            return self.session
        except Exception as e:
            raise RuntimeError(f"Failed to create boto3 session: {e}")

    def describe_transfer_family_server(self, server_id):
        try:
            client = self._boto3_session().client('transfer')
            return client.describe_server(ServerId=server_id)
        except (BotoCoreError, ClientError) as e:
            raise RuntimeError(f"Failed to describe AWS Transfer Family server: {e}")

    def describe_transfer_family_user(self, server_id, user_name):
        try:
            client = self._boto3_session().client('transfer')
            return client.describe_user(ServerId=server_id, UserName=user_name)
        except (BotoCoreError, ClientError) as e:
            raise RuntimeError(f"Failed to describe AWS Transfer Family user: {e}")

    def list_files(self, path):
        try:
            return super().list_files(path)
        except Exception as e:
            raise RuntimeError(f"AWS SFTP list_files failed: {e}")

    def upload_file(self, local_path, remote_path):
        try:
            super().upload_file(local_path, remote_path)
        except Exception as e:
            raise RuntimeError(f"AWS SFTP upload_file failed: {e}")

    def download_file(self, remote_path, local_path):
        try:
            super().download_file(remote_path, local_path)
        except Exception as e:
            raise RuntimeError(f"AWS SFTP download_file failed: {e}")

    def delete_file(self, remote_path):
        try:
            super().delete_file(remote_path)
        except Exception as e:
            raise RuntimeError(f"AWS SFTP delete_file failed: {e}")

    def move_file(self, src_path, dst_path):
        try:
            super().move_file(src_path, dst_path)
        except Exception as e:
            raise RuntimeError(f"AWS SFTP move_file failed: {e}")

    def ensure_dir(self, path):
        try:
            super().ensure_dir(path)
        except Exception as e:
            raise RuntimeError(f"AWS SFTP ensure_dir failed: {e}")

# adapters/gcp.py

class GCPSFTPFileClient(SFTPFileClient):
    def __init__(self, config):
        super().__init__(config)
        self.gcs_config = config.get('gcp', {})
        self.gcs_client = None

    def _gcs_client(self):
        if self.gcs_client:
            return self.gcs_client
        try:
            self.gcs_client = gcs_storage.Client()
            return self.gcs_client
        except Exception as e:
            raise RuntimeError(f"Failed to create GCS client: {e}")

    def list_files(self, path):
        try:
            return super().list_files(path)
        except Exception as e:
            raise RuntimeError(f"GCP SFTP list_files failed: {e}")

    def upload_file(self, local_path, remote_path):
        try:
            super().upload_file(local_path, remote_path)
        except Exception as e:
            raise RuntimeError(f"GCP SFTP upload_file failed: {e}")

    def download_file(self, remote_path, local_path):
        try:
            super().download_file(remote_path, local_path)
        except Exception as e:
            raise RuntimeError(f"GCP SFTP download_file failed: {e}")

    def delete_file(self, remote_path):
        try:
            super().delete_file(remote_path)
        except Exception as e:
            raise RuntimeError(f"GCP SFTP delete_file failed: {e}")

    def move_file(self, src_path, dst_path):
        try:
            super().move_file(src_path, dst_path)
        except Exception as e:
            raise RuntimeError(f"GCP SFTP move_file failed: {e}")

    def ensure_dir(self, path):
        try:
            super().ensure_dir(path)
        except Exception as e:
            raise RuntimeError(f"GCP SFTP ensure_dir failed: {e}")

# config.py

class ConfigLoader:
    def __init__(self, config_path):
        self.config_path = config_path
        self.config = None

    def load(self):
        if not os.path.exists(self.config_path):
            raise FileNotFoundError(f"Config {self.config_path} not found")
        with open(self.config_path, 'r') as f:
            config = yaml.safe_load(f)
        self._validate(config)
        self.config = config
        return config

    def _validate(self, config):
        if 'provider' not in config:
            raise ValueError("Missing required 'provider' in config")
        if config['provider'] not in ('azure', 'aws', 'gcp', 'generic'):
            raise ValueError("Provider must be azure, aws, gcp, or generic")
        if 'protocol' not in config:
            raise ValueError("Missing required 'protocol'")
        if config['protocol'] not in ('sftp', 'ftp'):
            raise ValueError("Protocol must be sftp or ftp")
        conn = config.get('connection', {})
        for field in ('host', 'port', 'username', 'auth_method'):
            if field not in conn:
                raise ValueError(f"Missing required connection.{field}")
        if conn['auth_method'] not in ('ssh_key', 'password'):
            raise ValueError("auth_method must be ssh_key or password")
        if conn['auth_method'] == 'ssh_key' and \
            not (conn.get('ssh_key_path') or conn.get('ssh_key_env')):
            raise ValueError("ssh_key_path or ssh_key_env is required for ssh_key auth_method")
        if conn['auth_method'] == 'password' and not conn.get('password_env'):
            raise ValueError("password_env is required for password auth_method")
        if 'policies' in config:
            policies = config['policies']
            if not isinstance(policies, dict):
                raise ValueError("policies must be a dict")
            if 'append_only' in policies and not isinstance(policies['append_only'], bool):
                raise ValueError("policies.append_only must be true or false")
            if 'overwrite_allowed' in policies and not isinstance(policies['overwrite_allowed'], bool):
                raise ValueError("policies.overwrite_allowed must be true or false")

    def client(self):
        provider = self.config['provider']
        protocol = self.config['protocol']
        if provider == 'azure':
            return AzureSFTPFileClient(self.config)
        if provider == 'aws':
            return AWSFileClient(self.config)
        if provider == 'gcp':
            return GCPSFTPFileClient(self.config)
        if protocol == 'ftp':
            return FTPFileClient(self.config)
        if protocol == 'sftp':
            return SFTPFileClient(self.config)
        raise RuntimeError("No valid client implementation found.")

# cli.py

def main():
    parser = argparse.ArgumentParser(
        description="Multi-cloud FTP/SFTP File Manager",
    )
    parser.add_argument('--config', required=True, help='YAML config path')
    subparsers = parser.add_subparsers(dest='command')

    list_parser = subparsers.add_parser('list', help='List files in remote path')
    list_parser.add_argument('remote_path', help='Remote directory path')

    upload_parser = subparsers.add_parser('upload', help='Upload file')
    upload_parser.add_argument('local_path', help='Local file path')
    upload_parser.add_argument('remote_path', help='Remote destination path')

    download_parser = subparsers.add_parser('download', help='Download file')
    download_parser.add_argument('remote_path', help='Remote file path')
    download_parser.add_argument('local_path', help='Local destination path')

    delete_parser = subparsers.add_parser('delete', help='Delete remote file')
    delete_parser.add_argument('remote_path', help='Remote file path')

    move_parser = subparsers.add_parser('move', help='Move/rename remote file')
    move_parser.add_argument('src_path', help='Source remote path')
    move_parser.add_argument('dst_path', help='Destination remote path')

    health_parser = subparsers.add_parser('healthcheck', help='Check remote server health')

    args = parser.parse_args()
    if not args.command:
        parser.print_help()
        sys.exit(1)

    try:
        config_loader = ConfigLoader(args.config)
        config = config_loader.load()
        client = config_loader.client()
        result = None

        if args.command == 'list':
            files = client.list_files(args.remote_path)
            print('\n'.join(files))
        elif args.command == 'upload':
            client.upload_file(args.local_path, args.remote_path)
            print(f"Upload complete: {args.local_path} -> {args.remote_path}")
        elif args.command == 'download':
            client.download_file(args.remote_path, args.local_path)
            print(f"Download complete: {args.remote_path} -> {args.local_path}")
        elif args.command == 'delete':
            client.delete_file(args.remote_path)
            print(f"Deleted remote file: {args.remote_path}")
        elif args.command == 'move':
            client.move_file(args.src_path, args.dst_path)
            print(f"Move complete: {args.src_path} -> {args.dst_path}")
        elif args.command == 'healthcheck':
            client.connect()
            client.disconnect()
            print("Connection successful")
        else:
            print(f"Unknown command {args.command}")
            sys.exit(2)
    except Exception as e:
        print(f"Error: {e}", file=sys.stderr)
        traceback.print_exc()
        sys.exit(100)

if __name__ == '__main__':
    main()