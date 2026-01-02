CREATE TABLE IntakeFormNormalized (
    form_id VARCHAR(255) NOT NULL,
    template_name VARCHAR(255) NOT NULL,
    client_id VARCHAR(255),
    household_id VARCHAR(255),
    submission_timestamp TIMESTAMP NOT NULL,
    source_file VARCHAR(1024) NOT NULL,
    ingestion_timestamp TIMESTAMP NOT NULL,
    form_fields_json JSON NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (form_id, submission_timestamp)
)

CREATE TABLE Document_Metadata (
    document_id VARCHAR(512) NOT NULL,
    client_id VARCHAR(255),
    document_type VARCHAR(128) NOT NULL,
    upload_timestamp TIMESTAMP NOT NULL,
    file_hash VARCHAR(128),
    source_system VARCHAR(255) NOT NULL,
    linked_form_id VARCHAR(255),
    linked_envelope_id VARCHAR(255),
    dynamic_metadata_json JSON,
    ingestion_timestamp TIMESTAMP NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (document_id, upload_timestamp)
)

CREATE TABLE CustodianFormIndex (
    custodian VARCHAR(255) NOT NULL,
    form_id VARCHAR(255) NOT NULL,
    account_type VARCHAR(255),
    version VARCHAR(64),
    ingest_timestamp TIMESTAMP NOT NULL,
    file_name VARCHAR(1024) NOT NULL,
    source_system VARCHAR(255) NOT NULL,
    metadata_json JSON,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (form_id, version, custodian)
)

CREATE TABLE Envelope_Metadata (
    envelope_id VARCHAR(255) NOT NULL,
    event_timestamp TIMESTAMP NOT NULL,
    status VARCHAR(32) NOT NULL,
    recipient_email VARCHAR(512),
    recipient_role VARCHAR(255),
    doc_link VARCHAR(1024),
    source_system VARCHAR(255) NOT NULL,
    envelope_metadata_json JSON,
    ingestion_timestamp TIMESTAMP NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (envelope_id, event_timestamp)
)

CREATE TABLE AuditEventLog (
    auditeventid VARCHAR(255) NOT NULL,
    event_type VARCHAR(128) NOT NULL,
    actor_id VARCHAR(255),
    event_timestamp TIMESTAMP NOT NULL,
    related_form_id VARCHAR(255),
    related_document_id VARCHAR(255),
    related_envelope_id VARCHAR(255),
    source_system VARCHAR(255) NOT NULL,
    audit_metadata_json JSON,
    ingestion_timestamp TIMESTAMP NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (auditeventid, event_timestamp)
)

CREATE TABLE FormDocumentAssoc (
    form_id VARCHAR(255) NOT NULL,
    document_id VARCHAR(512) NOT NULL,
    association_type VARCHAR(64),
    association_metadata_json JSON,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (form_id, document_id)
)

CREATE TABLE EnvelopeDocumentAssoc (
    envelope_id VARCHAR(255) NOT NULL,
    document_id VARCHAR(512) NOT NULL,
    assoc_type VARCHAR(64),
    association_metadata_json JSON,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (envelope_id, document_id)
)