\restrict FwNhDOse7jsbYyzYwg99dU0wh0bROhSLV3zz87ZGDlM0grQBP0pZezG0pIkV8kz
SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;
CREATE SCHEMA public;
SET default_table_access_method = heap;
CREATE TABLE public.dim_account (
    account_key integer NOT NULL,
    blackdiamond_account_id text NOT NULL,
    account_number text,
    name text,
    account_type text,
    account_category text,
    account_sub_category text,
    tax_status text,
    discretionary text,
    billable text,
    supervised text,
    is_sleeve_account text,
    manager text,
    style text,
    tags text,
    custodian text,
    start_date date,
    closed_date date,
    file_date date,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE SEQUENCE public.dim_account_account_key_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.dim_account_account_key_seq OWNED BY public.dim_account.account_key;
CREATE TABLE public.dim_account_history (
    account_history_key integer NOT NULL,
    account_key integer,
    blackdiamond_account_id text NOT NULL,
    account_number text,
    name text,
    account_type text,
    account_category text,
    account_sub_category text,
    tax_status text,
    discretionary text,
    billable text,
    supervised text,
    is_sleeve_account text,
    manager text,
    style text,
    tags text,
    custodian text,
    start_date date,
    closed_date date,
    file_date date NOT NULL,
    effective_from_date date,
    effective_to_date date,
    is_current boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
)
PARTITION BY RANGE (file_date);
CREATE SEQUENCE public.dim_account_history_new_account_history_key_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.dim_account_history_new_account_history_key_seq OWNED BY public.dim_account_history.account_history_key;
CREATE TABLE public.dim_account_history_2024_01 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_new_account_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    blackdiamond_account_id text NOT NULL,
    account_number text,
    name text,
    account_type text,
    account_category text,
    account_sub_category text,
    tax_status text,
    discretionary text,
    billable text,
    supervised text,
    is_sleeve_account text,
    manager text,
    style text,
    tags text,
    custodian text,
    start_date date,
    closed_date date,
    file_date date NOT NULL,
    effective_from_date date,
    effective_to_date date,
    is_current boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_account_history_2024_02 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_new_account_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    blackdiamond_account_id text NOT NULL,
    account_number text,
    name text,
    account_type text,
    account_category text,
    account_sub_category text,
    tax_status text,
    discretionary text,
    billable text,
    supervised text,
    is_sleeve_account text,
    manager text,
    style text,
    tags text,
    custodian text,
    start_date date,
    closed_date date,
    file_date date NOT NULL,
    effective_from_date date,
    effective_to_date date,
    is_current boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_account_history_2024_03 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_new_account_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    blackdiamond_account_id text NOT NULL,
    account_number text,
    name text,
    account_type text,
    account_category text,
    account_sub_category text,
    tax_status text,
    discretionary text,
    billable text,
    supervised text,
    is_sleeve_account text,
    manager text,
    style text,
    tags text,
    custodian text,
    start_date date,
    closed_date date,
    file_date date NOT NULL,
    effective_from_date date,
    effective_to_date date,
    is_current boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_account_history_2024_04 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_new_account_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    blackdiamond_account_id text NOT NULL,
    account_number text,
    name text,
    account_type text,
    account_category text,
    account_sub_category text,
    tax_status text,
    discretionary text,
    billable text,
    supervised text,
    is_sleeve_account text,
    manager text,
    style text,
    tags text,
    custodian text,
    start_date date,
    closed_date date,
    file_date date NOT NULL,
    effective_from_date date,
    effective_to_date date,
    is_current boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_account_history_2024_05 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_new_account_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    blackdiamond_account_id text NOT NULL,
    account_number text,
    name text,
    account_type text,
    account_category text,
    account_sub_category text,
    tax_status text,
    discretionary text,
    billable text,
    supervised text,
    is_sleeve_account text,
    manager text,
    style text,
    tags text,
    custodian text,
    start_date date,
    closed_date date,
    file_date date NOT NULL,
    effective_from_date date,
    effective_to_date date,
    is_current boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_account_history_2024_06 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_new_account_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    blackdiamond_account_id text NOT NULL,
    account_number text,
    name text,
    account_type text,
    account_category text,
    account_sub_category text,
    tax_status text,
    discretionary text,
    billable text,
    supervised text,
    is_sleeve_account text,
    manager text,
    style text,
    tags text,
    custodian text,
    start_date date,
    closed_date date,
    file_date date NOT NULL,
    effective_from_date date,
    effective_to_date date,
    is_current boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_account_history_2024_07 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_new_account_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    blackdiamond_account_id text NOT NULL,
    account_number text,
    name text,
    account_type text,
    account_category text,
    account_sub_category text,
    tax_status text,
    discretionary text,
    billable text,
    supervised text,
    is_sleeve_account text,
    manager text,
    style text,
    tags text,
    custodian text,
    start_date date,
    closed_date date,
    file_date date NOT NULL,
    effective_from_date date,
    effective_to_date date,
    is_current boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_account_history_2024_08 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_new_account_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    blackdiamond_account_id text NOT NULL,
    account_number text,
    name text,
    account_type text,
    account_category text,
    account_sub_category text,
    tax_status text,
    discretionary text,
    billable text,
    supervised text,
    is_sleeve_account text,
    manager text,
    style text,
    tags text,
    custodian text,
    start_date date,
    closed_date date,
    file_date date NOT NULL,
    effective_from_date date,
    effective_to_date date,
    is_current boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_account_history_2024_09 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_new_account_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    blackdiamond_account_id text NOT NULL,
    account_number text,
    name text,
    account_type text,
    account_category text,
    account_sub_category text,
    tax_status text,
    discretionary text,
    billable text,
    supervised text,
    is_sleeve_account text,
    manager text,
    style text,
    tags text,
    custodian text,
    start_date date,
    closed_date date,
    file_date date NOT NULL,
    effective_from_date date,
    effective_to_date date,
    is_current boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_account_history_2024_10 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_new_account_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    blackdiamond_account_id text NOT NULL,
    account_number text,
    name text,
    account_type text,
    account_category text,
    account_sub_category text,
    tax_status text,
    discretionary text,
    billable text,
    supervised text,
    is_sleeve_account text,
    manager text,
    style text,
    tags text,
    custodian text,
    start_date date,
    closed_date date,
    file_date date NOT NULL,
    effective_from_date date,
    effective_to_date date,
    is_current boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_account_history_2024_11 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_new_account_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    blackdiamond_account_id text NOT NULL,
    account_number text,
    name text,
    account_type text,
    account_category text,
    account_sub_category text,
    tax_status text,
    discretionary text,
    billable text,
    supervised text,
    is_sleeve_account text,
    manager text,
    style text,
    tags text,
    custodian text,
    start_date date,
    closed_date date,
    file_date date NOT NULL,
    effective_from_date date,
    effective_to_date date,
    is_current boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_account_history_2024_12 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_new_account_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    blackdiamond_account_id text NOT NULL,
    account_number text,
    name text,
    account_type text,
    account_category text,
    account_sub_category text,
    tax_status text,
    discretionary text,
    billable text,
    supervised text,
    is_sleeve_account text,
    manager text,
    style text,
    tags text,
    custodian text,
    start_date date,
    closed_date date,
    file_date date NOT NULL,
    effective_from_date date,
    effective_to_date date,
    is_current boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_account_history_2025_01 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_new_account_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    blackdiamond_account_id text NOT NULL,
    account_number text,
    name text,
    account_type text,
    account_category text,
    account_sub_category text,
    tax_status text,
    discretionary text,
    billable text,
    supervised text,
    is_sleeve_account text,
    manager text,
    style text,
    tags text,
    custodian text,
    start_date date,
    closed_date date,
    file_date date NOT NULL,
    effective_from_date date,
    effective_to_date date,
    is_current boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_account_history_2025_02 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_new_account_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    blackdiamond_account_id text NOT NULL,
    account_number text,
    name text,
    account_type text,
    account_category text,
    account_sub_category text,
    tax_status text,
    discretionary text,
    billable text,
    supervised text,
    is_sleeve_account text,
    manager text,
    style text,
    tags text,
    custodian text,
    start_date date,
    closed_date date,
    file_date date NOT NULL,
    effective_from_date date,
    effective_to_date date,
    is_current boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_account_history_2025_03 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_new_account_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    blackdiamond_account_id text NOT NULL,
    account_number text,
    name text,
    account_type text,
    account_category text,
    account_sub_category text,
    tax_status text,
    discretionary text,
    billable text,
    supervised text,
    is_sleeve_account text,
    manager text,
    style text,
    tags text,
    custodian text,
    start_date date,
    closed_date date,
    file_date date NOT NULL,
    effective_from_date date,
    effective_to_date date,
    is_current boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_account_history_2025_04 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_new_account_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    blackdiamond_account_id text NOT NULL,
    account_number text,
    name text,
    account_type text,
    account_category text,
    account_sub_category text,
    tax_status text,
    discretionary text,
    billable text,
    supervised text,
    is_sleeve_account text,
    manager text,
    style text,
    tags text,
    custodian text,
    start_date date,
    closed_date date,
    file_date date NOT NULL,
    effective_from_date date,
    effective_to_date date,
    is_current boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_account_history_2025_05 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_new_account_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    blackdiamond_account_id text NOT NULL,
    account_number text,
    name text,
    account_type text,
    account_category text,
    account_sub_category text,
    tax_status text,
    discretionary text,
    billable text,
    supervised text,
    is_sleeve_account text,
    manager text,
    style text,
    tags text,
    custodian text,
    start_date date,
    closed_date date,
    file_date date NOT NULL,
    effective_from_date date,
    effective_to_date date,
    is_current boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_account_history_2025_06 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_new_account_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    blackdiamond_account_id text NOT NULL,
    account_number text,
    name text,
    account_type text,
    account_category text,
    account_sub_category text,
    tax_status text,
    discretionary text,
    billable text,
    supervised text,
    is_sleeve_account text,
    manager text,
    style text,
    tags text,
    custodian text,
    start_date date,
    closed_date date,
    file_date date NOT NULL,
    effective_from_date date,
    effective_to_date date,
    is_current boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_account_history_2025_07 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_new_account_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    blackdiamond_account_id text NOT NULL,
    account_number text,
    name text,
    account_type text,
    account_category text,
    account_sub_category text,
    tax_status text,
    discretionary text,
    billable text,
    supervised text,
    is_sleeve_account text,
    manager text,
    style text,
    tags text,
    custodian text,
    start_date date,
    closed_date date,
    file_date date NOT NULL,
    effective_from_date date,
    effective_to_date date,
    is_current boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_account_history_2025_08 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_new_account_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    blackdiamond_account_id text NOT NULL,
    account_number text,
    name text,
    account_type text,
    account_category text,
    account_sub_category text,
    tax_status text,
    discretionary text,
    billable text,
    supervised text,
    is_sleeve_account text,
    manager text,
    style text,
    tags text,
    custodian text,
    start_date date,
    closed_date date,
    file_date date NOT NULL,
    effective_from_date date,
    effective_to_date date,
    is_current boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_account_history_2025_09 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_new_account_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    blackdiamond_account_id text NOT NULL,
    account_number text,
    name text,
    account_type text,
    account_category text,
    account_sub_category text,
    tax_status text,
    discretionary text,
    billable text,
    supervised text,
    is_sleeve_account text,
    manager text,
    style text,
    tags text,
    custodian text,
    start_date date,
    closed_date date,
    file_date date NOT NULL,
    effective_from_date date,
    effective_to_date date,
    is_current boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_account_history_2025_10 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_new_account_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    blackdiamond_account_id text NOT NULL,
    account_number text,
    name text,
    account_type text,
    account_category text,
    account_sub_category text,
    tax_status text,
    discretionary text,
    billable text,
    supervised text,
    is_sleeve_account text,
    manager text,
    style text,
    tags text,
    custodian text,
    start_date date,
    closed_date date,
    file_date date NOT NULL,
    effective_from_date date,
    effective_to_date date,
    is_current boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_account_history_2025_11 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_new_account_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    blackdiamond_account_id text NOT NULL,
    account_number text,
    name text,
    account_type text,
    account_category text,
    account_sub_category text,
    tax_status text,
    discretionary text,
    billable text,
    supervised text,
    is_sleeve_account text,
    manager text,
    style text,
    tags text,
    custodian text,
    start_date date,
    closed_date date,
    file_date date NOT NULL,
    effective_from_date date,
    effective_to_date date,
    is_current boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_account_history_2025_12 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_new_account_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    blackdiamond_account_id text NOT NULL,
    account_number text,
    name text,
    account_type text,
    account_category text,
    account_sub_category text,
    tax_status text,
    discretionary text,
    billable text,
    supervised text,
    is_sleeve_account text,
    manager text,
    style text,
    tags text,
    custodian text,
    start_date date,
    closed_date date,
    file_date date NOT NULL,
    effective_from_date date,
    effective_to_date date,
    is_current boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_account_keep (
    account_key integer,
    blackdiamond_account_id text,
    account_number text,
    name text,
    account_type text,
    account_category text,
    account_sub_category text,
    tax_status text,
    discretionary text,
    billable text,
    supervised text,
    is_sleeve_account text,
    manager text,
    style text,
    tags text,
    custodian text,
    start_date date,
    closed_date date,
    file_date date,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
CREATE TABLE public.dim_portfolio (
    portfolio_key integer NOT NULL,
    blackdiamond_portfolio_id text NOT NULL,
    name text,
    display_name text,
    client_visibility text,
    relationship_id text,
    external_relationship_id text,
    is_master_portfolio text,
    exclude_from_rebalancing text,
    admin_only text,
    demo_portfolio text,
    history_loaded text,
    address text,
    tags text,
    file_date date,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_portfolio_accounts (
    portfolio_account_key integer NOT NULL,
    blackdiamond_portfolio_id text,
    blackdiamond_account_id text,
    file_date text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE SEQUENCE public.dim_portfolio_accounts_portfolio_account_key_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.dim_portfolio_accounts_portfolio_account_key_seq OWNED BY public.dim_portfolio_accounts.portfolio_account_key;
CREATE SEQUENCE public.dim_portfolio_portfolio_key_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.dim_portfolio_portfolio_key_seq OWNED BY public.dim_portfolio.portfolio_key;
CREATE TABLE public.dim_security (
    security_key integer NOT NULL,
    blackdiamond_asset_id text,
    asset_name text,
    ticker text,
    cusip text,
    class_name text,
    class_id text,
    sector_segment text,
    segment_name text,
    maturity_date date,
    issue_date date,
    call_date date,
    price_factor numeric(18,8),
    pay_down_factor numeric(18,8),
    yield numeric(18,8),
    billable text,
    supervised text,
    discretionary text,
    exchange text,
    file_date date,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_security_history (
    security_key integer,
    blackdiamond_asset_id text,
    asset_name text,
    ticker text,
    cusip text,
    class_name text,
    class_id text,
    sector_segment text,
    segment_name text,
    maturity_date date,
    issue_date date,
    call_date date,
    price_factor numeric(18,8),
    pay_down_factor numeric(18,8),
    yield numeric(18,8),
    billable text,
    supervised text,
    discretionary text,
    exchange text,
    file_date date,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    security_history_key bigint NOT NULL
);
CREATE SEQUENCE public.dim_security_history_security_history_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.dim_security_history_security_history_key_seq OWNED BY public.dim_security_history.security_history_key;
CREATE SEQUENCE public.dim_security_security_key_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.dim_security_security_key_seq OWNED BY public.dim_security.security_key;
CREATE TABLE public.dim_strategies (
    strategy_key integer NOT NULL,
    strategy_name text NOT NULL,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_strategies_history (
    strategy_history_key integer NOT NULL,
    strategy_key integer,
    strategy_name text NOT NULL,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
)
PARTITION BY RANGE (file_date);
CREATE SEQUENCE public.dim_strategies_history_strategy_history_key_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.dim_strategies_history_strategy_history_key_seq OWNED BY public.dim_strategies_history.strategy_history_key;
CREATE TABLE public.dim_strategies_history_2024_01 (
    strategy_history_key integer DEFAULT nextval('public.dim_strategies_history_strategy_history_key_seq'::regclass) NOT NULL,
    strategy_key integer,
    strategy_name text NOT NULL,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_strategies_history_2024_02 (
    strategy_history_key integer DEFAULT nextval('public.dim_strategies_history_strategy_history_key_seq'::regclass) NOT NULL,
    strategy_key integer,
    strategy_name text NOT NULL,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_strategies_history_2024_03 (
    strategy_history_key integer DEFAULT nextval('public.dim_strategies_history_strategy_history_key_seq'::regclass) NOT NULL,
    strategy_key integer,
    strategy_name text NOT NULL,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_strategies_history_2024_04 (
    strategy_history_key integer DEFAULT nextval('public.dim_strategies_history_strategy_history_key_seq'::regclass) NOT NULL,
    strategy_key integer,
    strategy_name text NOT NULL,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_strategies_history_2024_05 (
    strategy_history_key integer DEFAULT nextval('public.dim_strategies_history_strategy_history_key_seq'::regclass) NOT NULL,
    strategy_key integer,
    strategy_name text NOT NULL,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_strategies_history_2024_06 (
    strategy_history_key integer DEFAULT nextval('public.dim_strategies_history_strategy_history_key_seq'::regclass) NOT NULL,
    strategy_key integer,
    strategy_name text NOT NULL,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_strategies_history_2024_07 (
    strategy_history_key integer DEFAULT nextval('public.dim_strategies_history_strategy_history_key_seq'::regclass) NOT NULL,
    strategy_key integer,
    strategy_name text NOT NULL,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_strategies_history_2024_08 (
    strategy_history_key integer DEFAULT nextval('public.dim_strategies_history_strategy_history_key_seq'::regclass) NOT NULL,
    strategy_key integer,
    strategy_name text NOT NULL,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_strategies_history_2024_09 (
    strategy_history_key integer DEFAULT nextval('public.dim_strategies_history_strategy_history_key_seq'::regclass) NOT NULL,
    strategy_key integer,
    strategy_name text NOT NULL,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_strategies_history_2024_10 (
    strategy_history_key integer DEFAULT nextval('public.dim_strategies_history_strategy_history_key_seq'::regclass) NOT NULL,
    strategy_key integer,
    strategy_name text NOT NULL,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_strategies_history_2024_11 (
    strategy_history_key integer DEFAULT nextval('public.dim_strategies_history_strategy_history_key_seq'::regclass) NOT NULL,
    strategy_key integer,
    strategy_name text NOT NULL,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_strategies_history_2024_12 (
    strategy_history_key integer DEFAULT nextval('public.dim_strategies_history_strategy_history_key_seq'::regclass) NOT NULL,
    strategy_key integer,
    strategy_name text NOT NULL,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_strategies_history_2025_01 (
    strategy_history_key integer DEFAULT nextval('public.dim_strategies_history_strategy_history_key_seq'::regclass) NOT NULL,
    strategy_key integer,
    strategy_name text NOT NULL,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_strategies_history_2025_02 (
    strategy_history_key integer DEFAULT nextval('public.dim_strategies_history_strategy_history_key_seq'::regclass) NOT NULL,
    strategy_key integer,
    strategy_name text NOT NULL,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_strategies_history_2025_03 (
    strategy_history_key integer DEFAULT nextval('public.dim_strategies_history_strategy_history_key_seq'::regclass) NOT NULL,
    strategy_key integer,
    strategy_name text NOT NULL,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_strategies_history_2025_04 (
    strategy_history_key integer DEFAULT nextval('public.dim_strategies_history_strategy_history_key_seq'::regclass) NOT NULL,
    strategy_key integer,
    strategy_name text NOT NULL,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_strategies_history_2025_05 (
    strategy_history_key integer DEFAULT nextval('public.dim_strategies_history_strategy_history_key_seq'::regclass) NOT NULL,
    strategy_key integer,
    strategy_name text NOT NULL,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_strategies_history_2025_06 (
    strategy_history_key integer DEFAULT nextval('public.dim_strategies_history_strategy_history_key_seq'::regclass) NOT NULL,
    strategy_key integer,
    strategy_name text NOT NULL,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_strategies_history_2025_07 (
    strategy_history_key integer DEFAULT nextval('public.dim_strategies_history_strategy_history_key_seq'::regclass) NOT NULL,
    strategy_key integer,
    strategy_name text NOT NULL,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_strategies_history_2025_08 (
    strategy_history_key integer DEFAULT nextval('public.dim_strategies_history_strategy_history_key_seq'::regclass) NOT NULL,
    strategy_key integer,
    strategy_name text NOT NULL,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_strategies_history_2025_09 (
    strategy_history_key integer DEFAULT nextval('public.dim_strategies_history_strategy_history_key_seq'::regclass) NOT NULL,
    strategy_key integer,
    strategy_name text NOT NULL,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_strategies_history_2025_10 (
    strategy_history_key integer DEFAULT nextval('public.dim_strategies_history_strategy_history_key_seq'::regclass) NOT NULL,
    strategy_key integer,
    strategy_name text NOT NULL,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_strategies_history_2025_11 (
    strategy_history_key integer DEFAULT nextval('public.dim_strategies_history_strategy_history_key_seq'::regclass) NOT NULL,
    strategy_key integer,
    strategy_name text NOT NULL,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_strategies_history_2025_12 (
    strategy_history_key integer DEFAULT nextval('public.dim_strategies_history_strategy_history_key_seq'::regclass) NOT NULL,
    strategy_key integer,
    strategy_name text NOT NULL,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE SEQUENCE public.dim_strategies_strategy_key_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.dim_strategies_strategy_key_seq OWNED BY public.dim_strategies.strategy_key;
CREATE TABLE public.dim_target (
    target_key integer NOT NULL,
    blackdiamond_target_id text NOT NULL,
    target_name text,
    description text,
    target_type text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_target_history (
    target_history_key integer NOT NULL,
    target_key integer,
    blackdiamond_target_id text NOT NULL,
    target_name text,
    description text,
    target_type text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
)
PARTITION BY RANGE (file_date);
CREATE SEQUENCE public.dim_target_history_target_history_key_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.dim_target_history_target_history_key_seq OWNED BY public.dim_target_history.target_history_key;
CREATE TABLE public."dim_target_history_2024_ 1" (
    target_history_key integer DEFAULT nextval('public.dim_target_history_target_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    blackdiamond_target_id text NOT NULL,
    target_name text,
    description text,
    target_type text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."dim_target_history_2024_ 2" (
    target_history_key integer DEFAULT nextval('public.dim_target_history_target_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    blackdiamond_target_id text NOT NULL,
    target_name text,
    description text,
    target_type text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."dim_target_history_2024_ 3" (
    target_history_key integer DEFAULT nextval('public.dim_target_history_target_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    blackdiamond_target_id text NOT NULL,
    target_name text,
    description text,
    target_type text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."dim_target_history_2024_ 4" (
    target_history_key integer DEFAULT nextval('public.dim_target_history_target_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    blackdiamond_target_id text NOT NULL,
    target_name text,
    description text,
    target_type text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."dim_target_history_2024_ 5" (
    target_history_key integer DEFAULT nextval('public.dim_target_history_target_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    blackdiamond_target_id text NOT NULL,
    target_name text,
    description text,
    target_type text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."dim_target_history_2024_ 6" (
    target_history_key integer DEFAULT nextval('public.dim_target_history_target_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    blackdiamond_target_id text NOT NULL,
    target_name text,
    description text,
    target_type text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."dim_target_history_2024_ 7" (
    target_history_key integer DEFAULT nextval('public.dim_target_history_target_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    blackdiamond_target_id text NOT NULL,
    target_name text,
    description text,
    target_type text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."dim_target_history_2024_ 8" (
    target_history_key integer DEFAULT nextval('public.dim_target_history_target_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    blackdiamond_target_id text NOT NULL,
    target_name text,
    description text,
    target_type text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."dim_target_history_2024_ 9" (
    target_history_key integer DEFAULT nextval('public.dim_target_history_target_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    blackdiamond_target_id text NOT NULL,
    target_name text,
    description text,
    target_type text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_target_history_2024_10 (
    target_history_key integer DEFAULT nextval('public.dim_target_history_target_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    blackdiamond_target_id text NOT NULL,
    target_name text,
    description text,
    target_type text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_target_history_2024_11 (
    target_history_key integer DEFAULT nextval('public.dim_target_history_target_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    blackdiamond_target_id text NOT NULL,
    target_name text,
    description text,
    target_type text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_target_history_2024_12 (
    target_history_key integer DEFAULT nextval('public.dim_target_history_target_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    blackdiamond_target_id text NOT NULL,
    target_name text,
    description text,
    target_type text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."dim_target_history_2025_ 1" (
    target_history_key integer DEFAULT nextval('public.dim_target_history_target_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    blackdiamond_target_id text NOT NULL,
    target_name text,
    description text,
    target_type text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."dim_target_history_2025_ 2" (
    target_history_key integer DEFAULT nextval('public.dim_target_history_target_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    blackdiamond_target_id text NOT NULL,
    target_name text,
    description text,
    target_type text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."dim_target_history_2025_ 3" (
    target_history_key integer DEFAULT nextval('public.dim_target_history_target_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    blackdiamond_target_id text NOT NULL,
    target_name text,
    description text,
    target_type text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."dim_target_history_2025_ 4" (
    target_history_key integer DEFAULT nextval('public.dim_target_history_target_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    blackdiamond_target_id text NOT NULL,
    target_name text,
    description text,
    target_type text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."dim_target_history_2025_ 5" (
    target_history_key integer DEFAULT nextval('public.dim_target_history_target_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    blackdiamond_target_id text NOT NULL,
    target_name text,
    description text,
    target_type text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."dim_target_history_2025_ 6" (
    target_history_key integer DEFAULT nextval('public.dim_target_history_target_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    blackdiamond_target_id text NOT NULL,
    target_name text,
    description text,
    target_type text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."dim_target_history_2025_ 7" (
    target_history_key integer DEFAULT nextval('public.dim_target_history_target_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    blackdiamond_target_id text NOT NULL,
    target_name text,
    description text,
    target_type text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."dim_target_history_2025_ 8" (
    target_history_key integer DEFAULT nextval('public.dim_target_history_target_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    blackdiamond_target_id text NOT NULL,
    target_name text,
    description text,
    target_type text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."dim_target_history_2025_ 9" (
    target_history_key integer DEFAULT nextval('public.dim_target_history_target_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    blackdiamond_target_id text NOT NULL,
    target_name text,
    description text,
    target_type text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_target_history_2025_10 (
    target_history_key integer DEFAULT nextval('public.dim_target_history_target_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    blackdiamond_target_id text NOT NULL,
    target_name text,
    description text,
    target_type text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_target_history_2025_11 (
    target_history_key integer DEFAULT nextval('public.dim_target_history_target_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    blackdiamond_target_id text NOT NULL,
    target_name text,
    description text,
    target_type text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.dim_target_history_2025_12 (
    target_history_key integer DEFAULT nextval('public.dim_target_history_target_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    blackdiamond_target_id text NOT NULL,
    target_name text,
    description text,
    target_type text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE SEQUENCE public.dim_target_target_key_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.dim_target_target_key_seq OWNED BY public.dim_target.target_key;
CREATE TABLE public.fact_account_balance (
    balance_key bigint NOT NULL,
    account_key integer,
    date date,
    total_emv numeric(18,2),
    realized_long_term_gain_loss numeric(18,2),
    realized_short_term_gain_loss numeric(18,2),
    unrealized_long_term_gain_loss numeric(18,2),
    unrealized_short_term_gain_loss numeric(18,2),
    cost_basis numeric(18,2),
    file_date date,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE SEQUENCE public.fact_account_balance_balance_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.fact_account_balance_balance_key_seq OWNED BY public.fact_account_balance.balance_key;
CREATE TABLE public.fact_account_balance_history (
    history_key bigint NOT NULL,
    account_key integer,
    date date,
    total_emv numeric(18,2),
    realized_long_term_gain_loss numeric(18,2),
    realized_short_term_gain_loss numeric(18,2),
    unrealized_long_term_gain_loss numeric(18,2),
    unrealized_short_term_gain_loss numeric(18,2),
    cost_basis numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
)
PARTITION BY RANGE (file_date);
CREATE SEQUENCE public.fact_account_balance_history_new_history_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.fact_account_balance_history_new_history_key_seq OWNED BY public.fact_account_balance_history.history_key;
CREATE TABLE public.fact_account_balance_history_2024_01 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_new_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    date date,
    total_emv numeric(18,2),
    realized_long_term_gain_loss numeric(18,2),
    realized_short_term_gain_loss numeric(18,2),
    unrealized_long_term_gain_loss numeric(18,2),
    unrealized_short_term_gain_loss numeric(18,2),
    cost_basis numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_account_balance_history_2024_02 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_new_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    date date,
    total_emv numeric(18,2),
    realized_long_term_gain_loss numeric(18,2),
    realized_short_term_gain_loss numeric(18,2),
    unrealized_long_term_gain_loss numeric(18,2),
    unrealized_short_term_gain_loss numeric(18,2),
    cost_basis numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_account_balance_history_2024_03 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_new_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    date date,
    total_emv numeric(18,2),
    realized_long_term_gain_loss numeric(18,2),
    realized_short_term_gain_loss numeric(18,2),
    unrealized_long_term_gain_loss numeric(18,2),
    unrealized_short_term_gain_loss numeric(18,2),
    cost_basis numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_account_balance_history_2024_04 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_new_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    date date,
    total_emv numeric(18,2),
    realized_long_term_gain_loss numeric(18,2),
    realized_short_term_gain_loss numeric(18,2),
    unrealized_long_term_gain_loss numeric(18,2),
    unrealized_short_term_gain_loss numeric(18,2),
    cost_basis numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_account_balance_history_2024_05 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_new_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    date date,
    total_emv numeric(18,2),
    realized_long_term_gain_loss numeric(18,2),
    realized_short_term_gain_loss numeric(18,2),
    unrealized_long_term_gain_loss numeric(18,2),
    unrealized_short_term_gain_loss numeric(18,2),
    cost_basis numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_account_balance_history_2024_06 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_new_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    date date,
    total_emv numeric(18,2),
    realized_long_term_gain_loss numeric(18,2),
    realized_short_term_gain_loss numeric(18,2),
    unrealized_long_term_gain_loss numeric(18,2),
    unrealized_short_term_gain_loss numeric(18,2),
    cost_basis numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_account_balance_history_2024_07 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_new_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    date date,
    total_emv numeric(18,2),
    realized_long_term_gain_loss numeric(18,2),
    realized_short_term_gain_loss numeric(18,2),
    unrealized_long_term_gain_loss numeric(18,2),
    unrealized_short_term_gain_loss numeric(18,2),
    cost_basis numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_account_balance_history_2024_08 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_new_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    date date,
    total_emv numeric(18,2),
    realized_long_term_gain_loss numeric(18,2),
    realized_short_term_gain_loss numeric(18,2),
    unrealized_long_term_gain_loss numeric(18,2),
    unrealized_short_term_gain_loss numeric(18,2),
    cost_basis numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_account_balance_history_2024_09 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_new_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    date date,
    total_emv numeric(18,2),
    realized_long_term_gain_loss numeric(18,2),
    realized_short_term_gain_loss numeric(18,2),
    unrealized_long_term_gain_loss numeric(18,2),
    unrealized_short_term_gain_loss numeric(18,2),
    cost_basis numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_account_balance_history_2024_10 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_new_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    date date,
    total_emv numeric(18,2),
    realized_long_term_gain_loss numeric(18,2),
    realized_short_term_gain_loss numeric(18,2),
    unrealized_long_term_gain_loss numeric(18,2),
    unrealized_short_term_gain_loss numeric(18,2),
    cost_basis numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_account_balance_history_2024_11 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_new_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    date date,
    total_emv numeric(18,2),
    realized_long_term_gain_loss numeric(18,2),
    realized_short_term_gain_loss numeric(18,2),
    unrealized_long_term_gain_loss numeric(18,2),
    unrealized_short_term_gain_loss numeric(18,2),
    cost_basis numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_account_balance_history_2024_12 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_new_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    date date,
    total_emv numeric(18,2),
    realized_long_term_gain_loss numeric(18,2),
    realized_short_term_gain_loss numeric(18,2),
    unrealized_long_term_gain_loss numeric(18,2),
    unrealized_short_term_gain_loss numeric(18,2),
    cost_basis numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_account_balance_history_2025_01 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_new_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    date date,
    total_emv numeric(18,2),
    realized_long_term_gain_loss numeric(18,2),
    realized_short_term_gain_loss numeric(18,2),
    unrealized_long_term_gain_loss numeric(18,2),
    unrealized_short_term_gain_loss numeric(18,2),
    cost_basis numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_account_balance_history_2025_02 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_new_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    date date,
    total_emv numeric(18,2),
    realized_long_term_gain_loss numeric(18,2),
    realized_short_term_gain_loss numeric(18,2),
    unrealized_long_term_gain_loss numeric(18,2),
    unrealized_short_term_gain_loss numeric(18,2),
    cost_basis numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_account_balance_history_2025_03 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_new_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    date date,
    total_emv numeric(18,2),
    realized_long_term_gain_loss numeric(18,2),
    realized_short_term_gain_loss numeric(18,2),
    unrealized_long_term_gain_loss numeric(18,2),
    unrealized_short_term_gain_loss numeric(18,2),
    cost_basis numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_account_balance_history_2025_04 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_new_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    date date,
    total_emv numeric(18,2),
    realized_long_term_gain_loss numeric(18,2),
    realized_short_term_gain_loss numeric(18,2),
    unrealized_long_term_gain_loss numeric(18,2),
    unrealized_short_term_gain_loss numeric(18,2),
    cost_basis numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_account_balance_history_2025_05 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_new_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    date date,
    total_emv numeric(18,2),
    realized_long_term_gain_loss numeric(18,2),
    realized_short_term_gain_loss numeric(18,2),
    unrealized_long_term_gain_loss numeric(18,2),
    unrealized_short_term_gain_loss numeric(18,2),
    cost_basis numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_account_balance_history_2025_06 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_new_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    date date,
    total_emv numeric(18,2),
    realized_long_term_gain_loss numeric(18,2),
    realized_short_term_gain_loss numeric(18,2),
    unrealized_long_term_gain_loss numeric(18,2),
    unrealized_short_term_gain_loss numeric(18,2),
    cost_basis numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_account_balance_history_2025_07 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_new_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    date date,
    total_emv numeric(18,2),
    realized_long_term_gain_loss numeric(18,2),
    realized_short_term_gain_loss numeric(18,2),
    unrealized_long_term_gain_loss numeric(18,2),
    unrealized_short_term_gain_loss numeric(18,2),
    cost_basis numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_account_balance_history_2025_08 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_new_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    date date,
    total_emv numeric(18,2),
    realized_long_term_gain_loss numeric(18,2),
    realized_short_term_gain_loss numeric(18,2),
    unrealized_long_term_gain_loss numeric(18,2),
    unrealized_short_term_gain_loss numeric(18,2),
    cost_basis numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_account_balance_history_2025_09 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_new_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    date date,
    total_emv numeric(18,2),
    realized_long_term_gain_loss numeric(18,2),
    realized_short_term_gain_loss numeric(18,2),
    unrealized_long_term_gain_loss numeric(18,2),
    unrealized_short_term_gain_loss numeric(18,2),
    cost_basis numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_account_balance_history_2025_10 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_new_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    date date,
    total_emv numeric(18,2),
    realized_long_term_gain_loss numeric(18,2),
    realized_short_term_gain_loss numeric(18,2),
    unrealized_long_term_gain_loss numeric(18,2),
    unrealized_short_term_gain_loss numeric(18,2),
    cost_basis numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_account_balance_history_2025_11 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_new_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    date date,
    total_emv numeric(18,2),
    realized_long_term_gain_loss numeric(18,2),
    realized_short_term_gain_loss numeric(18,2),
    unrealized_long_term_gain_loss numeric(18,2),
    unrealized_short_term_gain_loss numeric(18,2),
    cost_basis numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_account_balance_history_2025_12 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_new_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    date date,
    total_emv numeric(18,2),
    realized_long_term_gain_loss numeric(18,2),
    realized_short_term_gain_loss numeric(18,2),
    unrealized_long_term_gain_loss numeric(18,2),
    unrealized_short_term_gain_loss numeric(18,2),
    cost_basis numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_class_allocation (
    allocation_key bigint NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    as_of_date date,
    total_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    supervised_emv numeric(18,2),
    file_date date,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE SEQUENCE public.fact_class_allocation_allocation_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.fact_class_allocation_allocation_key_seq OWNED BY public.fact_class_allocation.allocation_key;
CREATE TABLE public.fact_class_allocation_history (
    allocation_history_key bigint NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    as_of_date date,
    total_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    supervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
)
PARTITION BY RANGE (file_date);
CREATE SEQUENCE public.fact_class_allocation_history_new_allocation_history_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.fact_class_allocation_history_new_allocation_history_key_seq OWNED BY public.fact_class_allocation_history.allocation_history_key;
CREATE TABLE public.fact_class_allocation_history_2024_01 (
    allocation_history_key bigint DEFAULT nextval('public.fact_class_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    as_of_date date,
    total_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    supervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_class_allocation_history_2024_02 (
    allocation_history_key bigint DEFAULT nextval('public.fact_class_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    as_of_date date,
    total_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    supervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_class_allocation_history_2024_03 (
    allocation_history_key bigint DEFAULT nextval('public.fact_class_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    as_of_date date,
    total_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    supervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_class_allocation_history_2024_04 (
    allocation_history_key bigint DEFAULT nextval('public.fact_class_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    as_of_date date,
    total_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    supervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_class_allocation_history_2024_05 (
    allocation_history_key bigint DEFAULT nextval('public.fact_class_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    as_of_date date,
    total_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    supervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_class_allocation_history_2024_06 (
    allocation_history_key bigint DEFAULT nextval('public.fact_class_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    as_of_date date,
    total_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    supervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_class_allocation_history_2024_07 (
    allocation_history_key bigint DEFAULT nextval('public.fact_class_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    as_of_date date,
    total_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    supervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_class_allocation_history_2024_08 (
    allocation_history_key bigint DEFAULT nextval('public.fact_class_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    as_of_date date,
    total_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    supervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_class_allocation_history_2024_09 (
    allocation_history_key bigint DEFAULT nextval('public.fact_class_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    as_of_date date,
    total_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    supervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_class_allocation_history_2024_10 (
    allocation_history_key bigint DEFAULT nextval('public.fact_class_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    as_of_date date,
    total_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    supervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_class_allocation_history_2024_11 (
    allocation_history_key bigint DEFAULT nextval('public.fact_class_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    as_of_date date,
    total_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    supervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_class_allocation_history_2024_12 (
    allocation_history_key bigint DEFAULT nextval('public.fact_class_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    as_of_date date,
    total_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    supervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_class_allocation_history_2025_01 (
    allocation_history_key bigint DEFAULT nextval('public.fact_class_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    as_of_date date,
    total_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    supervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_class_allocation_history_2025_02 (
    allocation_history_key bigint DEFAULT nextval('public.fact_class_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    as_of_date date,
    total_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    supervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_class_allocation_history_2025_03 (
    allocation_history_key bigint DEFAULT nextval('public.fact_class_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    as_of_date date,
    total_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    supervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_class_allocation_history_2025_04 (
    allocation_history_key bigint DEFAULT nextval('public.fact_class_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    as_of_date date,
    total_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    supervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_class_allocation_history_2025_05 (
    allocation_history_key bigint DEFAULT nextval('public.fact_class_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    as_of_date date,
    total_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    supervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_class_allocation_history_2025_06 (
    allocation_history_key bigint DEFAULT nextval('public.fact_class_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    as_of_date date,
    total_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    supervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_class_allocation_history_2025_07 (
    allocation_history_key bigint DEFAULT nextval('public.fact_class_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    as_of_date date,
    total_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    supervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_class_allocation_history_2025_08 (
    allocation_history_key bigint DEFAULT nextval('public.fact_class_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    as_of_date date,
    total_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    supervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_class_allocation_history_2025_09 (
    allocation_history_key bigint DEFAULT nextval('public.fact_class_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    as_of_date date,
    total_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    supervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_class_allocation_history_2025_10 (
    allocation_history_key bigint DEFAULT nextval('public.fact_class_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    as_of_date date,
    total_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    supervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_class_allocation_history_2025_11 (
    allocation_history_key bigint DEFAULT nextval('public.fact_class_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    as_of_date date,
    total_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    supervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_class_allocation_history_2025_12 (
    allocation_history_key bigint DEFAULT nextval('public.fact_class_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    as_of_date date,
    total_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    supervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_position_holding (
    position_key bigint NOT NULL,
    account_key integer,
    security_key integer,
    date date,
    units numeric(18,6),
    market_value numeric(18,2),
    price_factor numeric(18,8),
    paydown_factor numeric(18,8),
    accrual numeric(18,8),
    maturity_date date,
    file_date date,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_position_holding_history (
    position_history_key bigint NOT NULL,
    account_key integer,
    security_key integer,
    date date,
    units numeric(18,6),
    market_value numeric(18,2),
    price_factor numeric(18,8),
    paydown_factor numeric(18,8),
    accrual numeric(18,8),
    maturity_date date,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
)
PARTITION BY RANGE (file_date);
CREATE SEQUENCE public.fact_position_holding_history_new_position_history_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.fact_position_holding_history_new_position_history_key_seq OWNED BY public.fact_position_holding_history.position_history_key;
CREATE TABLE public.fact_position_holding_history_2024_01 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_new_position_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    date date,
    units numeric(18,6),
    market_value numeric(18,2),
    price_factor numeric(18,8),
    paydown_factor numeric(18,8),
    accrual numeric(18,8),
    maturity_date date,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_position_holding_history_2024_02 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_new_position_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    date date,
    units numeric(18,6),
    market_value numeric(18,2),
    price_factor numeric(18,8),
    paydown_factor numeric(18,8),
    accrual numeric(18,8),
    maturity_date date,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_position_holding_history_2024_03 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_new_position_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    date date,
    units numeric(18,6),
    market_value numeric(18,2),
    price_factor numeric(18,8),
    paydown_factor numeric(18,8),
    accrual numeric(18,8),
    maturity_date date,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_position_holding_history_2024_04 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_new_position_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    date date,
    units numeric(18,6),
    market_value numeric(18,2),
    price_factor numeric(18,8),
    paydown_factor numeric(18,8),
    accrual numeric(18,8),
    maturity_date date,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_position_holding_history_2024_05 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_new_position_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    date date,
    units numeric(18,6),
    market_value numeric(18,2),
    price_factor numeric(18,8),
    paydown_factor numeric(18,8),
    accrual numeric(18,8),
    maturity_date date,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_position_holding_history_2024_06 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_new_position_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    date date,
    units numeric(18,6),
    market_value numeric(18,2),
    price_factor numeric(18,8),
    paydown_factor numeric(18,8),
    accrual numeric(18,8),
    maturity_date date,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_position_holding_history_2024_07 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_new_position_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    date date,
    units numeric(18,6),
    market_value numeric(18,2),
    price_factor numeric(18,8),
    paydown_factor numeric(18,8),
    accrual numeric(18,8),
    maturity_date date,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_position_holding_history_2024_08 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_new_position_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    date date,
    units numeric(18,6),
    market_value numeric(18,2),
    price_factor numeric(18,8),
    paydown_factor numeric(18,8),
    accrual numeric(18,8),
    maturity_date date,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_position_holding_history_2024_09 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_new_position_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    date date,
    units numeric(18,6),
    market_value numeric(18,2),
    price_factor numeric(18,8),
    paydown_factor numeric(18,8),
    accrual numeric(18,8),
    maturity_date date,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_position_holding_history_2024_10 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_new_position_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    date date,
    units numeric(18,6),
    market_value numeric(18,2),
    price_factor numeric(18,8),
    paydown_factor numeric(18,8),
    accrual numeric(18,8),
    maturity_date date,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_position_holding_history_2024_11 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_new_position_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    date date,
    units numeric(18,6),
    market_value numeric(18,2),
    price_factor numeric(18,8),
    paydown_factor numeric(18,8),
    accrual numeric(18,8),
    maturity_date date,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_position_holding_history_2024_12 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_new_position_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    date date,
    units numeric(18,6),
    market_value numeric(18,2),
    price_factor numeric(18,8),
    paydown_factor numeric(18,8),
    accrual numeric(18,8),
    maturity_date date,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_position_holding_history_2025_01 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_new_position_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    date date,
    units numeric(18,6),
    market_value numeric(18,2),
    price_factor numeric(18,8),
    paydown_factor numeric(18,8),
    accrual numeric(18,8),
    maturity_date date,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_position_holding_history_2025_02 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_new_position_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    date date,
    units numeric(18,6),
    market_value numeric(18,2),
    price_factor numeric(18,8),
    paydown_factor numeric(18,8),
    accrual numeric(18,8),
    maturity_date date,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_position_holding_history_2025_03 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_new_position_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    date date,
    units numeric(18,6),
    market_value numeric(18,2),
    price_factor numeric(18,8),
    paydown_factor numeric(18,8),
    accrual numeric(18,8),
    maturity_date date,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_position_holding_history_2025_04 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_new_position_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    date date,
    units numeric(18,6),
    market_value numeric(18,2),
    price_factor numeric(18,8),
    paydown_factor numeric(18,8),
    accrual numeric(18,8),
    maturity_date date,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_position_holding_history_2025_05 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_new_position_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    date date,
    units numeric(18,6),
    market_value numeric(18,2),
    price_factor numeric(18,8),
    paydown_factor numeric(18,8),
    accrual numeric(18,8),
    maturity_date date,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_position_holding_history_2025_06 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_new_position_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    date date,
    units numeric(18,6),
    market_value numeric(18,2),
    price_factor numeric(18,8),
    paydown_factor numeric(18,8),
    accrual numeric(18,8),
    maturity_date date,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_position_holding_history_2025_07 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_new_position_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    date date,
    units numeric(18,6),
    market_value numeric(18,2),
    price_factor numeric(18,8),
    paydown_factor numeric(18,8),
    accrual numeric(18,8),
    maturity_date date,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_position_holding_history_2025_08 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_new_position_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    date date,
    units numeric(18,6),
    market_value numeric(18,2),
    price_factor numeric(18,8),
    paydown_factor numeric(18,8),
    accrual numeric(18,8),
    maturity_date date,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_position_holding_history_2025_09 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_new_position_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    date date,
    units numeric(18,6),
    market_value numeric(18,2),
    price_factor numeric(18,8),
    paydown_factor numeric(18,8),
    accrual numeric(18,8),
    maturity_date date,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_position_holding_history_2025_10 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_new_position_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    date date,
    units numeric(18,6),
    market_value numeric(18,2),
    price_factor numeric(18,8),
    paydown_factor numeric(18,8),
    accrual numeric(18,8),
    maturity_date date,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_position_holding_history_2025_11 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_new_position_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    date date,
    units numeric(18,6),
    market_value numeric(18,2),
    price_factor numeric(18,8),
    paydown_factor numeric(18,8),
    accrual numeric(18,8),
    maturity_date date,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_position_holding_history_2025_12 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_new_position_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    date date,
    units numeric(18,6),
    market_value numeric(18,2),
    price_factor numeric(18,8),
    paydown_factor numeric(18,8),
    accrual numeric(18,8),
    maturity_date date,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE SEQUENCE public.fact_position_holding_position_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.fact_position_holding_position_key_seq OWNED BY public.fact_position_holding.position_key;
CREATE TABLE public.fact_segment_allocation (
    allocation_key bigint NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    segment_id text,
    segment_name text,
    as_of_date date,
    total_emv numeric(18,2),
    supervised_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    file_date date,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE SEQUENCE public.fact_segment_allocation_allocation_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.fact_segment_allocation_allocation_key_seq OWNED BY public.fact_segment_allocation.allocation_key;
CREATE TABLE public.fact_segment_allocation_history (
    allocation_history_key bigint NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    segment_id text,
    segment_name text,
    as_of_date date,
    total_emv numeric(18,2),
    supervised_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
)
PARTITION BY RANGE (file_date);
CREATE SEQUENCE public.fact_segment_allocation_history_new_allocation_history_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.fact_segment_allocation_history_new_allocation_history_key_seq OWNED BY public.fact_segment_allocation_history.allocation_history_key;
CREATE TABLE public.fact_segment_allocation_history_2024_01 (
    allocation_history_key bigint DEFAULT nextval('public.fact_segment_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    segment_id text,
    segment_name text,
    as_of_date date,
    total_emv numeric(18,2),
    supervised_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_segment_allocation_history_2024_02 (
    allocation_history_key bigint DEFAULT nextval('public.fact_segment_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    segment_id text,
    segment_name text,
    as_of_date date,
    total_emv numeric(18,2),
    supervised_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_segment_allocation_history_2024_03 (
    allocation_history_key bigint DEFAULT nextval('public.fact_segment_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    segment_id text,
    segment_name text,
    as_of_date date,
    total_emv numeric(18,2),
    supervised_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_segment_allocation_history_2024_04 (
    allocation_history_key bigint DEFAULT nextval('public.fact_segment_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    segment_id text,
    segment_name text,
    as_of_date date,
    total_emv numeric(18,2),
    supervised_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_segment_allocation_history_2024_05 (
    allocation_history_key bigint DEFAULT nextval('public.fact_segment_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    segment_id text,
    segment_name text,
    as_of_date date,
    total_emv numeric(18,2),
    supervised_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_segment_allocation_history_2024_06 (
    allocation_history_key bigint DEFAULT nextval('public.fact_segment_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    segment_id text,
    segment_name text,
    as_of_date date,
    total_emv numeric(18,2),
    supervised_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_segment_allocation_history_2024_07 (
    allocation_history_key bigint DEFAULT nextval('public.fact_segment_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    segment_id text,
    segment_name text,
    as_of_date date,
    total_emv numeric(18,2),
    supervised_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_segment_allocation_history_2024_08 (
    allocation_history_key bigint DEFAULT nextval('public.fact_segment_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    segment_id text,
    segment_name text,
    as_of_date date,
    total_emv numeric(18,2),
    supervised_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_segment_allocation_history_2024_09 (
    allocation_history_key bigint DEFAULT nextval('public.fact_segment_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    segment_id text,
    segment_name text,
    as_of_date date,
    total_emv numeric(18,2),
    supervised_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_segment_allocation_history_2024_10 (
    allocation_history_key bigint DEFAULT nextval('public.fact_segment_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    segment_id text,
    segment_name text,
    as_of_date date,
    total_emv numeric(18,2),
    supervised_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_segment_allocation_history_2024_11 (
    allocation_history_key bigint DEFAULT nextval('public.fact_segment_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    segment_id text,
    segment_name text,
    as_of_date date,
    total_emv numeric(18,2),
    supervised_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_segment_allocation_history_2024_12 (
    allocation_history_key bigint DEFAULT nextval('public.fact_segment_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    segment_id text,
    segment_name text,
    as_of_date date,
    total_emv numeric(18,2),
    supervised_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_segment_allocation_history_2025_01 (
    allocation_history_key bigint DEFAULT nextval('public.fact_segment_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    segment_id text,
    segment_name text,
    as_of_date date,
    total_emv numeric(18,2),
    supervised_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_segment_allocation_history_2025_02 (
    allocation_history_key bigint DEFAULT nextval('public.fact_segment_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    segment_id text,
    segment_name text,
    as_of_date date,
    total_emv numeric(18,2),
    supervised_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_segment_allocation_history_2025_03 (
    allocation_history_key bigint DEFAULT nextval('public.fact_segment_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    segment_id text,
    segment_name text,
    as_of_date date,
    total_emv numeric(18,2),
    supervised_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_segment_allocation_history_2025_04 (
    allocation_history_key bigint DEFAULT nextval('public.fact_segment_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    segment_id text,
    segment_name text,
    as_of_date date,
    total_emv numeric(18,2),
    supervised_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_segment_allocation_history_2025_05 (
    allocation_history_key bigint DEFAULT nextval('public.fact_segment_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    segment_id text,
    segment_name text,
    as_of_date date,
    total_emv numeric(18,2),
    supervised_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_segment_allocation_history_2025_06 (
    allocation_history_key bigint DEFAULT nextval('public.fact_segment_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    segment_id text,
    segment_name text,
    as_of_date date,
    total_emv numeric(18,2),
    supervised_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_segment_allocation_history_2025_07 (
    allocation_history_key bigint DEFAULT nextval('public.fact_segment_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    segment_id text,
    segment_name text,
    as_of_date date,
    total_emv numeric(18,2),
    supervised_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_segment_allocation_history_2025_08 (
    allocation_history_key bigint DEFAULT nextval('public.fact_segment_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    segment_id text,
    segment_name text,
    as_of_date date,
    total_emv numeric(18,2),
    supervised_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_segment_allocation_history_2025_09 (
    allocation_history_key bigint DEFAULT nextval('public.fact_segment_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    segment_id text,
    segment_name text,
    as_of_date date,
    total_emv numeric(18,2),
    supervised_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_segment_allocation_history_2025_10 (
    allocation_history_key bigint DEFAULT nextval('public.fact_segment_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    segment_id text,
    segment_name text,
    as_of_date date,
    total_emv numeric(18,2),
    supervised_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_segment_allocation_history_2025_11 (
    allocation_history_key bigint DEFAULT nextval('public.fact_segment_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    segment_id text,
    segment_name text,
    as_of_date date,
    total_emv numeric(18,2),
    supervised_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_segment_allocation_history_2025_12 (
    allocation_history_key bigint DEFAULT nextval('public.fact_segment_allocation_history_new_allocation_history_key_seq'::regclass) NOT NULL,
    account_key integer,
    class_id text,
    class_name text,
    segment_id text,
    segment_name text,
    as_of_date date,
    total_emv numeric(18,2),
    supervised_emv numeric(18,2),
    unsupervised_emv numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_strategy_assignment (
    strategy_assignment_key bigint NOT NULL,
    strategy_key integer,
    account_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_strategy_assignment_history (
    strategy_assignment_history_key bigint NOT NULL,
    strategy_key integer,
    account_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
)
PARTITION BY RANGE (file_date);
CREATE SEQUENCE public.fact_strategy_assignment_hist_strategy_assignment_history_k_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.fact_strategy_assignment_hist_strategy_assignment_history_k_seq OWNED BY public.fact_strategy_assignment_history.strategy_assignment_history_key;
CREATE TABLE public.fact_strategy_assignment_history_2024_01 (
    strategy_assignment_history_key bigint DEFAULT nextval('public.fact_strategy_assignment_hist_strategy_assignment_history_k_seq'::regclass) NOT NULL,
    strategy_key integer,
    account_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_strategy_assignment_history_2024_02 (
    strategy_assignment_history_key bigint DEFAULT nextval('public.fact_strategy_assignment_hist_strategy_assignment_history_k_seq'::regclass) NOT NULL,
    strategy_key integer,
    account_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_strategy_assignment_history_2024_03 (
    strategy_assignment_history_key bigint DEFAULT nextval('public.fact_strategy_assignment_hist_strategy_assignment_history_k_seq'::regclass) NOT NULL,
    strategy_key integer,
    account_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_strategy_assignment_history_2024_04 (
    strategy_assignment_history_key bigint DEFAULT nextval('public.fact_strategy_assignment_hist_strategy_assignment_history_k_seq'::regclass) NOT NULL,
    strategy_key integer,
    account_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_strategy_assignment_history_2024_05 (
    strategy_assignment_history_key bigint DEFAULT nextval('public.fact_strategy_assignment_hist_strategy_assignment_history_k_seq'::regclass) NOT NULL,
    strategy_key integer,
    account_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_strategy_assignment_history_2024_06 (
    strategy_assignment_history_key bigint DEFAULT nextval('public.fact_strategy_assignment_hist_strategy_assignment_history_k_seq'::regclass) NOT NULL,
    strategy_key integer,
    account_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_strategy_assignment_history_2024_07 (
    strategy_assignment_history_key bigint DEFAULT nextval('public.fact_strategy_assignment_hist_strategy_assignment_history_k_seq'::regclass) NOT NULL,
    strategy_key integer,
    account_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_strategy_assignment_history_2024_08 (
    strategy_assignment_history_key bigint DEFAULT nextval('public.fact_strategy_assignment_hist_strategy_assignment_history_k_seq'::regclass) NOT NULL,
    strategy_key integer,
    account_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_strategy_assignment_history_2024_09 (
    strategy_assignment_history_key bigint DEFAULT nextval('public.fact_strategy_assignment_hist_strategy_assignment_history_k_seq'::regclass) NOT NULL,
    strategy_key integer,
    account_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_strategy_assignment_history_2024_10 (
    strategy_assignment_history_key bigint DEFAULT nextval('public.fact_strategy_assignment_hist_strategy_assignment_history_k_seq'::regclass) NOT NULL,
    strategy_key integer,
    account_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_strategy_assignment_history_2024_11 (
    strategy_assignment_history_key bigint DEFAULT nextval('public.fact_strategy_assignment_hist_strategy_assignment_history_k_seq'::regclass) NOT NULL,
    strategy_key integer,
    account_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_strategy_assignment_history_2024_12 (
    strategy_assignment_history_key bigint DEFAULT nextval('public.fact_strategy_assignment_hist_strategy_assignment_history_k_seq'::regclass) NOT NULL,
    strategy_key integer,
    account_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_strategy_assignment_history_2025_01 (
    strategy_assignment_history_key bigint DEFAULT nextval('public.fact_strategy_assignment_hist_strategy_assignment_history_k_seq'::regclass) NOT NULL,
    strategy_key integer,
    account_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_strategy_assignment_history_2025_02 (
    strategy_assignment_history_key bigint DEFAULT nextval('public.fact_strategy_assignment_hist_strategy_assignment_history_k_seq'::regclass) NOT NULL,
    strategy_key integer,
    account_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_strategy_assignment_history_2025_03 (
    strategy_assignment_history_key bigint DEFAULT nextval('public.fact_strategy_assignment_hist_strategy_assignment_history_k_seq'::regclass) NOT NULL,
    strategy_key integer,
    account_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_strategy_assignment_history_2025_04 (
    strategy_assignment_history_key bigint DEFAULT nextval('public.fact_strategy_assignment_hist_strategy_assignment_history_k_seq'::regclass) NOT NULL,
    strategy_key integer,
    account_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_strategy_assignment_history_2025_05 (
    strategy_assignment_history_key bigint DEFAULT nextval('public.fact_strategy_assignment_hist_strategy_assignment_history_k_seq'::regclass) NOT NULL,
    strategy_key integer,
    account_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_strategy_assignment_history_2025_06 (
    strategy_assignment_history_key bigint DEFAULT nextval('public.fact_strategy_assignment_hist_strategy_assignment_history_k_seq'::regclass) NOT NULL,
    strategy_key integer,
    account_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_strategy_assignment_history_2025_07 (
    strategy_assignment_history_key bigint DEFAULT nextval('public.fact_strategy_assignment_hist_strategy_assignment_history_k_seq'::regclass) NOT NULL,
    strategy_key integer,
    account_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_strategy_assignment_history_2025_08 (
    strategy_assignment_history_key bigint DEFAULT nextval('public.fact_strategy_assignment_hist_strategy_assignment_history_k_seq'::regclass) NOT NULL,
    strategy_key integer,
    account_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_strategy_assignment_history_2025_09 (
    strategy_assignment_history_key bigint DEFAULT nextval('public.fact_strategy_assignment_hist_strategy_assignment_history_k_seq'::regclass) NOT NULL,
    strategy_key integer,
    account_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_strategy_assignment_history_2025_10 (
    strategy_assignment_history_key bigint DEFAULT nextval('public.fact_strategy_assignment_hist_strategy_assignment_history_k_seq'::regclass) NOT NULL,
    strategy_key integer,
    account_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_strategy_assignment_history_2025_11 (
    strategy_assignment_history_key bigint DEFAULT nextval('public.fact_strategy_assignment_hist_strategy_assignment_history_k_seq'::regclass) NOT NULL,
    strategy_key integer,
    account_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_strategy_assignment_history_2025_12 (
    strategy_assignment_history_key bigint DEFAULT nextval('public.fact_strategy_assignment_hist_strategy_assignment_history_k_seq'::regclass) NOT NULL,
    strategy_key integer,
    account_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE SEQUENCE public.fact_strategy_assignment_strategy_assignment_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.fact_strategy_assignment_strategy_assignment_key_seq OWNED BY public.fact_strategy_assignment.strategy_assignment_key;
CREATE TABLE public.fact_target_assignment (
    target_assignment_key bigint NOT NULL,
    target_key integer,
    account_key integer,
    portfolio_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_target_assignment_history (
    target_assignment_history_key bigint NOT NULL,
    target_key integer,
    account_key integer,
    portfolio_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
)
PARTITION BY RANGE (file_date);
CREATE SEQUENCE public.fact_target_assignment_histor_target_assignment_history_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.fact_target_assignment_histor_target_assignment_history_key_seq OWNED BY public.fact_target_assignment_history.target_assignment_history_key;
CREATE TABLE public."fact_target_assignment_history_2024_ 1" (
    target_assignment_history_key bigint DEFAULT nextval('public.fact_target_assignment_histor_target_assignment_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    account_key integer,
    portfolio_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_assignment_history_2024_ 2" (
    target_assignment_history_key bigint DEFAULT nextval('public.fact_target_assignment_histor_target_assignment_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    account_key integer,
    portfolio_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_assignment_history_2024_ 3" (
    target_assignment_history_key bigint DEFAULT nextval('public.fact_target_assignment_histor_target_assignment_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    account_key integer,
    portfolio_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_assignment_history_2024_ 4" (
    target_assignment_history_key bigint DEFAULT nextval('public.fact_target_assignment_histor_target_assignment_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    account_key integer,
    portfolio_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_assignment_history_2024_ 5" (
    target_assignment_history_key bigint DEFAULT nextval('public.fact_target_assignment_histor_target_assignment_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    account_key integer,
    portfolio_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_assignment_history_2024_ 6" (
    target_assignment_history_key bigint DEFAULT nextval('public.fact_target_assignment_histor_target_assignment_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    account_key integer,
    portfolio_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_assignment_history_2024_ 7" (
    target_assignment_history_key bigint DEFAULT nextval('public.fact_target_assignment_histor_target_assignment_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    account_key integer,
    portfolio_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_assignment_history_2024_ 8" (
    target_assignment_history_key bigint DEFAULT nextval('public.fact_target_assignment_histor_target_assignment_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    account_key integer,
    portfolio_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_assignment_history_2024_ 9" (
    target_assignment_history_key bigint DEFAULT nextval('public.fact_target_assignment_histor_target_assignment_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    account_key integer,
    portfolio_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_target_assignment_history_2024_10 (
    target_assignment_history_key bigint DEFAULT nextval('public.fact_target_assignment_histor_target_assignment_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    account_key integer,
    portfolio_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_target_assignment_history_2024_11 (
    target_assignment_history_key bigint DEFAULT nextval('public.fact_target_assignment_histor_target_assignment_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    account_key integer,
    portfolio_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_target_assignment_history_2024_12 (
    target_assignment_history_key bigint DEFAULT nextval('public.fact_target_assignment_histor_target_assignment_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    account_key integer,
    portfolio_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_assignment_history_2025_ 1" (
    target_assignment_history_key bigint DEFAULT nextval('public.fact_target_assignment_histor_target_assignment_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    account_key integer,
    portfolio_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_assignment_history_2025_ 2" (
    target_assignment_history_key bigint DEFAULT nextval('public.fact_target_assignment_histor_target_assignment_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    account_key integer,
    portfolio_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_assignment_history_2025_ 3" (
    target_assignment_history_key bigint DEFAULT nextval('public.fact_target_assignment_histor_target_assignment_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    account_key integer,
    portfolio_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_assignment_history_2025_ 4" (
    target_assignment_history_key bigint DEFAULT nextval('public.fact_target_assignment_histor_target_assignment_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    account_key integer,
    portfolio_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_assignment_history_2025_ 5" (
    target_assignment_history_key bigint DEFAULT nextval('public.fact_target_assignment_histor_target_assignment_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    account_key integer,
    portfolio_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_assignment_history_2025_ 6" (
    target_assignment_history_key bigint DEFAULT nextval('public.fact_target_assignment_histor_target_assignment_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    account_key integer,
    portfolio_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_assignment_history_2025_ 7" (
    target_assignment_history_key bigint DEFAULT nextval('public.fact_target_assignment_histor_target_assignment_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    account_key integer,
    portfolio_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_assignment_history_2025_ 8" (
    target_assignment_history_key bigint DEFAULT nextval('public.fact_target_assignment_histor_target_assignment_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    account_key integer,
    portfolio_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_assignment_history_2025_ 9" (
    target_assignment_history_key bigint DEFAULT nextval('public.fact_target_assignment_histor_target_assignment_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    account_key integer,
    portfolio_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_target_assignment_history_2025_10 (
    target_assignment_history_key bigint DEFAULT nextval('public.fact_target_assignment_histor_target_assignment_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    account_key integer,
    portfolio_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_target_assignment_history_2025_11 (
    target_assignment_history_key bigint DEFAULT nextval('public.fact_target_assignment_histor_target_assignment_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    account_key integer,
    portfolio_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_target_assignment_history_2025_12 (
    target_assignment_history_key bigint DEFAULT nextval('public.fact_target_assignment_histor_target_assignment_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    account_key integer,
    portfolio_key integer,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE SEQUENCE public.fact_target_assignment_target_assignment_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.fact_target_assignment_target_assignment_key_seq OWNED BY public.fact_target_assignment.target_assignment_key;
CREATE TABLE public.fact_target_component (
    target_component_key bigint NOT NULL,
    target_key integer,
    security_key integer,
    component_name text,
    class_name text,
    segment_name text,
    allocation numeric(18,6),
    tolerance_lower numeric(18,6),
    tolerance_upper numeric(18,6),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_target_component_history (
    target_component_history_key bigint NOT NULL,
    target_key integer,
    security_key integer,
    component_name text,
    class_name text,
    segment_name text,
    allocation numeric(18,6),
    tolerance_lower numeric(18,6),
    tolerance_upper numeric(18,6),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
)
PARTITION BY RANGE (file_date);
CREATE SEQUENCE public.fact_target_component_history_target_component_history_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.fact_target_component_history_target_component_history_key_seq OWNED BY public.fact_target_component_history.target_component_history_key;
CREATE TABLE public."fact_target_component_history_2024_ 1" (
    target_component_history_key bigint DEFAULT nextval('public.fact_target_component_history_target_component_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    security_key integer,
    component_name text,
    class_name text,
    segment_name text,
    allocation numeric(18,6),
    tolerance_lower numeric(18,6),
    tolerance_upper numeric(18,6),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_component_history_2024_ 2" (
    target_component_history_key bigint DEFAULT nextval('public.fact_target_component_history_target_component_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    security_key integer,
    component_name text,
    class_name text,
    segment_name text,
    allocation numeric(18,6),
    tolerance_lower numeric(18,6),
    tolerance_upper numeric(18,6),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_component_history_2024_ 3" (
    target_component_history_key bigint DEFAULT nextval('public.fact_target_component_history_target_component_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    security_key integer,
    component_name text,
    class_name text,
    segment_name text,
    allocation numeric(18,6),
    tolerance_lower numeric(18,6),
    tolerance_upper numeric(18,6),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_component_history_2024_ 4" (
    target_component_history_key bigint DEFAULT nextval('public.fact_target_component_history_target_component_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    security_key integer,
    component_name text,
    class_name text,
    segment_name text,
    allocation numeric(18,6),
    tolerance_lower numeric(18,6),
    tolerance_upper numeric(18,6),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_component_history_2024_ 5" (
    target_component_history_key bigint DEFAULT nextval('public.fact_target_component_history_target_component_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    security_key integer,
    component_name text,
    class_name text,
    segment_name text,
    allocation numeric(18,6),
    tolerance_lower numeric(18,6),
    tolerance_upper numeric(18,6),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_component_history_2024_ 6" (
    target_component_history_key bigint DEFAULT nextval('public.fact_target_component_history_target_component_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    security_key integer,
    component_name text,
    class_name text,
    segment_name text,
    allocation numeric(18,6),
    tolerance_lower numeric(18,6),
    tolerance_upper numeric(18,6),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_component_history_2024_ 7" (
    target_component_history_key bigint DEFAULT nextval('public.fact_target_component_history_target_component_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    security_key integer,
    component_name text,
    class_name text,
    segment_name text,
    allocation numeric(18,6),
    tolerance_lower numeric(18,6),
    tolerance_upper numeric(18,6),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_component_history_2024_ 8" (
    target_component_history_key bigint DEFAULT nextval('public.fact_target_component_history_target_component_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    security_key integer,
    component_name text,
    class_name text,
    segment_name text,
    allocation numeric(18,6),
    tolerance_lower numeric(18,6),
    tolerance_upper numeric(18,6),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_component_history_2024_ 9" (
    target_component_history_key bigint DEFAULT nextval('public.fact_target_component_history_target_component_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    security_key integer,
    component_name text,
    class_name text,
    segment_name text,
    allocation numeric(18,6),
    tolerance_lower numeric(18,6),
    tolerance_upper numeric(18,6),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_target_component_history_2024_10 (
    target_component_history_key bigint DEFAULT nextval('public.fact_target_component_history_target_component_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    security_key integer,
    component_name text,
    class_name text,
    segment_name text,
    allocation numeric(18,6),
    tolerance_lower numeric(18,6),
    tolerance_upper numeric(18,6),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_target_component_history_2024_11 (
    target_component_history_key bigint DEFAULT nextval('public.fact_target_component_history_target_component_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    security_key integer,
    component_name text,
    class_name text,
    segment_name text,
    allocation numeric(18,6),
    tolerance_lower numeric(18,6),
    tolerance_upper numeric(18,6),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_target_component_history_2024_12 (
    target_component_history_key bigint DEFAULT nextval('public.fact_target_component_history_target_component_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    security_key integer,
    component_name text,
    class_name text,
    segment_name text,
    allocation numeric(18,6),
    tolerance_lower numeric(18,6),
    tolerance_upper numeric(18,6),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_component_history_2025_ 1" (
    target_component_history_key bigint DEFAULT nextval('public.fact_target_component_history_target_component_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    security_key integer,
    component_name text,
    class_name text,
    segment_name text,
    allocation numeric(18,6),
    tolerance_lower numeric(18,6),
    tolerance_upper numeric(18,6),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_component_history_2025_ 2" (
    target_component_history_key bigint DEFAULT nextval('public.fact_target_component_history_target_component_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    security_key integer,
    component_name text,
    class_name text,
    segment_name text,
    allocation numeric(18,6),
    tolerance_lower numeric(18,6),
    tolerance_upper numeric(18,6),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_component_history_2025_ 3" (
    target_component_history_key bigint DEFAULT nextval('public.fact_target_component_history_target_component_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    security_key integer,
    component_name text,
    class_name text,
    segment_name text,
    allocation numeric(18,6),
    tolerance_lower numeric(18,6),
    tolerance_upper numeric(18,6),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_component_history_2025_ 4" (
    target_component_history_key bigint DEFAULT nextval('public.fact_target_component_history_target_component_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    security_key integer,
    component_name text,
    class_name text,
    segment_name text,
    allocation numeric(18,6),
    tolerance_lower numeric(18,6),
    tolerance_upper numeric(18,6),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_component_history_2025_ 5" (
    target_component_history_key bigint DEFAULT nextval('public.fact_target_component_history_target_component_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    security_key integer,
    component_name text,
    class_name text,
    segment_name text,
    allocation numeric(18,6),
    tolerance_lower numeric(18,6),
    tolerance_upper numeric(18,6),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_component_history_2025_ 6" (
    target_component_history_key bigint DEFAULT nextval('public.fact_target_component_history_target_component_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    security_key integer,
    component_name text,
    class_name text,
    segment_name text,
    allocation numeric(18,6),
    tolerance_lower numeric(18,6),
    tolerance_upper numeric(18,6),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_component_history_2025_ 7" (
    target_component_history_key bigint DEFAULT nextval('public.fact_target_component_history_target_component_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    security_key integer,
    component_name text,
    class_name text,
    segment_name text,
    allocation numeric(18,6),
    tolerance_lower numeric(18,6),
    tolerance_upper numeric(18,6),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_component_history_2025_ 8" (
    target_component_history_key bigint DEFAULT nextval('public.fact_target_component_history_target_component_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    security_key integer,
    component_name text,
    class_name text,
    segment_name text,
    allocation numeric(18,6),
    tolerance_lower numeric(18,6),
    tolerance_upper numeric(18,6),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public."fact_target_component_history_2025_ 9" (
    target_component_history_key bigint DEFAULT nextval('public.fact_target_component_history_target_component_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    security_key integer,
    component_name text,
    class_name text,
    segment_name text,
    allocation numeric(18,6),
    tolerance_lower numeric(18,6),
    tolerance_upper numeric(18,6),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_target_component_history_2025_10 (
    target_component_history_key bigint DEFAULT nextval('public.fact_target_component_history_target_component_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    security_key integer,
    component_name text,
    class_name text,
    segment_name text,
    allocation numeric(18,6),
    tolerance_lower numeric(18,6),
    tolerance_upper numeric(18,6),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_target_component_history_2025_11 (
    target_component_history_key bigint DEFAULT nextval('public.fact_target_component_history_target_component_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    security_key integer,
    component_name text,
    class_name text,
    segment_name text,
    allocation numeric(18,6),
    tolerance_lower numeric(18,6),
    tolerance_upper numeric(18,6),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE public.fact_target_component_history_2025_12 (
    target_component_history_key bigint DEFAULT nextval('public.fact_target_component_history_target_component_history_key_seq'::regclass) NOT NULL,
    target_key integer,
    security_key integer,
    component_name text,
    class_name text,
    segment_name text,
    allocation numeric(18,6),
    tolerance_lower numeric(18,6),
    tolerance_upper numeric(18,6),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE SEQUENCE public.fact_target_component_target_component_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.fact_target_component_target_component_key_seq OWNED BY public.fact_target_component.target_component_key;
CREATE TABLE public.fact_transaction (
    txn_key bigint NOT NULL,
    account_key integer,
    security_key integer,
    trade_date date,
    settle_date date,
    transaction_id text,
    transaction_type text,
    transaction_sub_type text,
    description text,
    units numeric(18,6),
    price numeric(18,6),
    market_value numeric(18,2),
    transaction_fee numeric(18,2),
    account_fee numeric(18,2),
    action text,
    notes text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    external_contra_account_id integer,
    transaction_sub_sub_type text
)
PARTITION BY RANGE (file_date);
CREATE SEQUENCE public.fact_transaction_new_txn_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.fact_transaction_new_txn_key_seq OWNED BY public.fact_transaction.txn_key;
CREATE TABLE public.fact_transaction_2024_01 (
    txn_key bigint DEFAULT nextval('public.fact_transaction_new_txn_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    trade_date date,
    settle_date date,
    transaction_id text,
    transaction_type text,
    transaction_sub_type text,
    description text,
    units numeric(18,6),
    price numeric(18,6),
    market_value numeric(18,2),
    transaction_fee numeric(18,2),
    account_fee numeric(18,2),
    action text,
    notes text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    external_contra_account_id integer,
    transaction_sub_sub_type text
);
CREATE TABLE public.fact_transaction_2024_02 (
    txn_key bigint DEFAULT nextval('public.fact_transaction_new_txn_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    trade_date date,
    settle_date date,
    transaction_id text,
    transaction_type text,
    transaction_sub_type text,
    description text,
    units numeric(18,6),
    price numeric(18,6),
    market_value numeric(18,2),
    transaction_fee numeric(18,2),
    account_fee numeric(18,2),
    action text,
    notes text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    external_contra_account_id integer,
    transaction_sub_sub_type text
);
CREATE TABLE public.fact_transaction_2024_03 (
    txn_key bigint DEFAULT nextval('public.fact_transaction_new_txn_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    trade_date date,
    settle_date date,
    transaction_id text,
    transaction_type text,
    transaction_sub_type text,
    description text,
    units numeric(18,6),
    price numeric(18,6),
    market_value numeric(18,2),
    transaction_fee numeric(18,2),
    account_fee numeric(18,2),
    action text,
    notes text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    external_contra_account_id integer,
    transaction_sub_sub_type text
);
CREATE TABLE public.fact_transaction_2024_04 (
    txn_key bigint DEFAULT nextval('public.fact_transaction_new_txn_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    trade_date date,
    settle_date date,
    transaction_id text,
    transaction_type text,
    transaction_sub_type text,
    description text,
    units numeric(18,6),
    price numeric(18,6),
    market_value numeric(18,2),
    transaction_fee numeric(18,2),
    account_fee numeric(18,2),
    action text,
    notes text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    external_contra_account_id integer,
    transaction_sub_sub_type text
);
CREATE TABLE public.fact_transaction_2024_05 (
    txn_key bigint DEFAULT nextval('public.fact_transaction_new_txn_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    trade_date date,
    settle_date date,
    transaction_id text,
    transaction_type text,
    transaction_sub_type text,
    description text,
    units numeric(18,6),
    price numeric(18,6),
    market_value numeric(18,2),
    transaction_fee numeric(18,2),
    account_fee numeric(18,2),
    action text,
    notes text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    external_contra_account_id integer,
    transaction_sub_sub_type text
);
CREATE TABLE public.fact_transaction_2024_06 (
    txn_key bigint DEFAULT nextval('public.fact_transaction_new_txn_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    trade_date date,
    settle_date date,
    transaction_id text,
    transaction_type text,
    transaction_sub_type text,
    description text,
    units numeric(18,6),
    price numeric(18,6),
    market_value numeric(18,2),
    transaction_fee numeric(18,2),
    account_fee numeric(18,2),
    action text,
    notes text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    external_contra_account_id integer,
    transaction_sub_sub_type text
);
CREATE TABLE public.fact_transaction_2024_07 (
    txn_key bigint DEFAULT nextval('public.fact_transaction_new_txn_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    trade_date date,
    settle_date date,
    transaction_id text,
    transaction_type text,
    transaction_sub_type text,
    description text,
    units numeric(18,6),
    price numeric(18,6),
    market_value numeric(18,2),
    transaction_fee numeric(18,2),
    account_fee numeric(18,2),
    action text,
    notes text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    external_contra_account_id integer,
    transaction_sub_sub_type text
);
CREATE TABLE public.fact_transaction_2024_08 (
    txn_key bigint DEFAULT nextval('public.fact_transaction_new_txn_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    trade_date date,
    settle_date date,
    transaction_id text,
    transaction_type text,
    transaction_sub_type text,
    description text,
    units numeric(18,6),
    price numeric(18,6),
    market_value numeric(18,2),
    transaction_fee numeric(18,2),
    account_fee numeric(18,2),
    action text,
    notes text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    external_contra_account_id integer,
    transaction_sub_sub_type text
);
CREATE TABLE public.fact_transaction_2024_09 (
    txn_key bigint DEFAULT nextval('public.fact_transaction_new_txn_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    trade_date date,
    settle_date date,
    transaction_id text,
    transaction_type text,
    transaction_sub_type text,
    description text,
    units numeric(18,6),
    price numeric(18,6),
    market_value numeric(18,2),
    transaction_fee numeric(18,2),
    account_fee numeric(18,2),
    action text,
    notes text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    external_contra_account_id integer,
    transaction_sub_sub_type text
);
CREATE TABLE public.fact_transaction_2024_10 (
    txn_key bigint DEFAULT nextval('public.fact_transaction_new_txn_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    trade_date date,
    settle_date date,
    transaction_id text,
    transaction_type text,
    transaction_sub_type text,
    description text,
    units numeric(18,6),
    price numeric(18,6),
    market_value numeric(18,2),
    transaction_fee numeric(18,2),
    account_fee numeric(18,2),
    action text,
    notes text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    external_contra_account_id integer,
    transaction_sub_sub_type text
);
CREATE TABLE public.fact_transaction_2024_11 (
    txn_key bigint DEFAULT nextval('public.fact_transaction_new_txn_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    trade_date date,
    settle_date date,
    transaction_id text,
    transaction_type text,
    transaction_sub_type text,
    description text,
    units numeric(18,6),
    price numeric(18,6),
    market_value numeric(18,2),
    transaction_fee numeric(18,2),
    account_fee numeric(18,2),
    action text,
    notes text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    external_contra_account_id integer,
    transaction_sub_sub_type text
);
CREATE TABLE public.fact_transaction_2024_12 (
    txn_key bigint DEFAULT nextval('public.fact_transaction_new_txn_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    trade_date date,
    settle_date date,
    transaction_id text,
    transaction_type text,
    transaction_sub_type text,
    description text,
    units numeric(18,6),
    price numeric(18,6),
    market_value numeric(18,2),
    transaction_fee numeric(18,2),
    account_fee numeric(18,2),
    action text,
    notes text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    external_contra_account_id integer,
    transaction_sub_sub_type text
);
CREATE TABLE public.fact_transaction_2025_01 (
    txn_key bigint DEFAULT nextval('public.fact_transaction_new_txn_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    trade_date date,
    settle_date date,
    transaction_id text,
    transaction_type text,
    transaction_sub_type text,
    description text,
    units numeric(18,6),
    price numeric(18,6),
    market_value numeric(18,2),
    transaction_fee numeric(18,2),
    account_fee numeric(18,2),
    action text,
    notes text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    external_contra_account_id integer,
    transaction_sub_sub_type text
);
CREATE TABLE public.fact_transaction_2025_02 (
    txn_key bigint DEFAULT nextval('public.fact_transaction_new_txn_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    trade_date date,
    settle_date date,
    transaction_id text,
    transaction_type text,
    transaction_sub_type text,
    description text,
    units numeric(18,6),
    price numeric(18,6),
    market_value numeric(18,2),
    transaction_fee numeric(18,2),
    account_fee numeric(18,2),
    action text,
    notes text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    external_contra_account_id integer,
    transaction_sub_sub_type text
);
CREATE TABLE public.fact_transaction_2025_03 (
    txn_key bigint DEFAULT nextval('public.fact_transaction_new_txn_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    trade_date date,
    settle_date date,
    transaction_id text,
    transaction_type text,
    transaction_sub_type text,
    description text,
    units numeric(18,6),
    price numeric(18,6),
    market_value numeric(18,2),
    transaction_fee numeric(18,2),
    account_fee numeric(18,2),
    action text,
    notes text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    external_contra_account_id integer,
    transaction_sub_sub_type text
);
CREATE TABLE public.fact_transaction_2025_04 (
    txn_key bigint DEFAULT nextval('public.fact_transaction_new_txn_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    trade_date date,
    settle_date date,
    transaction_id text,
    transaction_type text,
    transaction_sub_type text,
    description text,
    units numeric(18,6),
    price numeric(18,6),
    market_value numeric(18,2),
    transaction_fee numeric(18,2),
    account_fee numeric(18,2),
    action text,
    notes text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    external_contra_account_id integer,
    transaction_sub_sub_type text
);
CREATE TABLE public.fact_transaction_2025_05 (
    txn_key bigint DEFAULT nextval('public.fact_transaction_new_txn_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    trade_date date,
    settle_date date,
    transaction_id text,
    transaction_type text,
    transaction_sub_type text,
    description text,
    units numeric(18,6),
    price numeric(18,6),
    market_value numeric(18,2),
    transaction_fee numeric(18,2),
    account_fee numeric(18,2),
    action text,
    notes text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    external_contra_account_id integer,
    transaction_sub_sub_type text
);
CREATE TABLE public.fact_transaction_2025_06 (
    txn_key bigint DEFAULT nextval('public.fact_transaction_new_txn_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    trade_date date,
    settle_date date,
    transaction_id text,
    transaction_type text,
    transaction_sub_type text,
    description text,
    units numeric(18,6),
    price numeric(18,6),
    market_value numeric(18,2),
    transaction_fee numeric(18,2),
    account_fee numeric(18,2),
    action text,
    notes text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    external_contra_account_id integer,
    transaction_sub_sub_type text
);
CREATE TABLE public.fact_transaction_2025_07 (
    txn_key bigint DEFAULT nextval('public.fact_transaction_new_txn_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    trade_date date,
    settle_date date,
    transaction_id text,
    transaction_type text,
    transaction_sub_type text,
    description text,
    units numeric(18,6),
    price numeric(18,6),
    market_value numeric(18,2),
    transaction_fee numeric(18,2),
    account_fee numeric(18,2),
    action text,
    notes text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    external_contra_account_id integer,
    transaction_sub_sub_type text
);
CREATE TABLE public.fact_transaction_2025_08 (
    txn_key bigint DEFAULT nextval('public.fact_transaction_new_txn_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    trade_date date,
    settle_date date,
    transaction_id text,
    transaction_type text,
    transaction_sub_type text,
    description text,
    units numeric(18,6),
    price numeric(18,6),
    market_value numeric(18,2),
    transaction_fee numeric(18,2),
    account_fee numeric(18,2),
    action text,
    notes text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    external_contra_account_id integer,
    transaction_sub_sub_type text
);
CREATE TABLE public.fact_transaction_2025_09 (
    txn_key bigint DEFAULT nextval('public.fact_transaction_new_txn_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    trade_date date,
    settle_date date,
    transaction_id text,
    transaction_type text,
    transaction_sub_type text,
    description text,
    units numeric(18,6),
    price numeric(18,6),
    market_value numeric(18,2),
    transaction_fee numeric(18,2),
    account_fee numeric(18,2),
    action text,
    notes text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    external_contra_account_id integer,
    transaction_sub_sub_type text
);
CREATE TABLE public.fact_transaction_2025_10 (
    txn_key bigint DEFAULT nextval('public.fact_transaction_new_txn_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    trade_date date,
    settle_date date,
    transaction_id text,
    transaction_type text,
    transaction_sub_type text,
    description text,
    units numeric(18,6),
    price numeric(18,6),
    market_value numeric(18,2),
    transaction_fee numeric(18,2),
    account_fee numeric(18,2),
    action text,
    notes text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    external_contra_account_id integer,
    transaction_sub_sub_type text
);
CREATE TABLE public.fact_transaction_2025_11 (
    txn_key bigint DEFAULT nextval('public.fact_transaction_new_txn_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    trade_date date,
    settle_date date,
    transaction_id text,
    transaction_type text,
    transaction_sub_type text,
    description text,
    units numeric(18,6),
    price numeric(18,6),
    market_value numeric(18,2),
    transaction_fee numeric(18,2),
    account_fee numeric(18,2),
    action text,
    notes text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    external_contra_account_id integer,
    transaction_sub_sub_type text
);
CREATE TABLE public.fact_transaction_2025_12 (
    txn_key bigint DEFAULT nextval('public.fact_transaction_new_txn_key_seq'::regclass) NOT NULL,
    account_key integer,
    security_key integer,
    trade_date date,
    settle_date date,
    transaction_id text,
    transaction_type text,
    transaction_sub_type text,
    description text,
    units numeric(18,6),
    price numeric(18,6),
    market_value numeric(18,2),
    transaction_fee numeric(18,2),
    account_fee numeric(18,2),
    action text,
    notes text,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    external_contra_account_id integer,
    transaction_sub_sub_type text
);
ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2024_01 FOR VALUES FROM ('2024-01-01') TO ('2024-02-01');
ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2024_02 FOR VALUES FROM ('2024-02-01') TO ('2024-03-01');
ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2024_03 FOR VALUES FROM ('2024-03-01') TO ('2024-04-01');
ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2024_04 FOR VALUES FROM ('2024-04-01') TO ('2024-05-01');
ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2024_05 FOR VALUES FROM ('2024-05-01') TO ('2024-06-01');
ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2024_06 FOR VALUES FROM ('2024-06-01') TO ('2024-07-01');
ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2024_07 FOR VALUES FROM ('2024-07-01') TO ('2024-08-01');
ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2024_08 FOR VALUES FROM ('2024-08-01') TO ('2024-09-01');
ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2024_09 FOR VALUES FROM ('2024-09-01') TO ('2024-10-01');
ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2024_10 FOR VALUES FROM ('2024-10-01') TO ('2024-11-01');
ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2024_11 FOR VALUES FROM ('2024-11-01') TO ('2024-12-01');
ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2024_12 FOR VALUES FROM ('2024-12-01') TO ('2025-01-01');
ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2025_01 FOR VALUES FROM ('2025-01-01') TO ('2025-02-01');
ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2025_02 FOR VALUES FROM ('2025-02-01') TO ('2025-03-01');
ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2025_03 FOR VALUES FROM ('2025-03-01') TO ('2025-04-01');
ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2025_04 FOR VALUES FROM ('2025-04-01') TO ('2025-05-01');
ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2025_05 FOR VALUES FROM ('2025-05-01') TO ('2025-06-01');
ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2025_06 FOR VALUES FROM ('2025-06-01') TO ('2025-07-01');
ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2025_07 FOR VALUES FROM ('2025-07-01') TO ('2025-08-01');
ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2025_08 FOR VALUES FROM ('2025-08-01') TO ('2025-09-01');
ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2025_09 FOR VALUES FROM ('2025-09-01') TO ('2025-10-01');
ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2025_10 FOR VALUES FROM ('2025-10-01') TO ('2025-11-01');
ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2025_11 FOR VALUES FROM ('2025-11-01') TO ('2025-12-01');
ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2025_12 FOR VALUES FROM ('2025-12-01') TO ('2026-01-01');
ALTER TABLE ONLY public.dim_strategies_history ATTACH PARTITION public.dim_strategies_history_2024_01 FOR VALUES FROM ('2024-01-01') TO ('2024-02-01');
ALTER TABLE ONLY public.dim_strategies_history ATTACH PARTITION public.dim_strategies_history_2024_02 FOR VALUES FROM ('2024-02-01') TO ('2024-03-01');
ALTER TABLE ONLY public.dim_strategies_history ATTACH PARTITION public.dim_strategies_history_2024_03 FOR VALUES FROM ('2024-03-01') TO ('2024-04-01');
ALTER TABLE ONLY public.dim_strategies_history ATTACH PARTITION public.dim_strategies_history_2024_04 FOR VALUES FROM ('2024-04-01') TO ('2024-05-01');
ALTER TABLE ONLY public.dim_strategies_history ATTACH PARTITION public.dim_strategies_history_2024_05 FOR VALUES FROM ('2024-05-01') TO ('2024-06-01');
ALTER TABLE ONLY public.dim_strategies_history ATTACH PARTITION public.dim_strategies_history_2024_06 FOR VALUES FROM ('2024-06-01') TO ('2024-07-01');
ALTER TABLE ONLY public.dim_strategies_history ATTACH PARTITION public.dim_strategies_history_2024_07 FOR VALUES FROM ('2024-07-01') TO ('2024-08-01');
ALTER TABLE ONLY public.dim_strategies_history ATTACH PARTITION public.dim_strategies_history_2024_08 FOR VALUES FROM ('2024-08-01') TO ('2024-09-01');
ALTER TABLE ONLY public.dim_strategies_history ATTACH PARTITION public.dim_strategies_history_2024_09 FOR VALUES FROM ('2024-09-01') TO ('2024-10-01');
ALTER TABLE ONLY public.dim_strategies_history ATTACH PARTITION public.dim_strategies_history_2024_10 FOR VALUES FROM ('2024-10-01') TO ('2024-11-01');
ALTER TABLE ONLY public.dim_strategies_history ATTACH PARTITION public.dim_strategies_history_2024_11 FOR VALUES FROM ('2024-11-01') TO ('2024-12-01');
ALTER TABLE ONLY public.dim_strategies_history ATTACH PARTITION public.dim_strategies_history_2024_12 FOR VALUES FROM ('2024-12-01') TO ('2025-01-01');
ALTER TABLE ONLY public.dim_strategies_history ATTACH PARTITION public.dim_strategies_history_2025_01 FOR VALUES FROM ('2025-01-01') TO ('2025-02-01');
ALTER TABLE ONLY public.dim_strategies_history ATTACH PARTITION public.dim_strategies_history_2025_02 FOR VALUES FROM ('2025-02-01') TO ('2025-03-01');
ALTER TABLE ONLY public.dim_strategies_history ATTACH PARTITION public.dim_strategies_history_2025_03 FOR VALUES FROM ('2025-03-01') TO ('2025-04-01');
ALTER TABLE ONLY public.dim_strategies_history ATTACH PARTITION public.dim_strategies_history_2025_04 FOR VALUES FROM ('2025-04-01') TO ('2025-05-01');
ALTER TABLE ONLY public.dim_strategies_history ATTACH PARTITION public.dim_strategies_history_2025_05 FOR VALUES FROM ('2025-05-01') TO ('2025-06-01');
ALTER TABLE ONLY public.dim_strategies_history ATTACH PARTITION public.dim_strategies_history_2025_06 FOR VALUES FROM ('2025-06-01') TO ('2025-07-01');
ALTER TABLE ONLY public.dim_strategies_history ATTACH PARTITION public.dim_strategies_history_2025_07 FOR VALUES FROM ('2025-07-01') TO ('2025-08-01');
ALTER TABLE ONLY public.dim_strategies_history ATTACH PARTITION public.dim_strategies_history_2025_08 FOR VALUES FROM ('2025-08-01') TO ('2025-09-01');
ALTER TABLE ONLY public.dim_strategies_history ATTACH PARTITION public.dim_strategies_history_2025_09 FOR VALUES FROM ('2025-09-01') TO ('2025-10-01');
ALTER TABLE ONLY public.dim_strategies_history ATTACH PARTITION public.dim_strategies_history_2025_10 FOR VALUES FROM ('2025-10-01') TO ('2025-11-01');
ALTER TABLE ONLY public.dim_strategies_history ATTACH PARTITION public.dim_strategies_history_2025_11 FOR VALUES FROM ('2025-11-01') TO ('2025-12-01');
ALTER TABLE ONLY public.dim_strategies_history ATTACH PARTITION public.dim_strategies_history_2025_12 FOR VALUES FROM ('2025-12-01') TO ('2026-01-01');
ALTER TABLE ONLY public.dim_target_history ATTACH PARTITION public."dim_target_history_2024_ 1" FOR VALUES FROM ('2024-01-01') TO ('2024-02-01');
ALTER TABLE ONLY public.dim_target_history ATTACH PARTITION public."dim_target_history_2024_ 2" FOR VALUES FROM ('2024-02-01') TO ('2024-03-01');
ALTER TABLE ONLY public.dim_target_history ATTACH PARTITION public."dim_target_history_2024_ 3" FOR VALUES FROM ('2024-03-01') TO ('2024-04-01');
ALTER TABLE ONLY public.dim_target_history ATTACH PARTITION public."dim_target_history_2024_ 4" FOR VALUES FROM ('2024-04-01') TO ('2024-05-01');
ALTER TABLE ONLY public.dim_target_history ATTACH PARTITION public."dim_target_history_2024_ 5" FOR VALUES FROM ('2024-05-01') TO ('2024-06-01');
ALTER TABLE ONLY public.dim_target_history ATTACH PARTITION public."dim_target_history_2024_ 6" FOR VALUES FROM ('2024-06-01') TO ('2024-07-01');
ALTER TABLE ONLY public.dim_target_history ATTACH PARTITION public."dim_target_history_2024_ 7" FOR VALUES FROM ('2024-07-01') TO ('2024-08-01');
ALTER TABLE ONLY public.dim_target_history ATTACH PARTITION public."dim_target_history_2024_ 8" FOR VALUES FROM ('2024-08-01') TO ('2024-09-01');
ALTER TABLE ONLY public.dim_target_history ATTACH PARTITION public."dim_target_history_2024_ 9" FOR VALUES FROM ('2024-09-01') TO ('2024-10-01');
ALTER TABLE ONLY public.dim_target_history ATTACH PARTITION public.dim_target_history_2024_10 FOR VALUES FROM ('2024-10-01') TO ('2024-11-01');
ALTER TABLE ONLY public.dim_target_history ATTACH PARTITION public.dim_target_history_2024_11 FOR VALUES FROM ('2024-11-01') TO ('2024-12-01');
ALTER TABLE ONLY public.dim_target_history ATTACH PARTITION public.dim_target_history_2024_12 FOR VALUES FROM ('2024-12-01') TO ('2025-01-01');
ALTER TABLE ONLY public.dim_target_history ATTACH PARTITION public."dim_target_history_2025_ 1" FOR VALUES FROM ('2025-01-01') TO ('2025-02-01');
ALTER TABLE ONLY public.dim_target_history ATTACH PARTITION public."dim_target_history_2025_ 2" FOR VALUES FROM ('2025-02-01') TO ('2025-03-01');
ALTER TABLE ONLY public.dim_target_history ATTACH PARTITION public."dim_target_history_2025_ 3" FOR VALUES FROM ('2025-03-01') TO ('2025-04-01');
ALTER TABLE ONLY public.dim_target_history ATTACH PARTITION public."dim_target_history_2025_ 4" FOR VALUES FROM ('2025-04-01') TO ('2025-05-01');
ALTER TABLE ONLY public.dim_target_history ATTACH PARTITION public."dim_target_history_2025_ 5" FOR VALUES FROM ('2025-05-01') TO ('2025-06-01');
ALTER TABLE ONLY public.dim_target_history ATTACH PARTITION public."dim_target_history_2025_ 6" FOR VALUES FROM ('2025-06-01') TO ('2025-07-01');
ALTER TABLE ONLY public.dim_target_history ATTACH PARTITION public."dim_target_history_2025_ 7" FOR VALUES FROM ('2025-07-01') TO ('2025-08-01');
ALTER TABLE ONLY public.dim_target_history ATTACH PARTITION public."dim_target_history_2025_ 8" FOR VALUES FROM ('2025-08-01') TO ('2025-09-01');
ALTER TABLE ONLY public.dim_target_history ATTACH PARTITION public."dim_target_history_2025_ 9" FOR VALUES FROM ('2025-09-01') TO ('2025-10-01');
ALTER TABLE ONLY public.dim_target_history ATTACH PARTITION public.dim_target_history_2025_10 FOR VALUES FROM ('2025-10-01') TO ('2025-11-01');
ALTER TABLE ONLY public.dim_target_history ATTACH PARTITION public.dim_target_history_2025_11 FOR VALUES FROM ('2025-11-01') TO ('2025-12-01');
ALTER TABLE ONLY public.dim_target_history ATTACH PARTITION public.dim_target_history_2025_12 FOR VALUES FROM ('2025-12-01') TO ('2026-01-01');
ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2024_01 FOR VALUES FROM ('2024-01-01') TO ('2024-02-01');
ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2024_02 FOR VALUES FROM ('2024-02-01') TO ('2024-03-01');
ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2024_03 FOR VALUES FROM ('2024-03-01') TO ('2024-04-01');
ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2024_04 FOR VALUES FROM ('2024-04-01') TO ('2024-05-01');
ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2024_05 FOR VALUES FROM ('2024-05-01') TO ('2024-06-01');
ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2024_06 FOR VALUES FROM ('2024-06-01') TO ('2024-07-01');
ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2024_07 FOR VALUES FROM ('2024-07-01') TO ('2024-08-01');
ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2024_08 FOR VALUES FROM ('2024-08-01') TO ('2024-09-01');
ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2024_09 FOR VALUES FROM ('2024-09-01') TO ('2024-10-01');
ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2024_10 FOR VALUES FROM ('2024-10-01') TO ('2024-11-01');
ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2024_11 FOR VALUES FROM ('2024-11-01') TO ('2024-12-01');
ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2024_12 FOR VALUES FROM ('2024-12-01') TO ('2025-01-01');
ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2025_01 FOR VALUES FROM ('2025-01-01') TO ('2025-02-01');
ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2025_02 FOR VALUES FROM ('2025-02-01') TO ('2025-03-01');
ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2025_03 FOR VALUES FROM ('2025-03-01') TO ('2025-04-01');
ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2025_04 FOR VALUES FROM ('2025-04-01') TO ('2025-05-01');
ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2025_05 FOR VALUES FROM ('2025-05-01') TO ('2025-06-01');
ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2025_06 FOR VALUES FROM ('2025-06-01') TO ('2025-07-01');
ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2025_07 FOR VALUES FROM ('2025-07-01') TO ('2025-08-01');
ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2025_08 FOR VALUES FROM ('2025-08-01') TO ('2025-09-01');
ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2025_09 FOR VALUES FROM ('2025-09-01') TO ('2025-10-01');
ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2025_10 FOR VALUES FROM ('2025-10-01') TO ('2025-11-01');
ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2025_11 FOR VALUES FROM ('2025-11-01') TO ('2025-12-01');
ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2025_12 FOR VALUES FROM ('2025-12-01') TO ('2026-01-01');
ALTER TABLE ONLY public.fact_class_allocation_history ATTACH PARTITION public.fact_class_allocation_history_2024_01 FOR VALUES FROM ('2024-01-01') TO ('2024-02-01');
ALTER TABLE ONLY public.fact_class_allocation_history ATTACH PARTITION public.fact_class_allocation_history_2024_02 FOR VALUES FROM ('2024-02-01') TO ('2024-03-01');
ALTER TABLE ONLY public.fact_class_allocation_history ATTACH PARTITION public.fact_class_allocation_history_2024_03 FOR VALUES FROM ('2024-03-01') TO ('2024-04-01');
ALTER TABLE ONLY public.fact_class_allocation_history ATTACH PARTITION public.fact_class_allocation_history_2024_04 FOR VALUES FROM ('2024-04-01') TO ('2024-05-01');
ALTER TABLE ONLY public.fact_class_allocation_history ATTACH PARTITION public.fact_class_allocation_history_2024_05 FOR VALUES FROM ('2024-05-01') TO ('2024-06-01');
ALTER TABLE ONLY public.fact_class_allocation_history ATTACH PARTITION public.fact_class_allocation_history_2024_06 FOR VALUES FROM ('2024-06-01') TO ('2024-07-01');
ALTER TABLE ONLY public.fact_class_allocation_history ATTACH PARTITION public.fact_class_allocation_history_2024_07 FOR VALUES FROM ('2024-07-01') TO ('2024-08-01');
ALTER TABLE ONLY public.fact_class_allocation_history ATTACH PARTITION public.fact_class_allocation_history_2024_08 FOR VALUES FROM ('2024-08-01') TO ('2024-09-01');
ALTER TABLE ONLY public.fact_class_allocation_history ATTACH PARTITION public.fact_class_allocation_history_2024_09 FOR VALUES FROM ('2024-09-01') TO ('2024-10-01');
ALTER TABLE ONLY public.fact_class_allocation_history ATTACH PARTITION public.fact_class_allocation_history_2024_10 FOR VALUES FROM ('2024-10-01') TO ('2024-11-01');
ALTER TABLE ONLY public.fact_class_allocation_history ATTACH PARTITION public.fact_class_allocation_history_2024_11 FOR VALUES FROM ('2024-11-01') TO ('2024-12-01');
ALTER TABLE ONLY public.fact_class_allocation_history ATTACH PARTITION public.fact_class_allocation_history_2024_12 FOR VALUES FROM ('2024-12-01') TO ('2025-01-01');
ALTER TABLE ONLY public.fact_class_allocation_history ATTACH PARTITION public.fact_class_allocation_history_2025_01 FOR VALUES FROM ('2025-01-01') TO ('2025-02-01');
ALTER TABLE ONLY public.fact_class_allocation_history ATTACH PARTITION public.fact_class_allocation_history_2025_02 FOR VALUES FROM ('2025-02-01') TO ('2025-03-01');
ALTER TABLE ONLY public.fact_class_allocation_history ATTACH PARTITION public.fact_class_allocation_history_2025_03 FOR VALUES FROM ('2025-03-01') TO ('2025-04-01');
ALTER TABLE ONLY public.fact_class_allocation_history ATTACH PARTITION public.fact_class_allocation_history_2025_04 FOR VALUES FROM ('2025-04-01') TO ('2025-05-01');
ALTER TABLE ONLY public.fact_class_allocation_history ATTACH PARTITION public.fact_class_allocation_history_2025_05 FOR VALUES FROM ('2025-05-01') TO ('2025-06-01');
ALTER TABLE ONLY public.fact_class_allocation_history ATTACH PARTITION public.fact_class_allocation_history_2025_06 FOR VALUES FROM ('2025-06-01') TO ('2025-07-01');
ALTER TABLE ONLY public.fact_class_allocation_history ATTACH PARTITION public.fact_class_allocation_history_2025_07 FOR VALUES FROM ('2025-07-01') TO ('2025-08-01');
ALTER TABLE ONLY public.fact_class_allocation_history ATTACH PARTITION public.fact_class_allocation_history_2025_08 FOR VALUES FROM ('2025-08-01') TO ('2025-09-01');
ALTER TABLE ONLY public.fact_class_allocation_history ATTACH PARTITION public.fact_class_allocation_history_2025_09 FOR VALUES FROM ('2025-09-01') TO ('2025-10-01');
ALTER TABLE ONLY public.fact_class_allocation_history ATTACH PARTITION public.fact_class_allocation_history_2025_10 FOR VALUES FROM ('2025-10-01') TO ('2025-11-01');
ALTER TABLE ONLY public.fact_class_allocation_history ATTACH PARTITION public.fact_class_allocation_history_2025_11 FOR VALUES FROM ('2025-11-01') TO ('2025-12-01');
ALTER TABLE ONLY public.fact_class_allocation_history ATTACH PARTITION public.fact_class_allocation_history_2025_12 FOR VALUES FROM ('2025-12-01') TO ('2026-01-01');
ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2024_01 FOR VALUES FROM ('2024-01-01') TO ('2024-02-01');
ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2024_02 FOR VALUES FROM ('2024-02-01') TO ('2024-03-01');
ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2024_03 FOR VALUES FROM ('2024-03-01') TO ('2024-04-01');
ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2024_04 FOR VALUES FROM ('2024-04-01') TO ('2024-05-01');
ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2024_05 FOR VALUES FROM ('2024-05-01') TO ('2024-06-01');
ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2024_06 FOR VALUES FROM ('2024-06-01') TO ('2024-07-01');
ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2024_07 FOR VALUES FROM ('2024-07-01') TO ('2024-08-01');
ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2024_08 FOR VALUES FROM ('2024-08-01') TO ('2024-09-01');
ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2024_09 FOR VALUES FROM ('2024-09-01') TO ('2024-10-01');
ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2024_10 FOR VALUES FROM ('2024-10-01') TO ('2024-11-01');
ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2024_11 FOR VALUES FROM ('2024-11-01') TO ('2024-12-01');
ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2024_12 FOR VALUES FROM ('2024-12-01') TO ('2025-01-01');
ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2025_01 FOR VALUES FROM ('2025-01-01') TO ('2025-02-01');
ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2025_02 FOR VALUES FROM ('2025-02-01') TO ('2025-03-01');
ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2025_03 FOR VALUES FROM ('2025-03-01') TO ('2025-04-01');
ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2025_04 FOR VALUES FROM ('2025-04-01') TO ('2025-05-01');
ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2025_05 FOR VALUES FROM ('2025-05-01') TO ('2025-06-01');
ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2025_06 FOR VALUES FROM ('2025-06-01') TO ('2025-07-01');
ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2025_07 FOR VALUES FROM ('2025-07-01') TO ('2025-08-01');
ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2025_08 FOR VALUES FROM ('2025-08-01') TO ('2025-09-01');
ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2025_09 FOR VALUES FROM ('2025-09-01') TO ('2025-10-01');
ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2025_10 FOR VALUES FROM ('2025-10-01') TO ('2025-11-01');
ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2025_11 FOR VALUES FROM ('2025-11-01') TO ('2025-12-01');
ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2025_12 FOR VALUES FROM ('2025-12-01') TO ('2026-01-01');
ALTER TABLE ONLY public.fact_segment_allocation_history ATTACH PARTITION public.fact_segment_allocation_history_2024_01 FOR VALUES FROM ('2024-01-01') TO ('2024-02-01');
ALTER TABLE ONLY public.fact_segment_allocation_history ATTACH PARTITION public.fact_segment_allocation_history_2024_02 FOR VALUES FROM ('2024-02-01') TO ('2024-03-01');
ALTER TABLE ONLY public.fact_segment_allocation_history ATTACH PARTITION public.fact_segment_allocation_history_2024_03 FOR VALUES FROM ('2024-03-01') TO ('2024-04-01');
ALTER TABLE ONLY public.fact_segment_allocation_history ATTACH PARTITION public.fact_segment_allocation_history_2024_04 FOR VALUES FROM ('2024-04-01') TO ('2024-05-01');
ALTER TABLE ONLY public.fact_segment_allocation_history ATTACH PARTITION public.fact_segment_allocation_history_2024_05 FOR VALUES FROM ('2024-05-01') TO ('2024-06-01');
ALTER TABLE ONLY public.fact_segment_allocation_history ATTACH PARTITION public.fact_segment_allocation_history_2024_06 FOR VALUES FROM ('2024-06-01') TO ('2024-07-01');
ALTER TABLE ONLY public.fact_segment_allocation_history ATTACH PARTITION public.fact_segment_allocation_history_2024_07 FOR VALUES FROM ('2024-07-01') TO ('2024-08-01');
ALTER TABLE ONLY public.fact_segment_allocation_history ATTACH PARTITION public.fact_segment_allocation_history_2024_08 FOR VALUES FROM ('2024-08-01') TO ('2024-09-01');
ALTER TABLE ONLY public.fact_segment_allocation_history ATTACH PARTITION public.fact_segment_allocation_history_2024_09 FOR VALUES FROM ('2024-09-01') TO ('2024-10-01');
ALTER TABLE ONLY public.fact_segment_allocation_history ATTACH PARTITION public.fact_segment_allocation_history_2024_10 FOR VALUES FROM ('2024-10-01') TO ('2024-11-01');
ALTER TABLE ONLY public.fact_segment_allocation_history ATTACH PARTITION public.fact_segment_allocation_history_2024_11 FOR VALUES FROM ('2024-11-01') TO ('2024-12-01');
ALTER TABLE ONLY public.fact_segment_allocation_history ATTACH PARTITION public.fact_segment_allocation_history_2024_12 FOR VALUES FROM ('2024-12-01') TO ('2025-01-01');
ALTER TABLE ONLY public.fact_segment_allocation_history ATTACH PARTITION public.fact_segment_allocation_history_2025_01 FOR VALUES FROM ('2025-01-01') TO ('2025-02-01');
ALTER TABLE ONLY public.fact_segment_allocation_history ATTACH PARTITION public.fact_segment_allocation_history_2025_02 FOR VALUES FROM ('2025-02-01') TO ('2025-03-01');
ALTER TABLE ONLY public.fact_segment_allocation_history ATTACH PARTITION public.fact_segment_allocation_history_2025_03 FOR VALUES FROM ('2025-03-01') TO ('2025-04-01');
ALTER TABLE ONLY public.fact_segment_allocation_history ATTACH PARTITION public.fact_segment_allocation_history_2025_04 FOR VALUES FROM ('2025-04-01') TO ('2025-05-01');
ALTER TABLE ONLY public.fact_segment_allocation_history ATTACH PARTITION public.fact_segment_allocation_history_2025_05 FOR VALUES FROM ('2025-05-01') TO ('2025-06-01');
ALTER TABLE ONLY public.fact_segment_allocation_history ATTACH PARTITION public.fact_segment_allocation_history_2025_06 FOR VALUES FROM ('2025-06-01') TO ('2025-07-01');
ALTER TABLE ONLY public.fact_segment_allocation_history ATTACH PARTITION public.fact_segment_allocation_history_2025_07 FOR VALUES FROM ('2025-07-01') TO ('2025-08-01');
ALTER TABLE ONLY public.fact_segment_allocation_history ATTACH PARTITION public.fact_segment_allocation_history_2025_08 FOR VALUES FROM ('2025-08-01') TO ('2025-09-01');
ALTER TABLE ONLY public.fact_segment_allocation_history ATTACH PARTITION public.fact_segment_allocation_history_2025_09 FOR VALUES FROM ('2025-09-01') TO ('2025-10-01');
ALTER TABLE ONLY public.fact_segment_allocation_history ATTACH PARTITION public.fact_segment_allocation_history_2025_10 FOR VALUES FROM ('2025-10-01') TO ('2025-11-01');
ALTER TABLE ONLY public.fact_segment_allocation_history ATTACH PARTITION public.fact_segment_allocation_history_2025_11 FOR VALUES FROM ('2025-11-01') TO ('2025-12-01');
ALTER TABLE ONLY public.fact_segment_allocation_history ATTACH PARTITION public.fact_segment_allocation_history_2025_12 FOR VALUES FROM ('2025-12-01') TO ('2026-01-01');
ALTER TABLE ONLY public.fact_strategy_assignment_history ATTACH PARTITION public.fact_strategy_assignment_history_2024_01 FOR VALUES FROM ('2024-01-01') TO ('2024-02-01');
ALTER TABLE ONLY public.fact_strategy_assignment_history ATTACH PARTITION public.fact_strategy_assignment_history_2024_02 FOR VALUES FROM ('2024-02-01') TO ('2024-03-01');
ALTER TABLE ONLY public.fact_strategy_assignment_history ATTACH PARTITION public.fact_strategy_assignment_history_2024_03 FOR VALUES FROM ('2024-03-01') TO ('2024-04-01');
ALTER TABLE ONLY public.fact_strategy_assignment_history ATTACH PARTITION public.fact_strategy_assignment_history_2024_04 FOR VALUES FROM ('2024-04-01') TO ('2024-05-01');
ALTER TABLE ONLY public.fact_strategy_assignment_history ATTACH PARTITION public.fact_strategy_assignment_history_2024_05 FOR VALUES FROM ('2024-05-01') TO ('2024-06-01');
ALTER TABLE ONLY public.fact_strategy_assignment_history ATTACH PARTITION public.fact_strategy_assignment_history_2024_06 FOR VALUES FROM ('2024-06-01') TO ('2024-07-01');
ALTER TABLE ONLY public.fact_strategy_assignment_history ATTACH PARTITION public.fact_strategy_assignment_history_2024_07 FOR VALUES FROM ('2024-07-01') TO ('2024-08-01');
ALTER TABLE ONLY public.fact_strategy_assignment_history ATTACH PARTITION public.fact_strategy_assignment_history_2024_08 FOR VALUES FROM ('2024-08-01') TO ('2024-09-01');
ALTER TABLE ONLY public.fact_strategy_assignment_history ATTACH PARTITION public.fact_strategy_assignment_history_2024_09 FOR VALUES FROM ('2024-09-01') TO ('2024-10-01');
ALTER TABLE ONLY public.fact_strategy_assignment_history ATTACH PARTITION public.fact_strategy_assignment_history_2024_10 FOR VALUES FROM ('2024-10-01') TO ('2024-11-01');
ALTER TABLE ONLY public.fact_strategy_assignment_history ATTACH PARTITION public.fact_strategy_assignment_history_2024_11 FOR VALUES FROM ('2024-11-01') TO ('2024-12-01');
ALTER TABLE ONLY public.fact_strategy_assignment_history ATTACH PARTITION public.fact_strategy_assignment_history_2024_12 FOR VALUES FROM ('2024-12-01') TO ('2025-01-01');
ALTER TABLE ONLY public.fact_strategy_assignment_history ATTACH PARTITION public.fact_strategy_assignment_history_2025_01 FOR VALUES FROM ('2025-01-01') TO ('2025-02-01');
ALTER TABLE ONLY public.fact_strategy_assignment_history ATTACH PARTITION public.fact_strategy_assignment_history_2025_02 FOR VALUES FROM ('2025-02-01') TO ('2025-03-01');
ALTER TABLE ONLY public.fact_strategy_assignment_history ATTACH PARTITION public.fact_strategy_assignment_history_2025_03 FOR VALUES FROM ('2025-03-01') TO ('2025-04-01');
ALTER TABLE ONLY public.fact_strategy_assignment_history ATTACH PARTITION public.fact_strategy_assignment_history_2025_04 FOR VALUES FROM ('2025-04-01') TO ('2025-05-01');
ALTER TABLE ONLY public.fact_strategy_assignment_history ATTACH PARTITION public.fact_strategy_assignment_history_2025_05 FOR VALUES FROM ('2025-05-01') TO ('2025-06-01');
ALTER TABLE ONLY public.fact_strategy_assignment_history ATTACH PARTITION public.fact_strategy_assignment_history_2025_06 FOR VALUES FROM ('2025-06-01') TO ('2025-07-01');
ALTER TABLE ONLY public.fact_strategy_assignment_history ATTACH PARTITION public.fact_strategy_assignment_history_2025_07 FOR VALUES FROM ('2025-07-01') TO ('2025-08-01');
ALTER TABLE ONLY public.fact_strategy_assignment_history ATTACH PARTITION public.fact_strategy_assignment_history_2025_08 FOR VALUES FROM ('2025-08-01') TO ('2025-09-01');
ALTER TABLE ONLY public.fact_strategy_assignment_history ATTACH PARTITION public.fact_strategy_assignment_history_2025_09 FOR VALUES FROM ('2025-09-01') TO ('2025-10-01');
ALTER TABLE ONLY public.fact_strategy_assignment_history ATTACH PARTITION public.fact_strategy_assignment_history_2025_10 FOR VALUES FROM ('2025-10-01') TO ('2025-11-01');
ALTER TABLE ONLY public.fact_strategy_assignment_history ATTACH PARTITION public.fact_strategy_assignment_history_2025_11 FOR VALUES FROM ('2025-11-01') TO ('2025-12-01');
ALTER TABLE ONLY public.fact_strategy_assignment_history ATTACH PARTITION public.fact_strategy_assignment_history_2025_12 FOR VALUES FROM ('2025-12-01') TO ('2026-01-01');
ALTER TABLE ONLY public.fact_target_assignment_history ATTACH PARTITION public."fact_target_assignment_history_2024_ 1" FOR VALUES FROM ('2024-01-01') TO ('2024-02-01');
ALTER TABLE ONLY public.fact_target_assignment_history ATTACH PARTITION public."fact_target_assignment_history_2024_ 2" FOR VALUES FROM ('2024-02-01') TO ('2024-03-01');
ALTER TABLE ONLY public.fact_target_assignment_history ATTACH PARTITION public."fact_target_assignment_history_2024_ 3" FOR VALUES FROM ('2024-03-01') TO ('2024-04-01');
ALTER TABLE ONLY public.fact_target_assignment_history ATTACH PARTITION public."fact_target_assignment_history_2024_ 4" FOR VALUES FROM ('2024-04-01') TO ('2024-05-01');
ALTER TABLE ONLY public.fact_target_assignment_history ATTACH PARTITION public."fact_target_assignment_history_2024_ 5" FOR VALUES FROM ('2024-05-01') TO ('2024-06-01');
ALTER TABLE ONLY public.fact_target_assignment_history ATTACH PARTITION public."fact_target_assignment_history_2024_ 6" FOR VALUES FROM ('2024-06-01') TO ('2024-07-01');
ALTER TABLE ONLY public.fact_target_assignment_history ATTACH PARTITION public."fact_target_assignment_history_2024_ 7" FOR VALUES FROM ('2024-07-01') TO ('2024-08-01');
ALTER TABLE ONLY public.fact_target_assignment_history ATTACH PARTITION public."fact_target_assignment_history_2024_ 8" FOR VALUES FROM ('2024-08-01') TO ('2024-09-01');
ALTER TABLE ONLY public.fact_target_assignment_history ATTACH PARTITION public."fact_target_assignment_history_2024_ 9" FOR VALUES FROM ('2024-09-01') TO ('2024-10-01');
ALTER TABLE ONLY public.fact_target_assignment_history ATTACH PARTITION public.fact_target_assignment_history_2024_10 FOR VALUES FROM ('2024-10-01') TO ('2024-11-01');
ALTER TABLE ONLY public.fact_target_assignment_history ATTACH PARTITION public.fact_target_assignment_history_2024_11 FOR VALUES FROM ('2024-11-01') TO ('2024-12-01');
ALTER TABLE ONLY public.fact_target_assignment_history ATTACH PARTITION public.fact_target_assignment_history_2024_12 FOR VALUES FROM ('2024-12-01') TO ('2025-01-01');
ALTER TABLE ONLY public.fact_target_assignment_history ATTACH PARTITION public."fact_target_assignment_history_2025_ 1" FOR VALUES FROM ('2025-01-01') TO ('2025-02-01');
ALTER TABLE ONLY public.fact_target_assignment_history ATTACH PARTITION public."fact_target_assignment_history_2025_ 2" FOR VALUES FROM ('2025-02-01') TO ('2025-03-01');
ALTER TABLE ONLY public.fact_target_assignment_history ATTACH PARTITION public."fact_target_assignment_history_2025_ 3" FOR VALUES FROM ('2025-03-01') TO ('2025-04-01');
ALTER TABLE ONLY public.fact_target_assignment_history ATTACH PARTITION public."fact_target_assignment_history_2025_ 4" FOR VALUES FROM ('2025-04-01') TO ('2025-05-01');
ALTER TABLE ONLY public.fact_target_assignment_history ATTACH PARTITION public."fact_target_assignment_history_2025_ 5" FOR VALUES FROM ('2025-05-01') TO ('2025-06-01');
ALTER TABLE ONLY public.fact_target_assignment_history ATTACH PARTITION public."fact_target_assignment_history_2025_ 6" FOR VALUES FROM ('2025-06-01') TO ('2025-07-01');
ALTER TABLE ONLY public.fact_target_assignment_history ATTACH PARTITION public."fact_target_assignment_history_2025_ 7" FOR VALUES FROM ('2025-07-01') TO ('2025-08-01');
ALTER TABLE ONLY public.fact_target_assignment_history ATTACH PARTITION public."fact_target_assignment_history_2025_ 8" FOR VALUES FROM ('2025-08-01') TO ('2025-09-01');
ALTER TABLE ONLY public.fact_target_assignment_history ATTACH PARTITION public."fact_target_assignment_history_2025_ 9" FOR VALUES FROM ('2025-09-01') TO ('2025-10-01');
ALTER TABLE ONLY public.fact_target_assignment_history ATTACH PARTITION public.fact_target_assignment_history_2025_10 FOR VALUES FROM ('2025-10-01') TO ('2025-11-01');
ALTER TABLE ONLY public.fact_target_assignment_history ATTACH PARTITION public.fact_target_assignment_history_2025_11 FOR VALUES FROM ('2025-11-01') TO ('2025-12-01');
ALTER TABLE ONLY public.fact_target_assignment_history ATTACH PARTITION public.fact_target_assignment_history_2025_12 FOR VALUES FROM ('2025-12-01') TO ('2026-01-01');
ALTER TABLE ONLY public.fact_target_component_history ATTACH PARTITION public."fact_target_component_history_2024_ 1" FOR VALUES FROM ('2024-01-01') TO ('2024-02-01');
ALTER TABLE ONLY public.fact_target_component_history ATTACH PARTITION public."fact_target_component_history_2024_ 2" FOR VALUES FROM ('2024-02-01') TO ('2024-03-01');
ALTER TABLE ONLY public.fact_target_component_history ATTACH PARTITION public."fact_target_component_history_2024_ 3" FOR VALUES FROM ('2024-03-01') TO ('2024-04-01');
ALTER TABLE ONLY public.fact_target_component_history ATTACH PARTITION public."fact_target_component_history_2024_ 4" FOR VALUES FROM ('2024-04-01') TO ('2024-05-01');
ALTER TABLE ONLY public.fact_target_component_history ATTACH PARTITION public."fact_target_component_history_2024_ 5" FOR VALUES FROM ('2024-05-01') TO ('2024-06-01');
ALTER TABLE ONLY public.fact_target_component_history ATTACH PARTITION public."fact_target_component_history_2024_ 6" FOR VALUES FROM ('2024-06-01') TO ('2024-07-01');
ALTER TABLE ONLY public.fact_target_component_history ATTACH PARTITION public."fact_target_component_history_2024_ 7" FOR VALUES FROM ('2024-07-01') TO ('2024-08-01');
ALTER TABLE ONLY public.fact_target_component_history ATTACH PARTITION public."fact_target_component_history_2024_ 8" FOR VALUES FROM ('2024-08-01') TO ('2024-09-01');
ALTER TABLE ONLY public.fact_target_component_history ATTACH PARTITION public."fact_target_component_history_2024_ 9" FOR VALUES FROM ('2024-09-01') TO ('2024-10-01');
ALTER TABLE ONLY public.fact_target_component_history ATTACH PARTITION public.fact_target_component_history_2024_10 FOR VALUES FROM ('2024-10-01') TO ('2024-11-01');
ALTER TABLE ONLY public.fact_target_component_history ATTACH PARTITION public.fact_target_component_history_2024_11 FOR VALUES FROM ('2024-11-01') TO ('2024-12-01');
ALTER TABLE ONLY public.fact_target_component_history ATTACH PARTITION public.fact_target_component_history_2024_12 FOR VALUES FROM ('2024-12-01') TO ('2025-01-01');
ALTER TABLE ONLY public.fact_target_component_history ATTACH PARTITION public."fact_target_component_history_2025_ 1" FOR VALUES FROM ('2025-01-01') TO ('2025-02-01');
ALTER TABLE ONLY public.fact_target_component_history ATTACH PARTITION public."fact_target_component_history_2025_ 2" FOR VALUES FROM ('2025-02-01') TO ('2025-03-01');
ALTER TABLE ONLY public.fact_target_component_history ATTACH PARTITION public."fact_target_component_history_2025_ 3" FOR VALUES FROM ('2025-03-01') TO ('2025-04-01');
ALTER TABLE ONLY public.fact_target_component_history ATTACH PARTITION public."fact_target_component_history_2025_ 4" FOR VALUES FROM ('2025-04-01') TO ('2025-05-01');
ALTER TABLE ONLY public.fact_target_component_history ATTACH PARTITION public."fact_target_component_history_2025_ 5" FOR VALUES FROM ('2025-05-01') TO ('2025-06-01');
ALTER TABLE ONLY public.fact_target_component_history ATTACH PARTITION public."fact_target_component_history_2025_ 6" FOR VALUES FROM ('2025-06-01') TO ('2025-07-01');
ALTER TABLE ONLY public.fact_target_component_history ATTACH PARTITION public."fact_target_component_history_2025_ 7" FOR VALUES FROM ('2025-07-01') TO ('2025-08-01');
ALTER TABLE ONLY public.fact_target_component_history ATTACH PARTITION public."fact_target_component_history_2025_ 8" FOR VALUES FROM ('2025-08-01') TO ('2025-09-01');
ALTER TABLE ONLY public.fact_target_component_history ATTACH PARTITION public."fact_target_component_history_2025_ 9" FOR VALUES FROM ('2025-09-01') TO ('2025-10-01');
ALTER TABLE ONLY public.fact_target_component_history ATTACH PARTITION public.fact_target_component_history_2025_10 FOR VALUES FROM ('2025-10-01') TO ('2025-11-01');
ALTER TABLE ONLY public.fact_target_component_history ATTACH PARTITION public.fact_target_component_history_2025_11 FOR VALUES FROM ('2025-11-01') TO ('2025-12-01');
ALTER TABLE ONLY public.fact_target_component_history ATTACH PARTITION public.fact_target_component_history_2025_12 FOR VALUES FROM ('2025-12-01') TO ('2026-01-01');
ALTER TABLE ONLY public.fact_transaction ATTACH PARTITION public.fact_transaction_2024_01 FOR VALUES FROM ('2024-01-01') TO ('2024-02-01');
ALTER TABLE ONLY public.fact_transaction ATTACH PARTITION public.fact_transaction_2024_02 FOR VALUES FROM ('2024-02-01') TO ('2024-03-01');
ALTER TABLE ONLY public.fact_transaction ATTACH PARTITION public.fact_transaction_2024_03 FOR VALUES FROM ('2024-03-01') TO ('2024-04-01');
ALTER TABLE ONLY public.fact_transaction ATTACH PARTITION public.fact_transaction_2024_04 FOR VALUES FROM ('2024-04-01') TO ('2024-05-01');
ALTER TABLE ONLY public.fact_transaction ATTACH PARTITION public.fact_transaction_2024_05 FOR VALUES FROM ('2024-05-01') TO ('2024-06-01');
ALTER TABLE ONLY public.fact_transaction ATTACH PARTITION public.fact_transaction_2024_06 FOR VALUES FROM ('2024-06-01') TO ('2024-07-01');
ALTER TABLE ONLY public.fact_transaction ATTACH PARTITION public.fact_transaction_2024_07 FOR VALUES FROM ('2024-07-01') TO ('2024-08-01');
ALTER TABLE ONLY public.fact_transaction ATTACH PARTITION public.fact_transaction_2024_08 FOR VALUES FROM ('2024-08-01') TO ('2024-09-01');
ALTER TABLE ONLY public.fact_transaction ATTACH PARTITION public.fact_transaction_2024_09 FOR VALUES FROM ('2024-09-01') TO ('2024-10-01');
ALTER TABLE ONLY public.fact_transaction ATTACH PARTITION public.fact_transaction_2024_10 FOR VALUES FROM ('2024-10-01') TO ('2024-11-01');
ALTER TABLE ONLY public.fact_transaction ATTACH PARTITION public.fact_transaction_2024_11 FOR VALUES FROM ('2024-11-01') TO ('2024-12-01');
ALTER TABLE ONLY public.fact_transaction ATTACH PARTITION public.fact_transaction_2024_12 FOR VALUES FROM ('2024-12-01') TO ('2025-01-01');
ALTER TABLE ONLY public.fact_transaction ATTACH PARTITION public.fact_transaction_2025_01 FOR VALUES FROM ('2025-01-01') TO ('2025-02-01');
ALTER TABLE ONLY public.fact_transaction ATTACH PARTITION public.fact_transaction_2025_02 FOR VALUES FROM ('2025-02-01') TO ('2025-03-01');
ALTER TABLE ONLY public.fact_transaction ATTACH PARTITION public.fact_transaction_2025_03 FOR VALUES FROM ('2025-03-01') TO ('2025-04-01');
ALTER TABLE ONLY public.fact_transaction ATTACH PARTITION public.fact_transaction_2025_04 FOR VALUES FROM ('2025-04-01') TO ('2025-05-01');
ALTER TABLE ONLY public.fact_transaction ATTACH PARTITION public.fact_transaction_2025_05 FOR VALUES FROM ('2025-05-01') TO ('2025-06-01');
ALTER TABLE ONLY public.fact_transaction ATTACH PARTITION public.fact_transaction_2025_06 FOR VALUES FROM ('2025-06-01') TO ('2025-07-01');
ALTER TABLE ONLY public.fact_transaction ATTACH PARTITION public.fact_transaction_2025_07 FOR VALUES FROM ('2025-07-01') TO ('2025-08-01');
ALTER TABLE ONLY public.fact_transaction ATTACH PARTITION public.fact_transaction_2025_08 FOR VALUES FROM ('2025-08-01') TO ('2025-09-01');
ALTER TABLE ONLY public.fact_transaction ATTACH PARTITION public.fact_transaction_2025_09 FOR VALUES FROM ('2025-09-01') TO ('2025-10-01');
ALTER TABLE ONLY public.fact_transaction ATTACH PARTITION public.fact_transaction_2025_10 FOR VALUES FROM ('2025-10-01') TO ('2025-11-01');
ALTER TABLE ONLY public.fact_transaction ATTACH PARTITION public.fact_transaction_2025_11 FOR VALUES FROM ('2025-11-01') TO ('2025-12-01');
ALTER TABLE ONLY public.fact_transaction ATTACH PARTITION public.fact_transaction_2025_12 FOR VALUES FROM ('2025-12-01') TO ('2026-01-01');
ALTER TABLE ONLY public.dim_account ALTER COLUMN account_key SET DEFAULT nextval('public.dim_account_account_key_seq'::regclass);
ALTER TABLE ONLY public.dim_account_history ALTER COLUMN account_history_key SET DEFAULT nextval('public.dim_account_history_new_account_history_key_seq'::regclass);
ALTER TABLE ONLY public.dim_portfolio ALTER COLUMN portfolio_key SET DEFAULT nextval('public.dim_portfolio_portfolio_key_seq'::regclass);
ALTER TABLE ONLY public.dim_portfolio_accounts ALTER COLUMN portfolio_account_key SET DEFAULT nextval('public.dim_portfolio_accounts_portfolio_account_key_seq'::regclass);
ALTER TABLE ONLY public.dim_security ALTER COLUMN security_key SET DEFAULT nextval('public.dim_security_security_key_seq'::regclass);
ALTER TABLE ONLY public.dim_security_history ALTER COLUMN security_history_key SET DEFAULT nextval('public.dim_security_history_security_history_key_seq'::regclass);
ALTER TABLE ONLY public.dim_strategies ALTER COLUMN strategy_key SET DEFAULT nextval('public.dim_strategies_strategy_key_seq'::regclass);
ALTER TABLE ONLY public.dim_strategies_history ALTER COLUMN strategy_history_key SET DEFAULT nextval('public.dim_strategies_history_strategy_history_key_seq'::regclass);
ALTER TABLE ONLY public.dim_target ALTER COLUMN target_key SET DEFAULT nextval('public.dim_target_target_key_seq'::regclass);
ALTER TABLE ONLY public.dim_target_history ALTER COLUMN target_history_key SET DEFAULT nextval('public.dim_target_history_target_history_key_seq'::regclass);
ALTER TABLE ONLY public.fact_account_balance ALTER COLUMN balance_key SET DEFAULT nextval('public.fact_account_balance_balance_key_seq'::regclass);
ALTER TABLE ONLY public.fact_account_balance_history ALTER COLUMN history_key SET DEFAULT nextval('public.fact_account_balance_history_new_history_key_seq'::regclass);
ALTER TABLE ONLY public.fact_class_allocation ALTER COLUMN allocation_key SET DEFAULT nextval('public.fact_class_allocation_allocation_key_seq'::regclass);
ALTER TABLE ONLY public.fact_class_allocation_history ALTER COLUMN allocation_history_key SET DEFAULT nextval('public.fact_class_allocation_history_new_allocation_history_key_seq'::regclass);
ALTER TABLE ONLY public.fact_position_holding ALTER COLUMN position_key SET DEFAULT nextval('public.fact_position_holding_position_key_seq'::regclass);
ALTER TABLE ONLY public.fact_position_holding_history ALTER COLUMN position_history_key SET DEFAULT nextval('public.fact_position_holding_history_new_position_history_key_seq'::regclass);
ALTER TABLE ONLY public.fact_segment_allocation ALTER COLUMN allocation_key SET DEFAULT nextval('public.fact_segment_allocation_allocation_key_seq'::regclass);
ALTER TABLE ONLY public.fact_segment_allocation_history ALTER COLUMN allocation_history_key SET DEFAULT nextval('public.fact_segment_allocation_history_new_allocation_history_key_seq'::regclass);
ALTER TABLE ONLY public.fact_strategy_assignment ALTER COLUMN strategy_assignment_key SET DEFAULT nextval('public.fact_strategy_assignment_strategy_assignment_key_seq'::regclass);
ALTER TABLE ONLY public.fact_strategy_assignment_history ALTER COLUMN strategy_assignment_history_key SET DEFAULT nextval('public.fact_strategy_assignment_hist_strategy_assignment_history_k_seq'::regclass);
ALTER TABLE ONLY public.fact_target_assignment ALTER COLUMN target_assignment_key SET DEFAULT nextval('public.fact_target_assignment_target_assignment_key_seq'::regclass);
ALTER TABLE ONLY public.fact_target_assignment_history ALTER COLUMN target_assignment_history_key SET DEFAULT nextval('public.fact_target_assignment_histor_target_assignment_history_key_seq'::regclass);
ALTER TABLE ONLY public.fact_target_component ALTER COLUMN target_component_key SET DEFAULT nextval('public.fact_target_component_target_component_key_seq'::regclass);
ALTER TABLE ONLY public.fact_target_component_history ALTER COLUMN target_component_history_key SET DEFAULT nextval('public.fact_target_component_history_target_component_history_key_seq'::regclass);
ALTER TABLE ONLY public.fact_transaction ALTER COLUMN txn_key SET DEFAULT nextval('public.fact_transaction_new_txn_key_seq'::regclass);
ALTER TABLE ONLY public.dim_account_history
    ADD CONSTRAINT dim_account_history_new_pkey PRIMARY KEY (account_history_key, file_date);
ALTER TABLE ONLY public.dim_account_history_2024_01
    ADD CONSTRAINT "dim_account_history_2024_ 1_pkey" PRIMARY KEY (account_history_key, file_date);
ALTER TABLE ONLY public.dim_account_history_2024_02
    ADD CONSTRAINT "dim_account_history_2024_ 2_pkey" PRIMARY KEY (account_history_key, file_date);
ALTER TABLE ONLY public.dim_account_history_2024_03
    ADD CONSTRAINT "dim_account_history_2024_ 3_pkey" PRIMARY KEY (account_history_key, file_date);
ALTER TABLE ONLY public.dim_account_history_2024_04
    ADD CONSTRAINT "dim_account_history_2024_ 4_pkey" PRIMARY KEY (account_history_key, file_date);
ALTER TABLE ONLY public.dim_account_history_2024_05
    ADD CONSTRAINT "dim_account_history_2024_ 5_pkey" PRIMARY KEY (account_history_key, file_date);
ALTER TABLE ONLY public.dim_account_history_2024_06
    ADD CONSTRAINT "dim_account_history_2024_ 6_pkey" PRIMARY KEY (account_history_key, file_date);
ALTER TABLE ONLY public.dim_account_history_2024_07
    ADD CONSTRAINT "dim_account_history_2024_ 7_pkey" PRIMARY KEY (account_history_key, file_date);
ALTER TABLE ONLY public.dim_account_history_2024_08
    ADD CONSTRAINT "dim_account_history_2024_ 8_pkey" PRIMARY KEY (account_history_key, file_date);
ALTER TABLE ONLY public.dim_account_history_2024_09
    ADD CONSTRAINT "dim_account_history_2024_ 9_pkey" PRIMARY KEY (account_history_key, file_date);
ALTER TABLE ONLY public.dim_account_history_2024_10
    ADD CONSTRAINT dim_account_history_2024_10_pkey PRIMARY KEY (account_history_key, file_date);
ALTER TABLE ONLY public.dim_account_history_2024_11
    ADD CONSTRAINT dim_account_history_2024_11_pkey PRIMARY KEY (account_history_key, file_date);
ALTER TABLE ONLY public.dim_account_history_2024_12
    ADD CONSTRAINT dim_account_history_2024_12_pkey PRIMARY KEY (account_history_key, file_date);
ALTER TABLE ONLY public.dim_account_history_2025_01
    ADD CONSTRAINT "dim_account_history_2025_ 1_pkey" PRIMARY KEY (account_history_key, file_date);
ALTER TABLE ONLY public.dim_account_history_2025_02
    ADD CONSTRAINT "dim_account_history_2025_ 2_pkey" PRIMARY KEY (account_history_key, file_date);
ALTER TABLE ONLY public.dim_account_history_2025_03
    ADD CONSTRAINT "dim_account_history_2025_ 3_pkey" PRIMARY KEY (account_history_key, file_date);
ALTER TABLE ONLY public.dim_account_history_2025_04
    ADD CONSTRAINT "dim_account_history_2025_ 4_pkey" PRIMARY KEY (account_history_key, file_date);
ALTER TABLE ONLY public.dim_account_history_2025_05
    ADD CONSTRAINT "dim_account_history_2025_ 5_pkey" PRIMARY KEY (account_history_key, file_date);
ALTER TABLE ONLY public.dim_account_history_2025_06
    ADD CONSTRAINT "dim_account_history_2025_ 6_pkey" PRIMARY KEY (account_history_key, file_date);
ALTER TABLE ONLY public.dim_account_history_2025_07
    ADD CONSTRAINT "dim_account_history_2025_ 7_pkey" PRIMARY KEY (account_history_key, file_date);
ALTER TABLE ONLY public.dim_account_history_2025_08
    ADD CONSTRAINT "dim_account_history_2025_ 8_pkey" PRIMARY KEY (account_history_key, file_date);
ALTER TABLE ONLY public.dim_account_history_2025_09
    ADD CONSTRAINT "dim_account_history_2025_ 9_pkey" PRIMARY KEY (account_history_key, file_date);
ALTER TABLE ONLY public.dim_account_history_2025_10
    ADD CONSTRAINT dim_account_history_2025_10_pkey PRIMARY KEY (account_history_key, file_date);
ALTER TABLE ONLY public.dim_account_history_2025_11
    ADD CONSTRAINT dim_account_history_2025_11_pkey PRIMARY KEY (account_history_key, file_date);
ALTER TABLE ONLY public.dim_account_history_2025_12
    ADD CONSTRAINT dim_account_history_2025_12_pkey PRIMARY KEY (account_history_key, file_date);
ALTER TABLE ONLY public.dim_account
    ADD CONSTRAINT dim_account_pkey PRIMARY KEY (account_key);
ALTER TABLE ONLY public.dim_portfolio_accounts
    ADD CONSTRAINT dim_portfolio_accounts_pkey PRIMARY KEY (portfolio_account_key);
ALTER TABLE ONLY public.dim_portfolio
    ADD CONSTRAINT dim_portfolio_pkey PRIMARY KEY (portfolio_key);
ALTER TABLE ONLY public.dim_security
    ADD CONSTRAINT dim_security_pkey PRIMARY KEY (security_key);
ALTER TABLE ONLY public.dim_strategies_history
    ADD CONSTRAINT dim_strategies_history_pkey PRIMARY KEY (strategy_history_key, file_date);
ALTER TABLE ONLY public.dim_strategies_history_2024_01
    ADD CONSTRAINT dim_strategies_history_2024_01_pkey PRIMARY KEY (strategy_history_key, file_date);
ALTER TABLE ONLY public.dim_strategies_history_2024_02
    ADD CONSTRAINT dim_strategies_history_2024_02_pkey PRIMARY KEY (strategy_history_key, file_date);
ALTER TABLE ONLY public.dim_strategies_history_2024_03
    ADD CONSTRAINT dim_strategies_history_2024_03_pkey PRIMARY KEY (strategy_history_key, file_date);
ALTER TABLE ONLY public.dim_strategies_history_2024_04
    ADD CONSTRAINT dim_strategies_history_2024_04_pkey PRIMARY KEY (strategy_history_key, file_date);
ALTER TABLE ONLY public.dim_strategies_history_2024_05
    ADD CONSTRAINT dim_strategies_history_2024_05_pkey PRIMARY KEY (strategy_history_key, file_date);
ALTER TABLE ONLY public.dim_strategies_history_2024_06
    ADD CONSTRAINT dim_strategies_history_2024_06_pkey PRIMARY KEY (strategy_history_key, file_date);
ALTER TABLE ONLY public.dim_strategies_history_2024_07
    ADD CONSTRAINT dim_strategies_history_2024_07_pkey PRIMARY KEY (strategy_history_key, file_date);
ALTER TABLE ONLY public.dim_strategies_history_2024_08
    ADD CONSTRAINT dim_strategies_history_2024_08_pkey PRIMARY KEY (strategy_history_key, file_date);
ALTER TABLE ONLY public.dim_strategies_history_2024_09
    ADD CONSTRAINT dim_strategies_history_2024_09_pkey PRIMARY KEY (strategy_history_key, file_date);
ALTER TABLE ONLY public.dim_strategies_history_2024_10
    ADD CONSTRAINT dim_strategies_history_2024_10_pkey PRIMARY KEY (strategy_history_key, file_date);
ALTER TABLE ONLY public.dim_strategies_history_2024_11
    ADD CONSTRAINT dim_strategies_history_2024_11_pkey PRIMARY KEY (strategy_history_key, file_date);
ALTER TABLE ONLY public.dim_strategies_history_2024_12
    ADD CONSTRAINT dim_strategies_history_2024_12_pkey PRIMARY KEY (strategy_history_key, file_date);
ALTER TABLE ONLY public.dim_strategies_history_2025_01
    ADD CONSTRAINT dim_strategies_history_2025_01_pkey PRIMARY KEY (strategy_history_key, file_date);
ALTER TABLE ONLY public.dim_strategies_history_2025_02
    ADD CONSTRAINT dim_strategies_history_2025_02_pkey PRIMARY KEY (strategy_history_key, file_date);
ALTER TABLE ONLY public.dim_strategies_history_2025_03
    ADD CONSTRAINT dim_strategies_history_2025_03_pkey PRIMARY KEY (strategy_history_key, file_date);
ALTER TABLE ONLY public.dim_strategies_history_2025_04
    ADD CONSTRAINT dim_strategies_history_2025_04_pkey PRIMARY KEY (strategy_history_key, file_date);
ALTER TABLE ONLY public.dim_strategies_history_2025_05
    ADD CONSTRAINT dim_strategies_history_2025_05_pkey PRIMARY KEY (strategy_history_key, file_date);
ALTER TABLE ONLY public.dim_strategies_history_2025_06
    ADD CONSTRAINT dim_strategies_history_2025_06_pkey PRIMARY KEY (strategy_history_key, file_date);
ALTER TABLE ONLY public.dim_strategies_history_2025_07
    ADD CONSTRAINT dim_strategies_history_2025_07_pkey PRIMARY KEY (strategy_history_key, file_date);
ALTER TABLE ONLY public.dim_strategies_history_2025_08
    ADD CONSTRAINT dim_strategies_history_2025_08_pkey PRIMARY KEY (strategy_history_key, file_date);
ALTER TABLE ONLY public.dim_strategies_history_2025_09
    ADD CONSTRAINT dim_strategies_history_2025_09_pkey PRIMARY KEY (strategy_history_key, file_date);
ALTER TABLE ONLY public.dim_strategies_history_2025_10
    ADD CONSTRAINT dim_strategies_history_2025_10_pkey PRIMARY KEY (strategy_history_key, file_date);
ALTER TABLE ONLY public.dim_strategies_history_2025_11
    ADD CONSTRAINT dim_strategies_history_2025_11_pkey PRIMARY KEY (strategy_history_key, file_date);
ALTER TABLE ONLY public.dim_strategies_history_2025_12
    ADD CONSTRAINT dim_strategies_history_2025_12_pkey PRIMARY KEY (strategy_history_key, file_date);
ALTER TABLE ONLY public.dim_strategies
    ADD CONSTRAINT dim_strategies_pkey PRIMARY KEY (strategy_key);
ALTER TABLE ONLY public.dim_target_history
    ADD CONSTRAINT dim_target_history_pkey PRIMARY KEY (target_history_key, file_date);
ALTER TABLE ONLY public."dim_target_history_2024_ 1"
    ADD CONSTRAINT "dim_target_history_2024_ 1_pkey" PRIMARY KEY (target_history_key, file_date);
ALTER TABLE ONLY public."dim_target_history_2024_ 2"
    ADD CONSTRAINT "dim_target_history_2024_ 2_pkey" PRIMARY KEY (target_history_key, file_date);
ALTER TABLE ONLY public."dim_target_history_2024_ 3"
    ADD CONSTRAINT "dim_target_history_2024_ 3_pkey" PRIMARY KEY (target_history_key, file_date);
ALTER TABLE ONLY public."dim_target_history_2024_ 4"
    ADD CONSTRAINT "dim_target_history_2024_ 4_pkey" PRIMARY KEY (target_history_key, file_date);
ALTER TABLE ONLY public."dim_target_history_2024_ 5"
    ADD CONSTRAINT "dim_target_history_2024_ 5_pkey" PRIMARY KEY (target_history_key, file_date);
ALTER TABLE ONLY public."dim_target_history_2024_ 6"
    ADD CONSTRAINT "dim_target_history_2024_ 6_pkey" PRIMARY KEY (target_history_key, file_date);
ALTER TABLE ONLY public."dim_target_history_2024_ 7"
    ADD CONSTRAINT "dim_target_history_2024_ 7_pkey" PRIMARY KEY (target_history_key, file_date);
ALTER TABLE ONLY public."dim_target_history_2024_ 8"
    ADD CONSTRAINT "dim_target_history_2024_ 8_pkey" PRIMARY KEY (target_history_key, file_date);
ALTER TABLE ONLY public."dim_target_history_2024_ 9"
    ADD CONSTRAINT "dim_target_history_2024_ 9_pkey" PRIMARY KEY (target_history_key, file_date);
ALTER TABLE ONLY public.dim_target_history_2024_10
    ADD CONSTRAINT dim_target_history_2024_10_pkey PRIMARY KEY (target_history_key, file_date);
ALTER TABLE ONLY public.dim_target_history_2024_11
    ADD CONSTRAINT dim_target_history_2024_11_pkey PRIMARY KEY (target_history_key, file_date);
ALTER TABLE ONLY public.dim_target_history_2024_12
    ADD CONSTRAINT dim_target_history_2024_12_pkey PRIMARY KEY (target_history_key, file_date);
ALTER TABLE ONLY public."dim_target_history_2025_ 1"
    ADD CONSTRAINT "dim_target_history_2025_ 1_pkey" PRIMARY KEY (target_history_key, file_date);
ALTER TABLE ONLY public."dim_target_history_2025_ 2"
    ADD CONSTRAINT "dim_target_history_2025_ 2_pkey" PRIMARY KEY (target_history_key, file_date);
ALTER TABLE ONLY public."dim_target_history_2025_ 3"
    ADD CONSTRAINT "dim_target_history_2025_ 3_pkey" PRIMARY KEY (target_history_key, file_date);
ALTER TABLE ONLY public."dim_target_history_2025_ 4"
    ADD CONSTRAINT "dim_target_history_2025_ 4_pkey" PRIMARY KEY (target_history_key, file_date);
ALTER TABLE ONLY public."dim_target_history_2025_ 5"
    ADD CONSTRAINT "dim_target_history_2025_ 5_pkey" PRIMARY KEY (target_history_key, file_date);
ALTER TABLE ONLY public."dim_target_history_2025_ 6"
    ADD CONSTRAINT "dim_target_history_2025_ 6_pkey" PRIMARY KEY (target_history_key, file_date);
ALTER TABLE ONLY public."dim_target_history_2025_ 7"
    ADD CONSTRAINT "dim_target_history_2025_ 7_pkey" PRIMARY KEY (target_history_key, file_date);
ALTER TABLE ONLY public."dim_target_history_2025_ 8"
    ADD CONSTRAINT "dim_target_history_2025_ 8_pkey" PRIMARY KEY (target_history_key, file_date);
ALTER TABLE ONLY public."dim_target_history_2025_ 9"
    ADD CONSTRAINT "dim_target_history_2025_ 9_pkey" PRIMARY KEY (target_history_key, file_date);
ALTER TABLE ONLY public.dim_target_history_2025_10
    ADD CONSTRAINT dim_target_history_2025_10_pkey PRIMARY KEY (target_history_key, file_date);
ALTER TABLE ONLY public.dim_target_history_2025_11
    ADD CONSTRAINT dim_target_history_2025_11_pkey PRIMARY KEY (target_history_key, file_date);
ALTER TABLE ONLY public.dim_target_history_2025_12
    ADD CONSTRAINT dim_target_history_2025_12_pkey PRIMARY KEY (target_history_key, file_date);
ALTER TABLE ONLY public.dim_target
    ADD CONSTRAINT dim_target_pkey PRIMARY KEY (target_key);
ALTER TABLE ONLY public.fact_account_balance_history
    ADD CONSTRAINT fact_account_balance_history_new_pkey PRIMARY KEY (history_key, file_date);
ALTER TABLE ONLY public.fact_account_balance_history_2024_01
    ADD CONSTRAINT "fact_account_balance_history_2024_ 1_pkey" PRIMARY KEY (history_key, file_date);
ALTER TABLE ONLY public.fact_account_balance_history_2024_02
    ADD CONSTRAINT "fact_account_balance_history_2024_ 2_pkey" PRIMARY KEY (history_key, file_date);
ALTER TABLE ONLY public.fact_account_balance_history_2024_03
    ADD CONSTRAINT "fact_account_balance_history_2024_ 3_pkey" PRIMARY KEY (history_key, file_date);
ALTER TABLE ONLY public.fact_account_balance_history_2024_04
    ADD CONSTRAINT "fact_account_balance_history_2024_ 4_pkey" PRIMARY KEY (history_key, file_date);
ALTER TABLE ONLY public.fact_account_balance_history_2024_05
    ADD CONSTRAINT "fact_account_balance_history_2024_ 5_pkey" PRIMARY KEY (history_key, file_date);
ALTER TABLE ONLY public.fact_account_balance_history_2024_06
    ADD CONSTRAINT "fact_account_balance_history_2024_ 6_pkey" PRIMARY KEY (history_key, file_date);
ALTER TABLE ONLY public.fact_account_balance_history_2024_07
    ADD CONSTRAINT "fact_account_balance_history_2024_ 7_pkey" PRIMARY KEY (history_key, file_date);
ALTER TABLE ONLY public.fact_account_balance_history_2024_08
    ADD CONSTRAINT "fact_account_balance_history_2024_ 8_pkey" PRIMARY KEY (history_key, file_date);
ALTER TABLE ONLY public.fact_account_balance_history_2024_09
    ADD CONSTRAINT "fact_account_balance_history_2024_ 9_pkey" PRIMARY KEY (history_key, file_date);
ALTER TABLE ONLY public.fact_account_balance_history_2024_10
    ADD CONSTRAINT fact_account_balance_history_2024_10_pkey PRIMARY KEY (history_key, file_date);
ALTER TABLE ONLY public.fact_account_balance_history_2024_11
    ADD CONSTRAINT fact_account_balance_history_2024_11_pkey PRIMARY KEY (history_key, file_date);
ALTER TABLE ONLY public.fact_account_balance_history_2024_12
    ADD CONSTRAINT fact_account_balance_history_2024_12_pkey PRIMARY KEY (history_key, file_date);
ALTER TABLE ONLY public.fact_account_balance_history_2025_01
    ADD CONSTRAINT "fact_account_balance_history_2025_ 1_pkey" PRIMARY KEY (history_key, file_date);
ALTER TABLE ONLY public.fact_account_balance_history_2025_02
    ADD CONSTRAINT "fact_account_balance_history_2025_ 2_pkey" PRIMARY KEY (history_key, file_date);
ALTER TABLE ONLY public.fact_account_balance_history_2025_03
    ADD CONSTRAINT "fact_account_balance_history_2025_ 3_pkey" PRIMARY KEY (history_key, file_date);
ALTER TABLE ONLY public.fact_account_balance_history_2025_04
    ADD CONSTRAINT "fact_account_balance_history_2025_ 4_pkey" PRIMARY KEY (history_key, file_date);
ALTER TABLE ONLY public.fact_account_balance_history_2025_05
    ADD CONSTRAINT "fact_account_balance_history_2025_ 5_pkey" PRIMARY KEY (history_key, file_date);
ALTER TABLE ONLY public.fact_account_balance_history_2025_06
    ADD CONSTRAINT "fact_account_balance_history_2025_ 6_pkey" PRIMARY KEY (history_key, file_date);
ALTER TABLE ONLY public.fact_account_balance_history_2025_07
    ADD CONSTRAINT "fact_account_balance_history_2025_ 7_pkey" PRIMARY KEY (history_key, file_date);
ALTER TABLE ONLY public.fact_account_balance_history_2025_08
    ADD CONSTRAINT "fact_account_balance_history_2025_ 8_pkey" PRIMARY KEY (history_key, file_date);
ALTER TABLE ONLY public.fact_account_balance_history_2025_09
    ADD CONSTRAINT "fact_account_balance_history_2025_ 9_pkey" PRIMARY KEY (history_key, file_date);
ALTER TABLE ONLY public.fact_account_balance_history_2025_10
    ADD CONSTRAINT fact_account_balance_history_2025_10_pkey PRIMARY KEY (history_key, file_date);
ALTER TABLE ONLY public.fact_account_balance_history_2025_11
    ADD CONSTRAINT fact_account_balance_history_2025_11_pkey PRIMARY KEY (history_key, file_date);
ALTER TABLE ONLY public.fact_account_balance_history_2025_12
    ADD CONSTRAINT fact_account_balance_history_2025_12_pkey PRIMARY KEY (history_key, file_date);
ALTER TABLE ONLY public.fact_account_balance
    ADD CONSTRAINT fact_account_balance_pkey PRIMARY KEY (balance_key);
ALTER TABLE ONLY public.fact_class_allocation_history
    ADD CONSTRAINT fact_class_allocation_history_new_pkey PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_class_allocation_history_2024_01
    ADD CONSTRAINT "fact_class_allocation_history_2024_ 1_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_class_allocation_history_2024_02
    ADD CONSTRAINT "fact_class_allocation_history_2024_ 2_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_class_allocation_history_2024_03
    ADD CONSTRAINT "fact_class_allocation_history_2024_ 3_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_class_allocation_history_2024_04
    ADD CONSTRAINT "fact_class_allocation_history_2024_ 4_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_class_allocation_history_2024_05
    ADD CONSTRAINT "fact_class_allocation_history_2024_ 5_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_class_allocation_history_2024_06
    ADD CONSTRAINT "fact_class_allocation_history_2024_ 6_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_class_allocation_history_2024_07
    ADD CONSTRAINT "fact_class_allocation_history_2024_ 7_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_class_allocation_history_2024_08
    ADD CONSTRAINT "fact_class_allocation_history_2024_ 8_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_class_allocation_history_2024_09
    ADD CONSTRAINT "fact_class_allocation_history_2024_ 9_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_class_allocation_history_2024_10
    ADD CONSTRAINT fact_class_allocation_history_2024_10_pkey PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_class_allocation_history_2024_11
    ADD CONSTRAINT fact_class_allocation_history_2024_11_pkey PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_class_allocation_history_2024_12
    ADD CONSTRAINT fact_class_allocation_history_2024_12_pkey PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_class_allocation_history_2025_01
    ADD CONSTRAINT "fact_class_allocation_history_2025_ 1_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_class_allocation_history_2025_02
    ADD CONSTRAINT "fact_class_allocation_history_2025_ 2_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_class_allocation_history_2025_03
    ADD CONSTRAINT "fact_class_allocation_history_2025_ 3_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_class_allocation_history_2025_04
    ADD CONSTRAINT "fact_class_allocation_history_2025_ 4_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_class_allocation_history_2025_05
    ADD CONSTRAINT "fact_class_allocation_history_2025_ 5_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_class_allocation_history_2025_06
    ADD CONSTRAINT "fact_class_allocation_history_2025_ 6_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_class_allocation_history_2025_07
    ADD CONSTRAINT "fact_class_allocation_history_2025_ 7_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_class_allocation_history_2025_08
    ADD CONSTRAINT "fact_class_allocation_history_2025_ 8_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_class_allocation_history_2025_09
    ADD CONSTRAINT "fact_class_allocation_history_2025_ 9_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_class_allocation_history_2025_10
    ADD CONSTRAINT fact_class_allocation_history_2025_10_pkey PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_class_allocation_history_2025_11
    ADD CONSTRAINT fact_class_allocation_history_2025_11_pkey PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_class_allocation_history_2025_12
    ADD CONSTRAINT fact_class_allocation_history_2025_12_pkey PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_class_allocation
    ADD CONSTRAINT fact_class_allocation_pkey PRIMARY KEY (allocation_key);
ALTER TABLE ONLY public.fact_position_holding_history
    ADD CONSTRAINT fact_position_holding_history_new_pkey PRIMARY KEY (position_history_key, file_date);
ALTER TABLE ONLY public.fact_position_holding_history_2024_01
    ADD CONSTRAINT "fact_position_holding_history_2024_ 1_pkey" PRIMARY KEY (position_history_key, file_date);
ALTER TABLE ONLY public.fact_position_holding_history_2024_02
    ADD CONSTRAINT "fact_position_holding_history_2024_ 2_pkey" PRIMARY KEY (position_history_key, file_date);
ALTER TABLE ONLY public.fact_position_holding_history_2024_03
    ADD CONSTRAINT "fact_position_holding_history_2024_ 3_pkey" PRIMARY KEY (position_history_key, file_date);
ALTER TABLE ONLY public.fact_position_holding_history_2024_04
    ADD CONSTRAINT "fact_position_holding_history_2024_ 4_pkey" PRIMARY KEY (position_history_key, file_date);
ALTER TABLE ONLY public.fact_position_holding_history_2024_05
    ADD CONSTRAINT "fact_position_holding_history_2024_ 5_pkey" PRIMARY KEY (position_history_key, file_date);
ALTER TABLE ONLY public.fact_position_holding_history_2024_06
    ADD CONSTRAINT "fact_position_holding_history_2024_ 6_pkey" PRIMARY KEY (position_history_key, file_date);
ALTER TABLE ONLY public.fact_position_holding_history_2024_07
    ADD CONSTRAINT "fact_position_holding_history_2024_ 7_pkey" PRIMARY KEY (position_history_key, file_date);
ALTER TABLE ONLY public.fact_position_holding_history_2024_08
    ADD CONSTRAINT "fact_position_holding_history_2024_ 8_pkey" PRIMARY KEY (position_history_key, file_date);
ALTER TABLE ONLY public.fact_position_holding_history_2024_09
    ADD CONSTRAINT "fact_position_holding_history_2024_ 9_pkey" PRIMARY KEY (position_history_key, file_date);
ALTER TABLE ONLY public.fact_position_holding_history_2024_10
    ADD CONSTRAINT fact_position_holding_history_2024_10_pkey PRIMARY KEY (position_history_key, file_date);
ALTER TABLE ONLY public.fact_position_holding_history_2024_11
    ADD CONSTRAINT fact_position_holding_history_2024_11_pkey PRIMARY KEY (position_history_key, file_date);
ALTER TABLE ONLY public.fact_position_holding_history_2024_12
    ADD CONSTRAINT fact_position_holding_history_2024_12_pkey PRIMARY KEY (position_history_key, file_date);
ALTER TABLE ONLY public.fact_position_holding_history_2025_01
    ADD CONSTRAINT "fact_position_holding_history_2025_ 1_pkey" PRIMARY KEY (position_history_key, file_date);
ALTER TABLE ONLY public.fact_position_holding_history_2025_02
    ADD CONSTRAINT "fact_position_holding_history_2025_ 2_pkey" PRIMARY KEY (position_history_key, file_date);
ALTER TABLE ONLY public.fact_position_holding_history_2025_03
    ADD CONSTRAINT "fact_position_holding_history_2025_ 3_pkey" PRIMARY KEY (position_history_key, file_date);
ALTER TABLE ONLY public.fact_position_holding_history_2025_04
    ADD CONSTRAINT "fact_position_holding_history_2025_ 4_pkey" PRIMARY KEY (position_history_key, file_date);
ALTER TABLE ONLY public.fact_position_holding_history_2025_05
    ADD CONSTRAINT "fact_position_holding_history_2025_ 5_pkey" PRIMARY KEY (position_history_key, file_date);
ALTER TABLE ONLY public.fact_position_holding_history_2025_06
    ADD CONSTRAINT "fact_position_holding_history_2025_ 6_pkey" PRIMARY KEY (position_history_key, file_date);
ALTER TABLE ONLY public.fact_position_holding_history_2025_07
    ADD CONSTRAINT "fact_position_holding_history_2025_ 7_pkey" PRIMARY KEY (position_history_key, file_date);
ALTER TABLE ONLY public.fact_position_holding_history_2025_08
    ADD CONSTRAINT "fact_position_holding_history_2025_ 8_pkey" PRIMARY KEY (position_history_key, file_date);
ALTER TABLE ONLY public.fact_position_holding_history_2025_09
    ADD CONSTRAINT "fact_position_holding_history_2025_ 9_pkey" PRIMARY KEY (position_history_key, file_date);
ALTER TABLE ONLY public.fact_position_holding_history_2025_10
    ADD CONSTRAINT fact_position_holding_history_2025_10_pkey PRIMARY KEY (position_history_key, file_date);
ALTER TABLE ONLY public.fact_position_holding_history_2025_11
    ADD CONSTRAINT fact_position_holding_history_2025_11_pkey PRIMARY KEY (position_history_key, file_date);
ALTER TABLE ONLY public.fact_position_holding_history_2025_12
    ADD CONSTRAINT fact_position_holding_history_2025_12_pkey PRIMARY KEY (position_history_key, file_date);
ALTER TABLE ONLY public.fact_position_holding
    ADD CONSTRAINT fact_position_holding_pkey PRIMARY KEY (position_key);
ALTER TABLE ONLY public.fact_segment_allocation_history
    ADD CONSTRAINT fact_segment_allocation_history_new_pkey PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_segment_allocation_history_2024_01
    ADD CONSTRAINT "fact_segment_allocation_history_2024_ 1_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_segment_allocation_history_2024_02
    ADD CONSTRAINT "fact_segment_allocation_history_2024_ 2_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_segment_allocation_history_2024_03
    ADD CONSTRAINT "fact_segment_allocation_history_2024_ 3_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_segment_allocation_history_2024_04
    ADD CONSTRAINT "fact_segment_allocation_history_2024_ 4_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_segment_allocation_history_2024_05
    ADD CONSTRAINT "fact_segment_allocation_history_2024_ 5_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_segment_allocation_history_2024_06
    ADD CONSTRAINT "fact_segment_allocation_history_2024_ 6_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_segment_allocation_history_2024_07
    ADD CONSTRAINT "fact_segment_allocation_history_2024_ 7_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_segment_allocation_history_2024_08
    ADD CONSTRAINT "fact_segment_allocation_history_2024_ 8_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_segment_allocation_history_2024_09
    ADD CONSTRAINT "fact_segment_allocation_history_2024_ 9_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_segment_allocation_history_2024_10
    ADD CONSTRAINT fact_segment_allocation_history_2024_10_pkey PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_segment_allocation_history_2024_11
    ADD CONSTRAINT fact_segment_allocation_history_2024_11_pkey PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_segment_allocation_history_2024_12
    ADD CONSTRAINT fact_segment_allocation_history_2024_12_pkey PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_segment_allocation_history_2025_01
    ADD CONSTRAINT "fact_segment_allocation_history_2025_ 1_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_segment_allocation_history_2025_02
    ADD CONSTRAINT "fact_segment_allocation_history_2025_ 2_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_segment_allocation_history_2025_03
    ADD CONSTRAINT "fact_segment_allocation_history_2025_ 3_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_segment_allocation_history_2025_04
    ADD CONSTRAINT "fact_segment_allocation_history_2025_ 4_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_segment_allocation_history_2025_05
    ADD CONSTRAINT "fact_segment_allocation_history_2025_ 5_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_segment_allocation_history_2025_06
    ADD CONSTRAINT "fact_segment_allocation_history_2025_ 6_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_segment_allocation_history_2025_07
    ADD CONSTRAINT "fact_segment_allocation_history_2025_ 7_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_segment_allocation_history_2025_08
    ADD CONSTRAINT "fact_segment_allocation_history_2025_ 8_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_segment_allocation_history_2025_09
    ADD CONSTRAINT "fact_segment_allocation_history_2025_ 9_pkey" PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_segment_allocation_history_2025_10
    ADD CONSTRAINT fact_segment_allocation_history_2025_10_pkey PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_segment_allocation_history_2025_11
    ADD CONSTRAINT fact_segment_allocation_history_2025_11_pkey PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_segment_allocation_history_2025_12
    ADD CONSTRAINT fact_segment_allocation_history_2025_12_pkey PRIMARY KEY (allocation_history_key, file_date);
ALTER TABLE ONLY public.fact_segment_allocation
    ADD CONSTRAINT fact_segment_allocation_pkey PRIMARY KEY (allocation_key);
ALTER TABLE ONLY public.fact_strategy_assignment_history
    ADD CONSTRAINT fact_strategy_assignment_history_pkey PRIMARY KEY (strategy_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_strategy_assignment_history_2024_01
    ADD CONSTRAINT fact_strategy_assignment_history_2024_01_pkey PRIMARY KEY (strategy_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_strategy_assignment_history_2024_02
    ADD CONSTRAINT fact_strategy_assignment_history_2024_02_pkey PRIMARY KEY (strategy_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_strategy_assignment_history_2024_03
    ADD CONSTRAINT fact_strategy_assignment_history_2024_03_pkey PRIMARY KEY (strategy_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_strategy_assignment_history_2024_04
    ADD CONSTRAINT fact_strategy_assignment_history_2024_04_pkey PRIMARY KEY (strategy_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_strategy_assignment_history_2024_05
    ADD CONSTRAINT fact_strategy_assignment_history_2024_05_pkey PRIMARY KEY (strategy_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_strategy_assignment_history_2024_06
    ADD CONSTRAINT fact_strategy_assignment_history_2024_06_pkey PRIMARY KEY (strategy_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_strategy_assignment_history_2024_07
    ADD CONSTRAINT fact_strategy_assignment_history_2024_07_pkey PRIMARY KEY (strategy_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_strategy_assignment_history_2024_08
    ADD CONSTRAINT fact_strategy_assignment_history_2024_08_pkey PRIMARY KEY (strategy_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_strategy_assignment_history_2024_09
    ADD CONSTRAINT fact_strategy_assignment_history_2024_09_pkey PRIMARY KEY (strategy_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_strategy_assignment_history_2024_10
    ADD CONSTRAINT fact_strategy_assignment_history_2024_10_pkey PRIMARY KEY (strategy_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_strategy_assignment_history_2024_11
    ADD CONSTRAINT fact_strategy_assignment_history_2024_11_pkey PRIMARY KEY (strategy_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_strategy_assignment_history_2024_12
    ADD CONSTRAINT fact_strategy_assignment_history_2024_12_pkey PRIMARY KEY (strategy_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_strategy_assignment_history_2025_01
    ADD CONSTRAINT fact_strategy_assignment_history_2025_01_pkey PRIMARY KEY (strategy_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_strategy_assignment_history_2025_02
    ADD CONSTRAINT fact_strategy_assignment_history_2025_02_pkey PRIMARY KEY (strategy_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_strategy_assignment_history_2025_03
    ADD CONSTRAINT fact_strategy_assignment_history_2025_03_pkey PRIMARY KEY (strategy_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_strategy_assignment_history_2025_04
    ADD CONSTRAINT fact_strategy_assignment_history_2025_04_pkey PRIMARY KEY (strategy_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_strategy_assignment_history_2025_05
    ADD CONSTRAINT fact_strategy_assignment_history_2025_05_pkey PRIMARY KEY (strategy_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_strategy_assignment_history_2025_06
    ADD CONSTRAINT fact_strategy_assignment_history_2025_06_pkey PRIMARY KEY (strategy_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_strategy_assignment_history_2025_07
    ADD CONSTRAINT fact_strategy_assignment_history_2025_07_pkey PRIMARY KEY (strategy_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_strategy_assignment_history_2025_08
    ADD CONSTRAINT fact_strategy_assignment_history_2025_08_pkey PRIMARY KEY (strategy_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_strategy_assignment_history_2025_09
    ADD CONSTRAINT fact_strategy_assignment_history_2025_09_pkey PRIMARY KEY (strategy_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_strategy_assignment_history_2025_10
    ADD CONSTRAINT fact_strategy_assignment_history_2025_10_pkey PRIMARY KEY (strategy_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_strategy_assignment_history_2025_11
    ADD CONSTRAINT fact_strategy_assignment_history_2025_11_pkey PRIMARY KEY (strategy_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_strategy_assignment_history_2025_12
    ADD CONSTRAINT fact_strategy_assignment_history_2025_12_pkey PRIMARY KEY (strategy_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_strategy_assignment
    ADD CONSTRAINT fact_strategy_assignment_pkey PRIMARY KEY (strategy_assignment_key);
ALTER TABLE ONLY public.fact_target_assignment_history
    ADD CONSTRAINT fact_target_assignment_history_pkey PRIMARY KEY (target_assignment_history_key, file_date);
ALTER TABLE ONLY public."fact_target_assignment_history_2024_ 1"
    ADD CONSTRAINT "fact_target_assignment_history_2024_ 1_pkey" PRIMARY KEY (target_assignment_history_key, file_date);
ALTER TABLE ONLY public."fact_target_assignment_history_2024_ 2"
    ADD CONSTRAINT "fact_target_assignment_history_2024_ 2_pkey" PRIMARY KEY (target_assignment_history_key, file_date);
ALTER TABLE ONLY public."fact_target_assignment_history_2024_ 3"
    ADD CONSTRAINT "fact_target_assignment_history_2024_ 3_pkey" PRIMARY KEY (target_assignment_history_key, file_date);
ALTER TABLE ONLY public."fact_target_assignment_history_2024_ 4"
    ADD CONSTRAINT "fact_target_assignment_history_2024_ 4_pkey" PRIMARY KEY (target_assignment_history_key, file_date);
ALTER TABLE ONLY public."fact_target_assignment_history_2024_ 5"
    ADD CONSTRAINT "fact_target_assignment_history_2024_ 5_pkey" PRIMARY KEY (target_assignment_history_key, file_date);
ALTER TABLE ONLY public."fact_target_assignment_history_2024_ 6"
    ADD CONSTRAINT "fact_target_assignment_history_2024_ 6_pkey" PRIMARY KEY (target_assignment_history_key, file_date);
ALTER TABLE ONLY public."fact_target_assignment_history_2024_ 7"
    ADD CONSTRAINT "fact_target_assignment_history_2024_ 7_pkey" PRIMARY KEY (target_assignment_history_key, file_date);
ALTER TABLE ONLY public."fact_target_assignment_history_2024_ 8"
    ADD CONSTRAINT "fact_target_assignment_history_2024_ 8_pkey" PRIMARY KEY (target_assignment_history_key, file_date);
ALTER TABLE ONLY public."fact_target_assignment_history_2024_ 9"
    ADD CONSTRAINT "fact_target_assignment_history_2024_ 9_pkey" PRIMARY KEY (target_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_target_assignment_history_2024_10
    ADD CONSTRAINT fact_target_assignment_history_2024_10_pkey PRIMARY KEY (target_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_target_assignment_history_2024_11
    ADD CONSTRAINT fact_target_assignment_history_2024_11_pkey PRIMARY KEY (target_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_target_assignment_history_2024_12
    ADD CONSTRAINT fact_target_assignment_history_2024_12_pkey PRIMARY KEY (target_assignment_history_key, file_date);
ALTER TABLE ONLY public."fact_target_assignment_history_2025_ 1"
    ADD CONSTRAINT "fact_target_assignment_history_2025_ 1_pkey" PRIMARY KEY (target_assignment_history_key, file_date);
ALTER TABLE ONLY public."fact_target_assignment_history_2025_ 2"
    ADD CONSTRAINT "fact_target_assignment_history_2025_ 2_pkey" PRIMARY KEY (target_assignment_history_key, file_date);
ALTER TABLE ONLY public."fact_target_assignment_history_2025_ 3"
    ADD CONSTRAINT "fact_target_assignment_history_2025_ 3_pkey" PRIMARY KEY (target_assignment_history_key, file_date);
ALTER TABLE ONLY public."fact_target_assignment_history_2025_ 4"
    ADD CONSTRAINT "fact_target_assignment_history_2025_ 4_pkey" PRIMARY KEY (target_assignment_history_key, file_date);
ALTER TABLE ONLY public."fact_target_assignment_history_2025_ 5"
    ADD CONSTRAINT "fact_target_assignment_history_2025_ 5_pkey" PRIMARY KEY (target_assignment_history_key, file_date);
ALTER TABLE ONLY public."fact_target_assignment_history_2025_ 6"
    ADD CONSTRAINT "fact_target_assignment_history_2025_ 6_pkey" PRIMARY KEY (target_assignment_history_key, file_date);
ALTER TABLE ONLY public."fact_target_assignment_history_2025_ 7"
    ADD CONSTRAINT "fact_target_assignment_history_2025_ 7_pkey" PRIMARY KEY (target_assignment_history_key, file_date);
ALTER TABLE ONLY public."fact_target_assignment_history_2025_ 8"
    ADD CONSTRAINT "fact_target_assignment_history_2025_ 8_pkey" PRIMARY KEY (target_assignment_history_key, file_date);
ALTER TABLE ONLY public."fact_target_assignment_history_2025_ 9"
    ADD CONSTRAINT "fact_target_assignment_history_2025_ 9_pkey" PRIMARY KEY (target_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_target_assignment_history_2025_10
    ADD CONSTRAINT fact_target_assignment_history_2025_10_pkey PRIMARY KEY (target_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_target_assignment_history_2025_11
    ADD CONSTRAINT fact_target_assignment_history_2025_11_pkey PRIMARY KEY (target_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_target_assignment_history_2025_12
    ADD CONSTRAINT fact_target_assignment_history_2025_12_pkey PRIMARY KEY (target_assignment_history_key, file_date);
ALTER TABLE ONLY public.fact_target_assignment
    ADD CONSTRAINT fact_target_assignment_pkey PRIMARY KEY (target_assignment_key);
ALTER TABLE ONLY public.fact_target_component_history
    ADD CONSTRAINT fact_target_component_history_pkey PRIMARY KEY (target_component_history_key, file_date);
ALTER TABLE ONLY public."fact_target_component_history_2024_ 1"
    ADD CONSTRAINT "fact_target_component_history_2024_ 1_pkey" PRIMARY KEY (target_component_history_key, file_date);
ALTER TABLE ONLY public."fact_target_component_history_2024_ 2"
    ADD CONSTRAINT "fact_target_component_history_2024_ 2_pkey" PRIMARY KEY (target_component_history_key, file_date);
ALTER TABLE ONLY public."fact_target_component_history_2024_ 3"
    ADD CONSTRAINT "fact_target_component_history_2024_ 3_pkey" PRIMARY KEY (target_component_history_key, file_date);
ALTER TABLE ONLY public."fact_target_component_history_2024_ 4"
    ADD CONSTRAINT "fact_target_component_history_2024_ 4_pkey" PRIMARY KEY (target_component_history_key, file_date);
ALTER TABLE ONLY public."fact_target_component_history_2024_ 5"
    ADD CONSTRAINT "fact_target_component_history_2024_ 5_pkey" PRIMARY KEY (target_component_history_key, file_date);
ALTER TABLE ONLY public."fact_target_component_history_2024_ 6"
    ADD CONSTRAINT "fact_target_component_history_2024_ 6_pkey" PRIMARY KEY (target_component_history_key, file_date);
ALTER TABLE ONLY public."fact_target_component_history_2024_ 7"
    ADD CONSTRAINT "fact_target_component_history_2024_ 7_pkey" PRIMARY KEY (target_component_history_key, file_date);
ALTER TABLE ONLY public."fact_target_component_history_2024_ 8"
    ADD CONSTRAINT "fact_target_component_history_2024_ 8_pkey" PRIMARY KEY (target_component_history_key, file_date);
ALTER TABLE ONLY public."fact_target_component_history_2024_ 9"
    ADD CONSTRAINT "fact_target_component_history_2024_ 9_pkey" PRIMARY KEY (target_component_history_key, file_date);
ALTER TABLE ONLY public.fact_target_component_history_2024_10
    ADD CONSTRAINT fact_target_component_history_2024_10_pkey PRIMARY KEY (target_component_history_key, file_date);
ALTER TABLE ONLY public.fact_target_component_history_2024_11
    ADD CONSTRAINT fact_target_component_history_2024_11_pkey PRIMARY KEY (target_component_history_key, file_date);
ALTER TABLE ONLY public.fact_target_component_history_2024_12
    ADD CONSTRAINT fact_target_component_history_2024_12_pkey PRIMARY KEY (target_component_history_key, file_date);
ALTER TABLE ONLY public."fact_target_component_history_2025_ 1"
    ADD CONSTRAINT "fact_target_component_history_2025_ 1_pkey" PRIMARY KEY (target_component_history_key, file_date);
ALTER TABLE ONLY public."fact_target_component_history_2025_ 2"
    ADD CONSTRAINT "fact_target_component_history_2025_ 2_pkey" PRIMARY KEY (target_component_history_key, file_date);
ALTER TABLE ONLY public."fact_target_component_history_2025_ 3"
    ADD CONSTRAINT "fact_target_component_history_2025_ 3_pkey" PRIMARY KEY (target_component_history_key, file_date);
ALTER TABLE ONLY public."fact_target_component_history_2025_ 4"
    ADD CONSTRAINT "fact_target_component_history_2025_ 4_pkey" PRIMARY KEY (target_component_history_key, file_date);
ALTER TABLE ONLY public."fact_target_component_history_2025_ 5"
    ADD CONSTRAINT "fact_target_component_history_2025_ 5_pkey" PRIMARY KEY (target_component_history_key, file_date);
ALTER TABLE ONLY public."fact_target_component_history_2025_ 6"
    ADD CONSTRAINT "fact_target_component_history_2025_ 6_pkey" PRIMARY KEY (target_component_history_key, file_date);
ALTER TABLE ONLY public."fact_target_component_history_2025_ 7"
    ADD CONSTRAINT "fact_target_component_history_2025_ 7_pkey" PRIMARY KEY (target_component_history_key, file_date);
ALTER TABLE ONLY public."fact_target_component_history_2025_ 8"
    ADD CONSTRAINT "fact_target_component_history_2025_ 8_pkey" PRIMARY KEY (target_component_history_key, file_date);
ALTER TABLE ONLY public."fact_target_component_history_2025_ 9"
    ADD CONSTRAINT "fact_target_component_history_2025_ 9_pkey" PRIMARY KEY (target_component_history_key, file_date);
ALTER TABLE ONLY public.fact_target_component_history_2025_10
    ADD CONSTRAINT fact_target_component_history_2025_10_pkey PRIMARY KEY (target_component_history_key, file_date);
ALTER TABLE ONLY public.fact_target_component_history_2025_11
    ADD CONSTRAINT fact_target_component_history_2025_11_pkey PRIMARY KEY (target_component_history_key, file_date);
ALTER TABLE ONLY public.fact_target_component_history_2025_12
    ADD CONSTRAINT fact_target_component_history_2025_12_pkey PRIMARY KEY (target_component_history_key, file_date);
ALTER TABLE ONLY public.fact_target_component
    ADD CONSTRAINT fact_target_component_pkey PRIMARY KEY (target_component_key);
ALTER TABLE ONLY public.fact_transaction
    ADD CONSTRAINT fact_transaction_new_pkey PRIMARY KEY (txn_key, file_date);
ALTER TABLE ONLY public.fact_transaction_2024_01
    ADD CONSTRAINT "fact_transaction_2024_ 1_pkey" PRIMARY KEY (txn_key, file_date);
ALTER TABLE ONLY public.fact_transaction_2024_02
    ADD CONSTRAINT "fact_transaction_2024_ 2_pkey" PRIMARY KEY (txn_key, file_date);
ALTER TABLE ONLY public.fact_transaction_2024_03
    ADD CONSTRAINT "fact_transaction_2024_ 3_pkey" PRIMARY KEY (txn_key, file_date);
ALTER TABLE ONLY public.fact_transaction_2024_04
    ADD CONSTRAINT "fact_transaction_2024_ 4_pkey" PRIMARY KEY (txn_key, file_date);
ALTER TABLE ONLY public.fact_transaction_2024_05
    ADD CONSTRAINT "fact_transaction_2024_ 5_pkey" PRIMARY KEY (txn_key, file_date);
ALTER TABLE ONLY public.fact_transaction_2024_06
    ADD CONSTRAINT "fact_transaction_2024_ 6_pkey" PRIMARY KEY (txn_key, file_date);
ALTER TABLE ONLY public.fact_transaction_2024_07
    ADD CONSTRAINT "fact_transaction_2024_ 7_pkey" PRIMARY KEY (txn_key, file_date);
ALTER TABLE ONLY public.fact_transaction_2024_08
    ADD CONSTRAINT "fact_transaction_2024_ 8_pkey" PRIMARY KEY (txn_key, file_date);
ALTER TABLE ONLY public.fact_transaction_2024_09
    ADD CONSTRAINT "fact_transaction_2024_ 9_pkey" PRIMARY KEY (txn_key, file_date);
ALTER TABLE ONLY public.fact_transaction_2024_10
    ADD CONSTRAINT fact_transaction_2024_10_pkey PRIMARY KEY (txn_key, file_date);
ALTER TABLE ONLY public.fact_transaction_2024_11
    ADD CONSTRAINT fact_transaction_2024_11_pkey PRIMARY KEY (txn_key, file_date);
ALTER TABLE ONLY public.fact_transaction_2024_12
    ADD CONSTRAINT fact_transaction_2024_12_pkey PRIMARY KEY (txn_key, file_date);
ALTER TABLE ONLY public.fact_transaction_2025_01
    ADD CONSTRAINT "fact_transaction_2025_ 1_pkey" PRIMARY KEY (txn_key, file_date);
ALTER TABLE ONLY public.fact_transaction_2025_02
    ADD CONSTRAINT "fact_transaction_2025_ 2_pkey" PRIMARY KEY (txn_key, file_date);
ALTER TABLE ONLY public.fact_transaction_2025_03
    ADD CONSTRAINT "fact_transaction_2025_ 3_pkey" PRIMARY KEY (txn_key, file_date);
ALTER TABLE ONLY public.fact_transaction_2025_04
    ADD CONSTRAINT "fact_transaction_2025_ 4_pkey" PRIMARY KEY (txn_key, file_date);
ALTER TABLE ONLY public.fact_transaction_2025_05
    ADD CONSTRAINT "fact_transaction_2025_ 5_pkey" PRIMARY KEY (txn_key, file_date);
ALTER TABLE ONLY public.fact_transaction_2025_06
    ADD CONSTRAINT "fact_transaction_2025_ 6_pkey" PRIMARY KEY (txn_key, file_date);
ALTER TABLE ONLY public.fact_transaction_2025_07
    ADD CONSTRAINT "fact_transaction_2025_ 7_pkey" PRIMARY KEY (txn_key, file_date);
ALTER TABLE ONLY public.fact_transaction_2025_08
    ADD CONSTRAINT "fact_transaction_2025_ 8_pkey" PRIMARY KEY (txn_key, file_date);
ALTER TABLE ONLY public.fact_transaction_2025_09
    ADD CONSTRAINT "fact_transaction_2025_ 9_pkey" PRIMARY KEY (txn_key, file_date);
ALTER TABLE ONLY public.fact_transaction_2025_10
    ADD CONSTRAINT fact_transaction_2025_10_pkey PRIMARY KEY (txn_key, file_date);
ALTER TABLE ONLY public.fact_transaction_2025_11
    ADD CONSTRAINT fact_transaction_2025_11_pkey PRIMARY KEY (txn_key, file_date);
ALTER TABLE ONLY public.fact_transaction_2025_12
    ADD CONSTRAINT fact_transaction_2025_12_pkey PRIMARY KEY (txn_key, file_date);
ALTER TABLE ONLY public.dim_security_history
    ADD CONSTRAINT pk_dim_security_history PRIMARY KEY (security_history_key);
ALTER TABLE ONLY public.fact_account_balance
    ADD CONSTRAINT unique_account_date UNIQUE (account_key, file_date);
ALTER TABLE ONLY public.dim_account
    ADD CONSTRAINT unique_account_number UNIQUE (account_number, blackdiamond_account_id);
ALTER TABLE ONLY public.dim_security
    ADD CONSTRAINT unique_asset UNIQUE (blackdiamond_asset_id);
ALTER TABLE ONLY public.dim_portfolio
    ADD CONSTRAINT unique_portfolio_id UNIQUE (blackdiamond_portfolio_id);
ALTER TABLE ONLY public.dim_strategies
    ADD CONSTRAINT uq_dim_strategies_name UNIQUE (strategy_name, file_date);
ALTER TABLE ONLY public.dim_strategies
    ADD CONSTRAINT uq_dim_strategies_name_only UNIQUE (strategy_name);
ALTER TABLE ONLY public.dim_target
    ADD CONSTRAINT uq_dim_target_id UNIQUE (blackdiamond_target_id);
ALTER TABLE ONLY public.fact_strategy_assignment
    ADD CONSTRAINT uq_fsa_date UNIQUE (strategy_key, account_key, file_date);
ALTER TABLE ONLY public.fact_target_assignment
    ADD CONSTRAINT uq_fta_date UNIQUE (target_key, account_key, portfolio_key, file_date);
ALTER TABLE ONLY public.fact_target_component
    ADD CONSTRAINT uq_ftc_date UNIQUE (target_key, security_key, file_date);
CREATE INDEX idx_fabh_account_key_file_date ON ONLY public.fact_account_balance_history USING btree (account_key, file_date);
CREATE INDEX fact_account_balance_history_2024_01_account_key_file_date_idx ON public.fact_account_balance_history_2024_01 USING btree (account_key, file_date);
CREATE INDEX fact_account_balance_history_2024_02_account_key_file_date_idx ON public.fact_account_balance_history_2024_02 USING btree (account_key, file_date);
CREATE INDEX fact_account_balance_history_2024_03_account_key_file_date_idx ON public.fact_account_balance_history_2024_03 USING btree (account_key, file_date);
CREATE INDEX fact_account_balance_history_2024_04_account_key_file_date_idx ON public.fact_account_balance_history_2024_04 USING btree (account_key, file_date);
CREATE INDEX fact_account_balance_history_2024_05_account_key_file_date_idx ON public.fact_account_balance_history_2024_05 USING btree (account_key, file_date);
CREATE INDEX fact_account_balance_history_2024_06_account_key_file_date_idx ON public.fact_account_balance_history_2024_06 USING btree (account_key, file_date);
CREATE INDEX fact_account_balance_history_2024_07_account_key_file_date_idx ON public.fact_account_balance_history_2024_07 USING btree (account_key, file_date);
CREATE INDEX fact_account_balance_history_2024_08_account_key_file_date_idx ON public.fact_account_balance_history_2024_08 USING btree (account_key, file_date);
CREATE INDEX fact_account_balance_history_2024_09_account_key_file_date_idx ON public.fact_account_balance_history_2024_09 USING btree (account_key, file_date);
CREATE INDEX fact_account_balance_history_2024_10_account_key_file_date_idx ON public.fact_account_balance_history_2024_10 USING btree (account_key, file_date);
CREATE INDEX fact_account_balance_history_2024_11_account_key_file_date_idx ON public.fact_account_balance_history_2024_11 USING btree (account_key, file_date);
CREATE INDEX fact_account_balance_history_2024_12_account_key_file_date_idx ON public.fact_account_balance_history_2024_12 USING btree (account_key, file_date);
CREATE INDEX fact_account_balance_history_2025_01_account_key_file_date_idx ON public.fact_account_balance_history_2025_01 USING btree (account_key, file_date);
CREATE INDEX fact_account_balance_history_2025_02_account_key_file_date_idx ON public.fact_account_balance_history_2025_02 USING btree (account_key, file_date);
CREATE INDEX fact_account_balance_history_2025_03_account_key_file_date_idx ON public.fact_account_balance_history_2025_03 USING btree (account_key, file_date);
CREATE INDEX fact_account_balance_history_2025_04_account_key_file_date_idx ON public.fact_account_balance_history_2025_04 USING btree (account_key, file_date);
CREATE INDEX fact_account_balance_history_2025_05_account_key_file_date_idx ON public.fact_account_balance_history_2025_05 USING btree (account_key, file_date);
CREATE INDEX fact_account_balance_history_2025_06_account_key_file_date_idx ON public.fact_account_balance_history_2025_06 USING btree (account_key, file_date);
CREATE INDEX fact_account_balance_history_2025_07_account_key_file_date_idx ON public.fact_account_balance_history_2025_07 USING btree (account_key, file_date);
CREATE INDEX fact_account_balance_history_2025_08_account_key_file_date_idx ON public.fact_account_balance_history_2025_08 USING btree (account_key, file_date);
CREATE INDEX fact_account_balance_history_2025_09_account_key_file_date_idx ON public.fact_account_balance_history_2025_09 USING btree (account_key, file_date);
CREATE INDEX fact_account_balance_history_2025_10_account_key_file_date_idx ON public.fact_account_balance_history_2025_10 USING btree (account_key, file_date);
CREATE INDEX fact_account_balance_history_2025_11_account_key_file_date_idx ON public.fact_account_balance_history_2025_11 USING btree (account_key, file_date);
CREATE INDEX fact_account_balance_history_2025_12_account_key_file_date_idx ON public.fact_account_balance_history_2025_12 USING btree (account_key, file_date);
CREATE INDEX idx_ft_accountkey_tradedate ON ONLY public.fact_transaction USING btree (account_key, trade_date);
CREATE INDEX fact_transaction_2024_01_account_key_trade_date_idx ON public.fact_transaction_2024_01 USING btree (account_key, trade_date);
CREATE INDEX idx_ft_transaction_type_trgm ON ONLY public.fact_transaction USING gin (lower(transaction_type) public.gin_trgm_ops);
CREATE INDEX fact_transaction_2024_01_lower_idx ON public.fact_transaction_2024_01 USING gin (lower(transaction_type) public.gin_trgm_ops);
CREATE INDEX idx_ft_transaction_id ON ONLY public.fact_transaction USING btree (transaction_id);
CREATE INDEX fact_transaction_2024_01_transaction_id_idx ON public.fact_transaction_2024_01 USING btree (transaction_id);
CREATE INDEX fact_transaction_2024_02_account_key_trade_date_idx ON public.fact_transaction_2024_02 USING btree (account_key, trade_date);
CREATE INDEX fact_transaction_2024_02_lower_idx ON public.fact_transaction_2024_02 USING gin (lower(transaction_type) public.gin_trgm_ops);
CREATE INDEX fact_transaction_2024_02_transaction_id_idx ON public.fact_transaction_2024_02 USING btree (transaction_id);
CREATE INDEX fact_transaction_2024_03_account_key_trade_date_idx ON public.fact_transaction_2024_03 USING btree (account_key, trade_date);
CREATE INDEX fact_transaction_2024_03_lower_idx ON public.fact_transaction_2024_03 USING gin (lower(transaction_type) public.gin_trgm_ops);
CREATE INDEX fact_transaction_2024_03_transaction_id_idx ON public.fact_transaction_2024_03 USING btree (transaction_id);
CREATE INDEX fact_transaction_2024_04_account_key_trade_date_idx ON public.fact_transaction_2024_04 USING btree (account_key, trade_date);
CREATE INDEX fact_transaction_2024_04_lower_idx ON public.fact_transaction_2024_04 USING gin (lower(transaction_type) public.gin_trgm_ops);
CREATE INDEX fact_transaction_2024_04_transaction_id_idx ON public.fact_transaction_2024_04 USING btree (transaction_id);
CREATE INDEX fact_transaction_2024_05_account_key_trade_date_idx ON public.fact_transaction_2024_05 USING btree (account_key, trade_date);
CREATE INDEX fact_transaction_2024_05_lower_idx ON public.fact_transaction_2024_05 USING gin (lower(transaction_type) public.gin_trgm_ops);
CREATE INDEX fact_transaction_2024_05_transaction_id_idx ON public.fact_transaction_2024_05 USING btree (transaction_id);
CREATE INDEX fact_transaction_2024_06_account_key_trade_date_idx ON public.fact_transaction_2024_06 USING btree (account_key, trade_date);
CREATE INDEX fact_transaction_2024_06_lower_idx ON public.fact_transaction_2024_06 USING gin (lower(transaction_type) public.gin_trgm_ops);
CREATE INDEX fact_transaction_2024_06_transaction_id_idx ON public.fact_transaction_2024_06 USING btree (transaction_id);
CREATE INDEX fact_transaction_2024_07_account_key_trade_date_idx ON public.fact_transaction_2024_07 USING btree (account_key, trade_date);
CREATE INDEX fact_transaction_2024_07_lower_idx ON public.fact_transaction_2024_07 USING gin (lower(transaction_type) public.gin_trgm_ops);
CREATE INDEX fact_transaction_2024_07_transaction_id_idx ON public.fact_transaction_2024_07 USING btree (transaction_id);
CREATE INDEX fact_transaction_2024_08_account_key_trade_date_idx ON public.fact_transaction_2024_08 USING btree (account_key, trade_date);
CREATE INDEX fact_transaction_2024_08_lower_idx ON public.fact_transaction_2024_08 USING gin (lower(transaction_type) public.gin_trgm_ops);
CREATE INDEX fact_transaction_2024_08_transaction_id_idx ON public.fact_transaction_2024_08 USING btree (transaction_id);
CREATE INDEX fact_transaction_2024_09_account_key_trade_date_idx ON public.fact_transaction_2024_09 USING btree (account_key, trade_date);
CREATE INDEX fact_transaction_2024_09_lower_idx ON public.fact_transaction_2024_09 USING gin (lower(transaction_type) public.gin_trgm_ops);
CREATE INDEX fact_transaction_2024_09_transaction_id_idx ON public.fact_transaction_2024_09 USING btree (transaction_id);
CREATE INDEX fact_transaction_2024_10_account_key_trade_date_idx ON public.fact_transaction_2024_10 USING btree (account_key, trade_date);
CREATE INDEX fact_transaction_2024_10_lower_idx ON public.fact_transaction_2024_10 USING gin (lower(transaction_type) public.gin_trgm_ops);
CREATE INDEX fact_transaction_2024_10_transaction_id_idx ON public.fact_transaction_2024_10 USING btree (transaction_id);
CREATE INDEX fact_transaction_2024_11_account_key_trade_date_idx ON public.fact_transaction_2024_11 USING btree (account_key, trade_date);
CREATE INDEX fact_transaction_2024_11_lower_idx ON public.fact_transaction_2024_11 USING gin (lower(transaction_type) public.gin_trgm_ops);
CREATE INDEX fact_transaction_2024_11_transaction_id_idx ON public.fact_transaction_2024_11 USING btree (transaction_id);
CREATE INDEX fact_transaction_2024_12_account_key_trade_date_idx ON public.fact_transaction_2024_12 USING btree (account_key, trade_date);
CREATE INDEX fact_transaction_2024_12_lower_idx ON public.fact_transaction_2024_12 USING gin (lower(transaction_type) public.gin_trgm_ops);
CREATE INDEX fact_transaction_2024_12_transaction_id_idx ON public.fact_transaction_2024_12 USING btree (transaction_id);
CREATE INDEX fact_transaction_2025_01_account_key_trade_date_idx ON public.fact_transaction_2025_01 USING btree (account_key, trade_date);
CREATE INDEX fact_transaction_2025_01_lower_idx ON public.fact_transaction_2025_01 USING gin (lower(transaction_type) public.gin_trgm_ops);
CREATE INDEX fact_transaction_2025_01_transaction_id_idx ON public.fact_transaction_2025_01 USING btree (transaction_id);
CREATE INDEX fact_transaction_2025_02_account_key_trade_date_idx ON public.fact_transaction_2025_02 USING btree (account_key, trade_date);
CREATE INDEX fact_transaction_2025_02_lower_idx ON public.fact_transaction_2025_02 USING gin (lower(transaction_type) public.gin_trgm_ops);
CREATE INDEX fact_transaction_2025_02_transaction_id_idx ON public.fact_transaction_2025_02 USING btree (transaction_id);
CREATE INDEX fact_transaction_2025_03_account_key_trade_date_idx ON public.fact_transaction_2025_03 USING btree (account_key, trade_date);
CREATE INDEX fact_transaction_2025_03_lower_idx ON public.fact_transaction_2025_03 USING gin (lower(transaction_type) public.gin_trgm_ops);
CREATE INDEX fact_transaction_2025_03_transaction_id_idx ON public.fact_transaction_2025_03 USING btree (transaction_id);
CREATE INDEX fact_transaction_2025_04_account_key_trade_date_idx ON public.fact_transaction_2025_04 USING btree (account_key, trade_date);
CREATE INDEX fact_transaction_2025_04_lower_idx ON public.fact_transaction_2025_04 USING gin (lower(transaction_type) public.gin_trgm_ops);
CREATE INDEX fact_transaction_2025_04_transaction_id_idx ON public.fact_transaction_2025_04 USING btree (transaction_id);
CREATE INDEX fact_transaction_2025_05_account_key_trade_date_idx ON public.fact_transaction_2025_05 USING btree (account_key, trade_date);
CREATE INDEX fact_transaction_2025_05_lower_idx ON public.fact_transaction_2025_05 USING gin (lower(transaction_type) public.gin_trgm_ops);
CREATE INDEX fact_transaction_2025_05_transaction_id_idx ON public.fact_transaction_2025_05 USING btree (transaction_id);
CREATE INDEX fact_transaction_2025_06_account_key_trade_date_idx ON public.fact_transaction_2025_06 USING btree (account_key, trade_date);
CREATE INDEX fact_transaction_2025_06_lower_idx ON public.fact_transaction_2025_06 USING gin (lower(transaction_type) public.gin_trgm_ops);
CREATE INDEX fact_transaction_2025_06_transaction_id_idx ON public.fact_transaction_2025_06 USING btree (transaction_id);
CREATE INDEX fact_transaction_2025_07_account_key_trade_date_idx ON public.fact_transaction_2025_07 USING btree (account_key, trade_date);
CREATE INDEX fact_transaction_2025_07_lower_idx ON public.fact_transaction_2025_07 USING gin (lower(transaction_type) public.gin_trgm_ops);
CREATE INDEX fact_transaction_2025_07_transaction_id_idx ON public.fact_transaction_2025_07 USING btree (transaction_id);
CREATE INDEX fact_transaction_2025_08_account_key_trade_date_idx ON public.fact_transaction_2025_08 USING btree (account_key, trade_date);
CREATE INDEX fact_transaction_2025_08_lower_idx ON public.fact_transaction_2025_08 USING gin (lower(transaction_type) public.gin_trgm_ops);
CREATE INDEX fact_transaction_2025_08_transaction_id_idx ON public.fact_transaction_2025_08 USING btree (transaction_id);
CREATE INDEX fact_transaction_2025_09_account_key_trade_date_idx ON public.fact_transaction_2025_09 USING btree (account_key, trade_date);
CREATE INDEX fact_transaction_2025_09_lower_idx ON public.fact_transaction_2025_09 USING gin (lower(transaction_type) public.gin_trgm_ops);
CREATE INDEX fact_transaction_2025_09_transaction_id_idx ON public.fact_transaction_2025_09 USING btree (transaction_id);
CREATE INDEX fact_transaction_2025_10_account_key_trade_date_idx ON public.fact_transaction_2025_10 USING btree (account_key, trade_date);
CREATE INDEX fact_transaction_2025_10_lower_idx ON public.fact_transaction_2025_10 USING gin (lower(transaction_type) public.gin_trgm_ops);
CREATE INDEX fact_transaction_2025_10_transaction_id_idx ON public.fact_transaction_2025_10 USING btree (transaction_id);
CREATE INDEX fact_transaction_2025_11_account_key_trade_date_idx ON public.fact_transaction_2025_11 USING btree (account_key, trade_date);
CREATE INDEX fact_transaction_2025_11_lower_idx ON public.fact_transaction_2025_11 USING gin (lower(transaction_type) public.gin_trgm_ops);
CREATE INDEX fact_transaction_2025_11_transaction_id_idx ON public.fact_transaction_2025_11 USING btree (transaction_id);
CREATE INDEX fact_transaction_2025_12_account_key_trade_date_idx ON public.fact_transaction_2025_12 USING btree (account_key, trade_date);
CREATE INDEX fact_transaction_2025_12_lower_idx ON public.fact_transaction_2025_12 USING gin (lower(transaction_type) public.gin_trgm_ops);
CREATE INDEX fact_transaction_2025_12_transaction_id_idx ON public.fact_transaction_2025_12 USING btree (transaction_id);
CREATE INDEX idx_fab_account_key ON public.fact_account_balance USING btree (account_key);
CREATE INDEX idx_fca_account_key ON public.fact_class_allocation USING btree (account_key);
CREATE INDEX idx_fph_account_key ON public.fact_position_holding USING btree (account_key);
CREATE INDEX idx_fph_market_value_desc ON public.fact_position_holding USING btree (market_value DESC);
CREATE INDEX idx_fph_security_key ON public.fact_position_holding USING btree (security_key);
CREATE INDEX idx_fsa_account_key ON public.fact_segment_allocation USING btree (account_key);
CREATE INDEX ix_fta_acct_date ON public.fact_target_assignment USING btree (account_key, file_date);
CREATE INDEX ix_fta_port_date ON public.fact_target_assignment USING btree (portfolio_key, file_date);
CREATE INDEX ix_ftc_security_date ON public.fact_target_component USING btree (security_key, file_date);
CREATE INDEX ix_ftc_target_date ON public.fact_target_component USING btree (target_key, file_date);
ALTER INDEX public.dim_account_history_new_pkey ATTACH PARTITION public."dim_account_history_2024_ 1_pkey";
ALTER INDEX public.dim_account_history_new_pkey ATTACH PARTITION public."dim_account_history_2024_ 2_pkey";
ALTER INDEX public.dim_account_history_new_pkey ATTACH PARTITION public."dim_account_history_2024_ 3_pkey";
ALTER INDEX public.dim_account_history_new_pkey ATTACH PARTITION public."dim_account_history_2024_ 4_pkey";
ALTER INDEX public.dim_account_history_new_pkey ATTACH PARTITION public."dim_account_history_2024_ 5_pkey";
ALTER INDEX public.dim_account_history_new_pkey ATTACH PARTITION public."dim_account_history_2024_ 6_pkey";
ALTER INDEX public.dim_account_history_new_pkey ATTACH PARTITION public."dim_account_history_2024_ 7_pkey";
ALTER INDEX public.dim_account_history_new_pkey ATTACH PARTITION public."dim_account_history_2024_ 8_pkey";
ALTER INDEX public.dim_account_history_new_pkey ATTACH PARTITION public."dim_account_history_2024_ 9_pkey";
ALTER INDEX public.dim_account_history_new_pkey ATTACH PARTITION public.dim_account_history_2024_10_pkey;
ALTER INDEX public.dim_account_history_new_pkey ATTACH PARTITION public.dim_account_history_2024_11_pkey;
ALTER INDEX public.dim_account_history_new_pkey ATTACH PARTITION public.dim_account_history_2024_12_pkey;
ALTER INDEX public.dim_account_history_new_pkey ATTACH PARTITION public."dim_account_history_2025_ 1_pkey";
ALTER INDEX public.dim_account_history_new_pkey ATTACH PARTITION public."dim_account_history_2025_ 2_pkey";
ALTER INDEX public.dim_account_history_new_pkey ATTACH PARTITION public."dim_account_history_2025_ 3_pkey";
ALTER INDEX public.dim_account_history_new_pkey ATTACH PARTITION public."dim_account_history_2025_ 4_pkey";
ALTER INDEX public.dim_account_history_new_pkey ATTACH PARTITION public."dim_account_history_2025_ 5_pkey";
ALTER INDEX public.dim_account_history_new_pkey ATTACH PARTITION public."dim_account_history_2025_ 6_pkey";
ALTER INDEX public.dim_account_history_new_pkey ATTACH PARTITION public."dim_account_history_2025_ 7_pkey";
ALTER INDEX public.dim_account_history_new_pkey ATTACH PARTITION public."dim_account_history_2025_ 8_pkey";
ALTER INDEX public.dim_account_history_new_pkey ATTACH PARTITION public."dim_account_history_2025_ 9_pkey";
ALTER INDEX public.dim_account_history_new_pkey ATTACH PARTITION public.dim_account_history_2025_10_pkey;
ALTER INDEX public.dim_account_history_new_pkey ATTACH PARTITION public.dim_account_history_2025_11_pkey;
ALTER INDEX public.dim_account_history_new_pkey ATTACH PARTITION public.dim_account_history_2025_12_pkey;
ALTER INDEX public.dim_strategies_history_pkey ATTACH PARTITION public.dim_strategies_history_2024_01_pkey;
ALTER INDEX public.dim_strategies_history_pkey ATTACH PARTITION public.dim_strategies_history_2024_02_pkey;
ALTER INDEX public.dim_strategies_history_pkey ATTACH PARTITION public.dim_strategies_history_2024_03_pkey;
ALTER INDEX public.dim_strategies_history_pkey ATTACH PARTITION public.dim_strategies_history_2024_04_pkey;
ALTER INDEX public.dim_strategies_history_pkey ATTACH PARTITION public.dim_strategies_history_2024_05_pkey;
ALTER INDEX public.dim_strategies_history_pkey ATTACH PARTITION public.dim_strategies_history_2024_06_pkey;
ALTER INDEX public.dim_strategies_history_pkey ATTACH PARTITION public.dim_strategies_history_2024_07_pkey;
ALTER INDEX public.dim_strategies_history_pkey ATTACH PARTITION public.dim_strategies_history_2024_08_pkey;
ALTER INDEX public.dim_strategies_history_pkey ATTACH PARTITION public.dim_strategies_history_2024_09_pkey;
ALTER INDEX public.dim_strategies_history_pkey ATTACH PARTITION public.dim_strategies_history_2024_10_pkey;
ALTER INDEX public.dim_strategies_history_pkey ATTACH PARTITION public.dim_strategies_history_2024_11_pkey;
ALTER INDEX public.dim_strategies_history_pkey ATTACH PARTITION public.dim_strategies_history_2024_12_pkey;
ALTER INDEX public.dim_strategies_history_pkey ATTACH PARTITION public.dim_strategies_history_2025_01_pkey;
ALTER INDEX public.dim_strategies_history_pkey ATTACH PARTITION public.dim_strategies_history_2025_02_pkey;
ALTER INDEX public.dim_strategies_history_pkey ATTACH PARTITION public.dim_strategies_history_2025_03_pkey;
ALTER INDEX public.dim_strategies_history_pkey ATTACH PARTITION public.dim_strategies_history_2025_04_pkey;
ALTER INDEX public.dim_strategies_history_pkey ATTACH PARTITION public.dim_strategies_history_2025_05_pkey;
ALTER INDEX public.dim_strategies_history_pkey ATTACH PARTITION public.dim_strategies_history_2025_06_pkey;
ALTER INDEX public.dim_strategies_history_pkey ATTACH PARTITION public.dim_strategies_history_2025_07_pkey;
ALTER INDEX public.dim_strategies_history_pkey ATTACH PARTITION public.dim_strategies_history_2025_08_pkey;
ALTER INDEX public.dim_strategies_history_pkey ATTACH PARTITION public.dim_strategies_history_2025_09_pkey;
ALTER INDEX public.dim_strategies_history_pkey ATTACH PARTITION public.dim_strategies_history_2025_10_pkey;
ALTER INDEX public.dim_strategies_history_pkey ATTACH PARTITION public.dim_strategies_history_2025_11_pkey;
ALTER INDEX public.dim_strategies_history_pkey ATTACH PARTITION public.dim_strategies_history_2025_12_pkey;
ALTER INDEX public.dim_target_history_pkey ATTACH PARTITION public."dim_target_history_2024_ 1_pkey";
ALTER INDEX public.dim_target_history_pkey ATTACH PARTITION public."dim_target_history_2024_ 2_pkey";
ALTER INDEX public.dim_target_history_pkey ATTACH PARTITION public."dim_target_history_2024_ 3_pkey";
ALTER INDEX public.dim_target_history_pkey ATTACH PARTITION public."dim_target_history_2024_ 4_pkey";
ALTER INDEX public.dim_target_history_pkey ATTACH PARTITION public."dim_target_history_2024_ 5_pkey";
ALTER INDEX public.dim_target_history_pkey ATTACH PARTITION public."dim_target_history_2024_ 6_pkey";
ALTER INDEX public.dim_target_history_pkey ATTACH PARTITION public."dim_target_history_2024_ 7_pkey";
ALTER INDEX public.dim_target_history_pkey ATTACH PARTITION public."dim_target_history_2024_ 8_pkey";
ALTER INDEX public.dim_target_history_pkey ATTACH PARTITION public."dim_target_history_2024_ 9_pkey";
ALTER INDEX public.dim_target_history_pkey ATTACH PARTITION public.dim_target_history_2024_10_pkey;
ALTER INDEX public.dim_target_history_pkey ATTACH PARTITION public.dim_target_history_2024_11_pkey;
ALTER INDEX public.dim_target_history_pkey ATTACH PARTITION public.dim_target_history_2024_12_pkey;
ALTER INDEX public.dim_target_history_pkey ATTACH PARTITION public."dim_target_history_2025_ 1_pkey";
ALTER INDEX public.dim_target_history_pkey ATTACH PARTITION public."dim_target_history_2025_ 2_pkey";
ALTER INDEX public.dim_target_history_pkey ATTACH PARTITION public."dim_target_history_2025_ 3_pkey";
ALTER INDEX public.dim_target_history_pkey ATTACH PARTITION public."dim_target_history_2025_ 4_pkey";
ALTER INDEX public.dim_target_history_pkey ATTACH PARTITION public."dim_target_history_2025_ 5_pkey";
ALTER INDEX public.dim_target_history_pkey ATTACH PARTITION public."dim_target_history_2025_ 6_pkey";
ALTER INDEX public.dim_target_history_pkey ATTACH PARTITION public."dim_target_history_2025_ 7_pkey";
ALTER INDEX public.dim_target_history_pkey ATTACH PARTITION public."dim_target_history_2025_ 8_pkey";
ALTER INDEX public.dim_target_history_pkey ATTACH PARTITION public."dim_target_history_2025_ 9_pkey";
ALTER INDEX public.dim_target_history_pkey ATTACH PARTITION public.dim_target_history_2025_10_pkey;
ALTER INDEX public.dim_target_history_pkey ATTACH PARTITION public.dim_target_history_2025_11_pkey;
ALTER INDEX public.dim_target_history_pkey ATTACH PARTITION public.dim_target_history_2025_12_pkey;
ALTER INDEX public.fact_account_balance_history_new_pkey ATTACH PARTITION public."fact_account_balance_history_2024_ 1_pkey";
ALTER INDEX public.fact_account_balance_history_new_pkey ATTACH PARTITION public."fact_account_balance_history_2024_ 2_pkey";
ALTER INDEX public.fact_account_balance_history_new_pkey ATTACH PARTITION public."fact_account_balance_history_2024_ 3_pkey";
ALTER INDEX public.fact_account_balance_history_new_pkey ATTACH PARTITION public."fact_account_balance_history_2024_ 4_pkey";
ALTER INDEX public.fact_account_balance_history_new_pkey ATTACH PARTITION public."fact_account_balance_history_2024_ 5_pkey";
ALTER INDEX public.fact_account_balance_history_new_pkey ATTACH PARTITION public."fact_account_balance_history_2024_ 6_pkey";
ALTER INDEX public.fact_account_balance_history_new_pkey ATTACH PARTITION public."fact_account_balance_history_2024_ 7_pkey";
ALTER INDEX public.fact_account_balance_history_new_pkey ATTACH PARTITION public."fact_account_balance_history_2024_ 8_pkey";
ALTER INDEX public.fact_account_balance_history_new_pkey ATTACH PARTITION public."fact_account_balance_history_2024_ 9_pkey";
ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2024_01_account_key_file_date_idx;
ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2024_02_account_key_file_date_idx;
ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2024_03_account_key_file_date_idx;
ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2024_04_account_key_file_date_idx;
ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2024_05_account_key_file_date_idx;
ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2024_06_account_key_file_date_idx;
ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2024_07_account_key_file_date_idx;
ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2024_08_account_key_file_date_idx;
ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2024_09_account_key_file_date_idx;
ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2024_10_account_key_file_date_idx;
ALTER INDEX public.fact_account_balance_history_new_pkey ATTACH PARTITION public.fact_account_balance_history_2024_10_pkey;
ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2024_11_account_key_file_date_idx;
ALTER INDEX public.fact_account_balance_history_new_pkey ATTACH PARTITION public.fact_account_balance_history_2024_11_pkey;
ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2024_12_account_key_file_date_idx;
ALTER INDEX public.fact_account_balance_history_new_pkey ATTACH PARTITION public.fact_account_balance_history_2024_12_pkey;
ALTER INDEX public.fact_account_balance_history_new_pkey ATTACH PARTITION public."fact_account_balance_history_2025_ 1_pkey";
ALTER INDEX public.fact_account_balance_history_new_pkey ATTACH PARTITION public."fact_account_balance_history_2025_ 2_pkey";
ALTER INDEX public.fact_account_balance_history_new_pkey ATTACH PARTITION public."fact_account_balance_history_2025_ 3_pkey";
ALTER INDEX public.fact_account_balance_history_new_pkey ATTACH PARTITION public."fact_account_balance_history_2025_ 4_pkey";
ALTER INDEX public.fact_account_balance_history_new_pkey ATTACH PARTITION public."fact_account_balance_history_2025_ 5_pkey";
ALTER INDEX public.fact_account_balance_history_new_pkey ATTACH PARTITION public."fact_account_balance_history_2025_ 6_pkey";
ALTER INDEX public.fact_account_balance_history_new_pkey ATTACH PARTITION public."fact_account_balance_history_2025_ 7_pkey";
ALTER INDEX public.fact_account_balance_history_new_pkey ATTACH PARTITION public."fact_account_balance_history_2025_ 8_pkey";
ALTER INDEX public.fact_account_balance_history_new_pkey ATTACH PARTITION public."fact_account_balance_history_2025_ 9_pkey";
ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2025_01_account_key_file_date_idx;
ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2025_02_account_key_file_date_idx;
ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2025_03_account_key_file_date_idx;
ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2025_04_account_key_file_date_idx;
ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2025_05_account_key_file_date_idx;
ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2025_06_account_key_file_date_idx;
ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2025_07_account_key_file_date_idx;
ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2025_08_account_key_file_date_idx;
ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2025_09_account_key_file_date_idx;
ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2025_10_account_key_file_date_idx;
ALTER INDEX public.fact_account_balance_history_new_pkey ATTACH PARTITION public.fact_account_balance_history_2025_10_pkey;
ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2025_11_account_key_file_date_idx;
ALTER INDEX public.fact_account_balance_history_new_pkey ATTACH PARTITION public.fact_account_balance_history_2025_11_pkey;
ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2025_12_account_key_file_date_idx;
ALTER INDEX public.fact_account_balance_history_new_pkey ATTACH PARTITION public.fact_account_balance_history_2025_12_pkey;
ALTER INDEX public.fact_class_allocation_history_new_pkey ATTACH PARTITION public."fact_class_allocation_history_2024_ 1_pkey";
ALTER INDEX public.fact_class_allocation_history_new_pkey ATTACH PARTITION public."fact_class_allocation_history_2024_ 2_pkey";
ALTER INDEX public.fact_class_allocation_history_new_pkey ATTACH PARTITION public."fact_class_allocation_history_2024_ 3_pkey";
ALTER INDEX public.fact_class_allocation_history_new_pkey ATTACH PARTITION public."fact_class_allocation_history_2024_ 4_pkey";
ALTER INDEX public.fact_class_allocation_history_new_pkey ATTACH PARTITION public."fact_class_allocation_history_2024_ 5_pkey";
ALTER INDEX public.fact_class_allocation_history_new_pkey ATTACH PARTITION public."fact_class_allocation_history_2024_ 6_pkey";
ALTER INDEX public.fact_class_allocation_history_new_pkey ATTACH PARTITION public."fact_class_allocation_history_2024_ 7_pkey";
ALTER INDEX public.fact_class_allocation_history_new_pkey ATTACH PARTITION public."fact_class_allocation_history_2024_ 8_pkey";
ALTER INDEX public.fact_class_allocation_history_new_pkey ATTACH PARTITION public."fact_class_allocation_history_2024_ 9_pkey";
ALTER INDEX public.fact_class_allocation_history_new_pkey ATTACH PARTITION public.fact_class_allocation_history_2024_10_pkey;
ALTER INDEX public.fact_class_allocation_history_new_pkey ATTACH PARTITION public.fact_class_allocation_history_2024_11_pkey;
ALTER INDEX public.fact_class_allocation_history_new_pkey ATTACH PARTITION public.fact_class_allocation_history_2024_12_pkey;
ALTER INDEX public.fact_class_allocation_history_new_pkey ATTACH PARTITION public."fact_class_allocation_history_2025_ 1_pkey";
ALTER INDEX public.fact_class_allocation_history_new_pkey ATTACH PARTITION public."fact_class_allocation_history_2025_ 2_pkey";
ALTER INDEX public.fact_class_allocation_history_new_pkey ATTACH PARTITION public."fact_class_allocation_history_2025_ 3_pkey";
ALTER INDEX public.fact_class_allocation_history_new_pkey ATTACH PARTITION public."fact_class_allocation_history_2025_ 4_pkey";
ALTER INDEX public.fact_class_allocation_history_new_pkey ATTACH PARTITION public."fact_class_allocation_history_2025_ 5_pkey";
ALTER INDEX public.fact_class_allocation_history_new_pkey ATTACH PARTITION public."fact_class_allocation_history_2025_ 6_pkey";
ALTER INDEX public.fact_class_allocation_history_new_pkey ATTACH PARTITION public."fact_class_allocation_history_2025_ 7_pkey";
ALTER INDEX public.fact_class_allocation_history_new_pkey ATTACH PARTITION public."fact_class_allocation_history_2025_ 8_pkey";
ALTER INDEX public.fact_class_allocation_history_new_pkey ATTACH PARTITION public."fact_class_allocation_history_2025_ 9_pkey";
ALTER INDEX public.fact_class_allocation_history_new_pkey ATTACH PARTITION public.fact_class_allocation_history_2025_10_pkey;
ALTER INDEX public.fact_class_allocation_history_new_pkey ATTACH PARTITION public.fact_class_allocation_history_2025_11_pkey;
ALTER INDEX public.fact_class_allocation_history_new_pkey ATTACH PARTITION public.fact_class_allocation_history_2025_12_pkey;
ALTER INDEX public.fact_position_holding_history_new_pkey ATTACH PARTITION public."fact_position_holding_history_2024_ 1_pkey";
ALTER INDEX public.fact_position_holding_history_new_pkey ATTACH PARTITION public."fact_position_holding_history_2024_ 2_pkey";
ALTER INDEX public.fact_position_holding_history_new_pkey ATTACH PARTITION public."fact_position_holding_history_2024_ 3_pkey";
ALTER INDEX public.fact_position_holding_history_new_pkey ATTACH PARTITION public."fact_position_holding_history_2024_ 4_pkey";
ALTER INDEX public.fact_position_holding_history_new_pkey ATTACH PARTITION public."fact_position_holding_history_2024_ 5_pkey";
ALTER INDEX public.fact_position_holding_history_new_pkey ATTACH PARTITION public."fact_position_holding_history_2024_ 6_pkey";
ALTER INDEX public.fact_position_holding_history_new_pkey ATTACH PARTITION public."fact_position_holding_history_2024_ 7_pkey";
ALTER INDEX public.fact_position_holding_history_new_pkey ATTACH PARTITION public."fact_position_holding_history_2024_ 8_pkey";
ALTER INDEX public.fact_position_holding_history_new_pkey ATTACH PARTITION public."fact_position_holding_history_2024_ 9_pkey";
ALTER INDEX public.fact_position_holding_history_new_pkey ATTACH PARTITION public.fact_position_holding_history_2024_10_pkey;
ALTER INDEX public.fact_position_holding_history_new_pkey ATTACH PARTITION public.fact_position_holding_history_2024_11_pkey;
ALTER INDEX public.fact_position_holding_history_new_pkey ATTACH PARTITION public.fact_position_holding_history_2024_12_pkey;
ALTER INDEX public.fact_position_holding_history_new_pkey ATTACH PARTITION public."fact_position_holding_history_2025_ 1_pkey";
ALTER INDEX public.fact_position_holding_history_new_pkey ATTACH PARTITION public."fact_position_holding_history_2025_ 2_pkey";
ALTER INDEX public.fact_position_holding_history_new_pkey ATTACH PARTITION public."fact_position_holding_history_2025_ 3_pkey";
ALTER INDEX public.fact_position_holding_history_new_pkey ATTACH PARTITION public."fact_position_holding_history_2025_ 4_pkey";
ALTER INDEX public.fact_position_holding_history_new_pkey ATTACH PARTITION public."fact_position_holding_history_2025_ 5_pkey";
ALTER INDEX public.fact_position_holding_history_new_pkey ATTACH PARTITION public."fact_position_holding_history_2025_ 6_pkey";
ALTER INDEX public.fact_position_holding_history_new_pkey ATTACH PARTITION public."fact_position_holding_history_2025_ 7_pkey";
ALTER INDEX public.fact_position_holding_history_new_pkey ATTACH PARTITION public."fact_position_holding_history_2025_ 8_pkey";
ALTER INDEX public.fact_position_holding_history_new_pkey ATTACH PARTITION public."fact_position_holding_history_2025_ 9_pkey";
ALTER INDEX public.fact_position_holding_history_new_pkey ATTACH PARTITION public.fact_position_holding_history_2025_10_pkey;
ALTER INDEX public.fact_position_holding_history_new_pkey ATTACH PARTITION public.fact_position_holding_history_2025_11_pkey;
ALTER INDEX public.fact_position_holding_history_new_pkey ATTACH PARTITION public.fact_position_holding_history_2025_12_pkey;
ALTER INDEX public.fact_segment_allocation_history_new_pkey ATTACH PARTITION public."fact_segment_allocation_history_2024_ 1_pkey";
ALTER INDEX public.fact_segment_allocation_history_new_pkey ATTACH PARTITION public."fact_segment_allocation_history_2024_ 2_pkey";
ALTER INDEX public.fact_segment_allocation_history_new_pkey ATTACH PARTITION public."fact_segment_allocation_history_2024_ 3_pkey";
ALTER INDEX public.fact_segment_allocation_history_new_pkey ATTACH PARTITION public."fact_segment_allocation_history_2024_ 4_pkey";
ALTER INDEX public.fact_segment_allocation_history_new_pkey ATTACH PARTITION public."fact_segment_allocation_history_2024_ 5_pkey";
ALTER INDEX public.fact_segment_allocation_history_new_pkey ATTACH PARTITION public."fact_segment_allocation_history_2024_ 6_pkey";
ALTER INDEX public.fact_segment_allocation_history_new_pkey ATTACH PARTITION public."fact_segment_allocation_history_2024_ 7_pkey";
ALTER INDEX public.fact_segment_allocation_history_new_pkey ATTACH PARTITION public."fact_segment_allocation_history_2024_ 8_pkey";
ALTER INDEX public.fact_segment_allocation_history_new_pkey ATTACH PARTITION public."fact_segment_allocation_history_2024_ 9_pkey";
ALTER INDEX public.fact_segment_allocation_history_new_pkey ATTACH PARTITION public.fact_segment_allocation_history_2024_10_pkey;
ALTER INDEX public.fact_segment_allocation_history_new_pkey ATTACH PARTITION public.fact_segment_allocation_history_2024_11_pkey;
ALTER INDEX public.fact_segment_allocation_history_new_pkey ATTACH PARTITION public.fact_segment_allocation_history_2024_12_pkey;
ALTER INDEX public.fact_segment_allocation_history_new_pkey ATTACH PARTITION public."fact_segment_allocation_history_2025_ 1_pkey";
ALTER INDEX public.fact_segment_allocation_history_new_pkey ATTACH PARTITION public."fact_segment_allocation_history_2025_ 2_pkey";
ALTER INDEX public.fact_segment_allocation_history_new_pkey ATTACH PARTITION public."fact_segment_allocation_history_2025_ 3_pkey";
ALTER INDEX public.fact_segment_allocation_history_new_pkey ATTACH PARTITION public."fact_segment_allocation_history_2025_ 4_pkey";
ALTER INDEX public.fact_segment_allocation_history_new_pkey ATTACH PARTITION public."fact_segment_allocation_history_2025_ 5_pkey";
ALTER INDEX public.fact_segment_allocation_history_new_pkey ATTACH PARTITION public."fact_segment_allocation_history_2025_ 6_pkey";
ALTER INDEX public.fact_segment_allocation_history_new_pkey ATTACH PARTITION public."fact_segment_allocation_history_2025_ 7_pkey";
ALTER INDEX public.fact_segment_allocation_history_new_pkey ATTACH PARTITION public."fact_segment_allocation_history_2025_ 8_pkey";
ALTER INDEX public.fact_segment_allocation_history_new_pkey ATTACH PARTITION public."fact_segment_allocation_history_2025_ 9_pkey";
ALTER INDEX public.fact_segment_allocation_history_new_pkey ATTACH PARTITION public.fact_segment_allocation_history_2025_10_pkey;
ALTER INDEX public.fact_segment_allocation_history_new_pkey ATTACH PARTITION public.fact_segment_allocation_history_2025_11_pkey;
ALTER INDEX public.fact_segment_allocation_history_new_pkey ATTACH PARTITION public.fact_segment_allocation_history_2025_12_pkey;
ALTER INDEX public.fact_strategy_assignment_history_pkey ATTACH PARTITION public.fact_strategy_assignment_history_2024_01_pkey;
ALTER INDEX public.fact_strategy_assignment_history_pkey ATTACH PARTITION public.fact_strategy_assignment_history_2024_02_pkey;
ALTER INDEX public.fact_strategy_assignment_history_pkey ATTACH PARTITION public.fact_strategy_assignment_history_2024_03_pkey;
ALTER INDEX public.fact_strategy_assignment_history_pkey ATTACH PARTITION public.fact_strategy_assignment_history_2024_04_pkey;
ALTER INDEX public.fact_strategy_assignment_history_pkey ATTACH PARTITION public.fact_strategy_assignment_history_2024_05_pkey;
ALTER INDEX public.fact_strategy_assignment_history_pkey ATTACH PARTITION public.fact_strategy_assignment_history_2024_06_pkey;
ALTER INDEX public.fact_strategy_assignment_history_pkey ATTACH PARTITION public.fact_strategy_assignment_history_2024_07_pkey;
ALTER INDEX public.fact_strategy_assignment_history_pkey ATTACH PARTITION public.fact_strategy_assignment_history_2024_08_pkey;
ALTER INDEX public.fact_strategy_assignment_history_pkey ATTACH PARTITION public.fact_strategy_assignment_history_2024_09_pkey;
ALTER INDEX public.fact_strategy_assignment_history_pkey ATTACH PARTITION public.fact_strategy_assignment_history_2024_10_pkey;
ALTER INDEX public.fact_strategy_assignment_history_pkey ATTACH PARTITION public.fact_strategy_assignment_history_2024_11_pkey;
ALTER INDEX public.fact_strategy_assignment_history_pkey ATTACH PARTITION public.fact_strategy_assignment_history_2024_12_pkey;
ALTER INDEX public.fact_strategy_assignment_history_pkey ATTACH PARTITION public.fact_strategy_assignment_history_2025_01_pkey;
ALTER INDEX public.fact_strategy_assignment_history_pkey ATTACH PARTITION public.fact_strategy_assignment_history_2025_02_pkey;
ALTER INDEX public.fact_strategy_assignment_history_pkey ATTACH PARTITION public.fact_strategy_assignment_history_2025_03_pkey;
ALTER INDEX public.fact_strategy_assignment_history_pkey ATTACH PARTITION public.fact_strategy_assignment_history_2025_04_pkey;
ALTER INDEX public.fact_strategy_assignment_history_pkey ATTACH PARTITION public.fact_strategy_assignment_history_2025_05_pkey;
ALTER INDEX public.fact_strategy_assignment_history_pkey ATTACH PARTITION public.fact_strategy_assignment_history_2025_06_pkey;
ALTER INDEX public.fact_strategy_assignment_history_pkey ATTACH PARTITION public.fact_strategy_assignment_history_2025_07_pkey;
ALTER INDEX public.fact_strategy_assignment_history_pkey ATTACH PARTITION public.fact_strategy_assignment_history_2025_08_pkey;
ALTER INDEX public.fact_strategy_assignment_history_pkey ATTACH PARTITION public.fact_strategy_assignment_history_2025_09_pkey;
ALTER INDEX public.fact_strategy_assignment_history_pkey ATTACH PARTITION public.fact_strategy_assignment_history_2025_10_pkey;
ALTER INDEX public.fact_strategy_assignment_history_pkey ATTACH PARTITION public.fact_strategy_assignment_history_2025_11_pkey;
ALTER INDEX public.fact_strategy_assignment_history_pkey ATTACH PARTITION public.fact_strategy_assignment_history_2025_12_pkey;
ALTER INDEX public.fact_target_assignment_history_pkey ATTACH PARTITION public."fact_target_assignment_history_2024_ 1_pkey";
ALTER INDEX public.fact_target_assignment_history_pkey ATTACH PARTITION public."fact_target_assignment_history_2024_ 2_pkey";
ALTER INDEX public.fact_target_assignment_history_pkey ATTACH PARTITION public."fact_target_assignment_history_2024_ 3_pkey";
ALTER INDEX public.fact_target_assignment_history_pkey ATTACH PARTITION public."fact_target_assignment_history_2024_ 4_pkey";
ALTER INDEX public.fact_target_assignment_history_pkey ATTACH PARTITION public."fact_target_assignment_history_2024_ 5_pkey";
ALTER INDEX public.fact_target_assignment_history_pkey ATTACH PARTITION public."fact_target_assignment_history_2024_ 6_pkey";
ALTER INDEX public.fact_target_assignment_history_pkey ATTACH PARTITION public."fact_target_assignment_history_2024_ 7_pkey";
ALTER INDEX public.fact_target_assignment_history_pkey ATTACH PARTITION public."fact_target_assignment_history_2024_ 8_pkey";
ALTER INDEX public.fact_target_assignment_history_pkey ATTACH PARTITION public."fact_target_assignment_history_2024_ 9_pkey";
ALTER INDEX public.fact_target_assignment_history_pkey ATTACH PARTITION public.fact_target_assignment_history_2024_10_pkey;
ALTER INDEX public.fact_target_assignment_history_pkey ATTACH PARTITION public.fact_target_assignment_history_2024_11_pkey;
ALTER INDEX public.fact_target_assignment_history_pkey ATTACH PARTITION public.fact_target_assignment_history_2024_12_pkey;
ALTER INDEX public.fact_target_assignment_history_pkey ATTACH PARTITION public."fact_target_assignment_history_2025_ 1_pkey";
ALTER INDEX public.fact_target_assignment_history_pkey ATTACH PARTITION public."fact_target_assignment_history_2025_ 2_pkey";
ALTER INDEX public.fact_target_assignment_history_pkey ATTACH PARTITION public."fact_target_assignment_history_2025_ 3_pkey";
ALTER INDEX public.fact_target_assignment_history_pkey ATTACH PARTITION public."fact_target_assignment_history_2025_ 4_pkey";
ALTER INDEX public.fact_target_assignment_history_pkey ATTACH PARTITION public."fact_target_assignment_history_2025_ 5_pkey";
ALTER INDEX public.fact_target_assignment_history_pkey ATTACH PARTITION public."fact_target_assignment_history_2025_ 6_pkey";
ALTER INDEX public.fact_target_assignment_history_pkey ATTACH PARTITION public."fact_target_assignment_history_2025_ 7_pkey";
ALTER INDEX public.fact_target_assignment_history_pkey ATTACH PARTITION public."fact_target_assignment_history_2025_ 8_pkey";
ALTER INDEX public.fact_target_assignment_history_pkey ATTACH PARTITION public."fact_target_assignment_history_2025_ 9_pkey";
ALTER INDEX public.fact_target_assignment_history_pkey ATTACH PARTITION public.fact_target_assignment_history_2025_10_pkey;
ALTER INDEX public.fact_target_assignment_history_pkey ATTACH PARTITION public.fact_target_assignment_history_2025_11_pkey;
ALTER INDEX public.fact_target_assignment_history_pkey ATTACH PARTITION public.fact_target_assignment_history_2025_12_pkey;
ALTER INDEX public.fact_target_component_history_pkey ATTACH PARTITION public."fact_target_component_history_2024_ 1_pkey";
ALTER INDEX public.fact_target_component_history_pkey ATTACH PARTITION public."fact_target_component_history_2024_ 2_pkey";
ALTER INDEX public.fact_target_component_history_pkey ATTACH PARTITION public."fact_target_component_history_2024_ 3_pkey";
ALTER INDEX public.fact_target_component_history_pkey ATTACH PARTITION public."fact_target_component_history_2024_ 4_pkey";
ALTER INDEX public.fact_target_component_history_pkey ATTACH PARTITION public."fact_target_component_history_2024_ 5_pkey";
ALTER INDEX public.fact_target_component_history_pkey ATTACH PARTITION public."fact_target_component_history_2024_ 6_pkey";
ALTER INDEX public.fact_target_component_history_pkey ATTACH PARTITION public."fact_target_component_history_2024_ 7_pkey";
ALTER INDEX public.fact_target_component_history_pkey ATTACH PARTITION public."fact_target_component_history_2024_ 8_pkey";
ALTER INDEX public.fact_target_component_history_pkey ATTACH PARTITION public."fact_target_component_history_2024_ 9_pkey";
ALTER INDEX public.fact_target_component_history_pkey ATTACH PARTITION public.fact_target_component_history_2024_10_pkey;
ALTER INDEX public.fact_target_component_history_pkey ATTACH PARTITION public.fact_target_component_history_2024_11_pkey;
ALTER INDEX public.fact_target_component_history_pkey ATTACH PARTITION public.fact_target_component_history_2024_12_pkey;
ALTER INDEX public.fact_target_component_history_pkey ATTACH PARTITION public."fact_target_component_history_2025_ 1_pkey";
ALTER INDEX public.fact_target_component_history_pkey ATTACH PARTITION public."fact_target_component_history_2025_ 2_pkey";
ALTER INDEX public.fact_target_component_history_pkey ATTACH PARTITION public."fact_target_component_history_2025_ 3_pkey";
ALTER INDEX public.fact_target_component_history_pkey ATTACH PARTITION public."fact_target_component_history_2025_ 4_pkey";
ALTER INDEX public.fact_target_component_history_pkey ATTACH PARTITION public."fact_target_component_history_2025_ 5_pkey";
ALTER INDEX public.fact_target_component_history_pkey ATTACH PARTITION public."fact_target_component_history_2025_ 6_pkey";
ALTER INDEX public.fact_target_component_history_pkey ATTACH PARTITION public."fact_target_component_history_2025_ 7_pkey";
ALTER INDEX public.fact_target_component_history_pkey ATTACH PARTITION public."fact_target_component_history_2025_ 8_pkey";
ALTER INDEX public.fact_target_component_history_pkey ATTACH PARTITION public."fact_target_component_history_2025_ 9_pkey";
ALTER INDEX public.fact_target_component_history_pkey ATTACH PARTITION public.fact_target_component_history_2025_10_pkey;
ALTER INDEX public.fact_target_component_history_pkey ATTACH PARTITION public.fact_target_component_history_2025_11_pkey;
ALTER INDEX public.fact_target_component_history_pkey ATTACH PARTITION public.fact_target_component_history_2025_12_pkey;
ALTER INDEX public.fact_transaction_new_pkey ATTACH PARTITION public."fact_transaction_2024_ 1_pkey";
ALTER INDEX public.fact_transaction_new_pkey ATTACH PARTITION public."fact_transaction_2024_ 2_pkey";
ALTER INDEX public.fact_transaction_new_pkey ATTACH PARTITION public."fact_transaction_2024_ 3_pkey";
ALTER INDEX public.fact_transaction_new_pkey ATTACH PARTITION public."fact_transaction_2024_ 4_pkey";
ALTER INDEX public.fact_transaction_new_pkey ATTACH PARTITION public."fact_transaction_2024_ 5_pkey";
ALTER INDEX public.fact_transaction_new_pkey ATTACH PARTITION public."fact_transaction_2024_ 6_pkey";
ALTER INDEX public.fact_transaction_new_pkey ATTACH PARTITION public."fact_transaction_2024_ 7_pkey";
ALTER INDEX public.fact_transaction_new_pkey ATTACH PARTITION public."fact_transaction_2024_ 8_pkey";
ALTER INDEX public.fact_transaction_new_pkey ATTACH PARTITION public."fact_transaction_2024_ 9_pkey";
ALTER INDEX public.idx_ft_accountkey_tradedate ATTACH PARTITION public.fact_transaction_2024_01_account_key_trade_date_idx;
ALTER INDEX public.idx_ft_transaction_type_trgm ATTACH PARTITION public.fact_transaction_2024_01_lower_idx;
ALTER INDEX public.idx_ft_transaction_id ATTACH PARTITION public.fact_transaction_2024_01_transaction_id_idx;
ALTER INDEX public.idx_ft_accountkey_tradedate ATTACH PARTITION public.fact_transaction_2024_02_account_key_trade_date_idx;
ALTER INDEX public.idx_ft_transaction_type_trgm ATTACH PARTITION public.fact_transaction_2024_02_lower_idx;
ALTER INDEX public.idx_ft_transaction_id ATTACH PARTITION public.fact_transaction_2024_02_transaction_id_idx;
ALTER INDEX public.idx_ft_accountkey_tradedate ATTACH PARTITION public.fact_transaction_2024_03_account_key_trade_date_idx;
ALTER INDEX public.idx_ft_transaction_type_trgm ATTACH PARTITION public.fact_transaction_2024_03_lower_idx;
ALTER INDEX public.idx_ft_transaction_id ATTACH PARTITION public.fact_transaction_2024_03_transaction_id_idx;
ALTER INDEX public.idx_ft_accountkey_tradedate ATTACH PARTITION public.fact_transaction_2024_04_account_key_trade_date_idx;
ALTER INDEX public.idx_ft_transaction_type_trgm ATTACH PARTITION public.fact_transaction_2024_04_lower_idx;
ALTER INDEX public.idx_ft_transaction_id ATTACH PARTITION public.fact_transaction_2024_04_transaction_id_idx;
ALTER INDEX public.idx_ft_accountkey_tradedate ATTACH PARTITION public.fact_transaction_2024_05_account_key_trade_date_idx;
ALTER INDEX public.idx_ft_transaction_type_trgm ATTACH PARTITION public.fact_transaction_2024_05_lower_idx;
ALTER INDEX public.idx_ft_transaction_id ATTACH PARTITION public.fact_transaction_2024_05_transaction_id_idx;
ALTER INDEX public.idx_ft_accountkey_tradedate ATTACH PARTITION public.fact_transaction_2024_06_account_key_trade_date_idx;
ALTER INDEX public.idx_ft_transaction_type_trgm ATTACH PARTITION public.fact_transaction_2024_06_lower_idx;
ALTER INDEX public.idx_ft_transaction_id ATTACH PARTITION public.fact_transaction_2024_06_transaction_id_idx;
ALTER INDEX public.idx_ft_accountkey_tradedate ATTACH PARTITION public.fact_transaction_2024_07_account_key_trade_date_idx;
ALTER INDEX public.idx_ft_transaction_type_trgm ATTACH PARTITION public.fact_transaction_2024_07_lower_idx;
ALTER INDEX public.idx_ft_transaction_id ATTACH PARTITION public.fact_transaction_2024_07_transaction_id_idx;
ALTER INDEX public.idx_ft_accountkey_tradedate ATTACH PARTITION public.fact_transaction_2024_08_account_key_trade_date_idx;
ALTER INDEX public.idx_ft_transaction_type_trgm ATTACH PARTITION public.fact_transaction_2024_08_lower_idx;
ALTER INDEX public.idx_ft_transaction_id ATTACH PARTITION public.fact_transaction_2024_08_transaction_id_idx;
ALTER INDEX public.idx_ft_accountkey_tradedate ATTACH PARTITION public.fact_transaction_2024_09_account_key_trade_date_idx;
ALTER INDEX public.idx_ft_transaction_type_trgm ATTACH PARTITION public.fact_transaction_2024_09_lower_idx;
ALTER INDEX public.idx_ft_transaction_id ATTACH PARTITION public.fact_transaction_2024_09_transaction_id_idx;
ALTER INDEX public.idx_ft_accountkey_tradedate ATTACH PARTITION public.fact_transaction_2024_10_account_key_trade_date_idx;
ALTER INDEX public.idx_ft_transaction_type_trgm ATTACH PARTITION public.fact_transaction_2024_10_lower_idx;
ALTER INDEX public.fact_transaction_new_pkey ATTACH PARTITION public.fact_transaction_2024_10_pkey;
ALTER INDEX public.idx_ft_transaction_id ATTACH PARTITION public.fact_transaction_2024_10_transaction_id_idx;
ALTER INDEX public.idx_ft_accountkey_tradedate ATTACH PARTITION public.fact_transaction_2024_11_account_key_trade_date_idx;
ALTER INDEX public.idx_ft_transaction_type_trgm ATTACH PARTITION public.fact_transaction_2024_11_lower_idx;
ALTER INDEX public.fact_transaction_new_pkey ATTACH PARTITION public.fact_transaction_2024_11_pkey;
ALTER INDEX public.idx_ft_transaction_id ATTACH PARTITION public.fact_transaction_2024_11_transaction_id_idx;
ALTER INDEX public.idx_ft_accountkey_tradedate ATTACH PARTITION public.fact_transaction_2024_12_account_key_trade_date_idx;
ALTER INDEX public.idx_ft_transaction_type_trgm ATTACH PARTITION public.fact_transaction_2024_12_lower_idx;
ALTER INDEX public.fact_transaction_new_pkey ATTACH PARTITION public.fact_transaction_2024_12_pkey;
ALTER INDEX public.idx_ft_transaction_id ATTACH PARTITION public.fact_transaction_2024_12_transaction_id_idx;
ALTER INDEX public.fact_transaction_new_pkey ATTACH PARTITION public."fact_transaction_2025_ 1_pkey";
ALTER INDEX public.fact_transaction_new_pkey ATTACH PARTITION public."fact_transaction_2025_ 2_pkey";
ALTER INDEX public.fact_transaction_new_pkey ATTACH PARTITION public."fact_transaction_2025_ 3_pkey";
ALTER INDEX public.fact_transaction_new_pkey ATTACH PARTITION public."fact_transaction_2025_ 4_pkey";
ALTER INDEX public.fact_transaction_new_pkey ATTACH PARTITION public."fact_transaction_2025_ 5_pkey";
ALTER INDEX public.fact_transaction_new_pkey ATTACH PARTITION public."fact_transaction_2025_ 6_pkey";
ALTER INDEX public.fact_transaction_new_pkey ATTACH PARTITION public."fact_transaction_2025_ 7_pkey";
ALTER INDEX public.fact_transaction_new_pkey ATTACH PARTITION public."fact_transaction_2025_ 8_pkey";
ALTER INDEX public.fact_transaction_new_pkey ATTACH PARTITION public."fact_transaction_2025_ 9_pkey";
ALTER INDEX public.idx_ft_accountkey_tradedate ATTACH PARTITION public.fact_transaction_2025_01_account_key_trade_date_idx;
ALTER INDEX public.idx_ft_transaction_type_trgm ATTACH PARTITION public.fact_transaction_2025_01_lower_idx;
ALTER INDEX public.idx_ft_transaction_id ATTACH PARTITION public.fact_transaction_2025_01_transaction_id_idx;
ALTER INDEX public.idx_ft_accountkey_tradedate ATTACH PARTITION public.fact_transaction_2025_02_account_key_trade_date_idx;
ALTER INDEX public.idx_ft_transaction_type_trgm ATTACH PARTITION public.fact_transaction_2025_02_lower_idx;
ALTER INDEX public.idx_ft_transaction_id ATTACH PARTITION public.fact_transaction_2025_02_transaction_id_idx;
ALTER INDEX public.idx_ft_accountkey_tradedate ATTACH PARTITION public.fact_transaction_2025_03_account_key_trade_date_idx;
ALTER INDEX public.idx_ft_transaction_type_trgm ATTACH PARTITION public.fact_transaction_2025_03_lower_idx;
ALTER INDEX public.idx_ft_transaction_id ATTACH PARTITION public.fact_transaction_2025_03_transaction_id_idx;
ALTER INDEX public.idx_ft_accountkey_tradedate ATTACH PARTITION public.fact_transaction_2025_04_account_key_trade_date_idx;
ALTER INDEX public.idx_ft_transaction_type_trgm ATTACH PARTITION public.fact_transaction_2025_04_lower_idx;
ALTER INDEX public.idx_ft_transaction_id ATTACH PARTITION public.fact_transaction_2025_04_transaction_id_idx;
ALTER INDEX public.idx_ft_accountkey_tradedate ATTACH PARTITION public.fact_transaction_2025_05_account_key_trade_date_idx;
ALTER INDEX public.idx_ft_transaction_type_trgm ATTACH PARTITION public.fact_transaction_2025_05_lower_idx;
ALTER INDEX public.idx_ft_transaction_id ATTACH PARTITION public.fact_transaction_2025_05_transaction_id_idx;
ALTER INDEX public.idx_ft_accountkey_tradedate ATTACH PARTITION public.fact_transaction_2025_06_account_key_trade_date_idx;
ALTER INDEX public.idx_ft_transaction_type_trgm ATTACH PARTITION public.fact_transaction_2025_06_lower_idx;
ALTER INDEX public.idx_ft_transaction_id ATTACH PARTITION public.fact_transaction_2025_06_transaction_id_idx;
ALTER INDEX public.idx_ft_accountkey_tradedate ATTACH PARTITION public.fact_transaction_2025_07_account_key_trade_date_idx;
ALTER INDEX public.idx_ft_transaction_type_trgm ATTACH PARTITION public.fact_transaction_2025_07_lower_idx;
ALTER INDEX public.idx_ft_transaction_id ATTACH PARTITION public.fact_transaction_2025_07_transaction_id_idx;
ALTER INDEX public.idx_ft_accountkey_tradedate ATTACH PARTITION public.fact_transaction_2025_08_account_key_trade_date_idx;
ALTER INDEX public.idx_ft_transaction_type_trgm ATTACH PARTITION public.fact_transaction_2025_08_lower_idx;
ALTER INDEX public.idx_ft_transaction_id ATTACH PARTITION public.fact_transaction_2025_08_transaction_id_idx;
ALTER INDEX public.idx_ft_accountkey_tradedate ATTACH PARTITION public.fact_transaction_2025_09_account_key_trade_date_idx;
ALTER INDEX public.idx_ft_transaction_type_trgm ATTACH PARTITION public.fact_transaction_2025_09_lower_idx;
ALTER INDEX public.idx_ft_transaction_id ATTACH PARTITION public.fact_transaction_2025_09_transaction_id_idx;
ALTER INDEX public.idx_ft_accountkey_tradedate ATTACH PARTITION public.fact_transaction_2025_10_account_key_trade_date_idx;
ALTER INDEX public.idx_ft_transaction_type_trgm ATTACH PARTITION public.fact_transaction_2025_10_lower_idx;
ALTER INDEX public.fact_transaction_new_pkey ATTACH PARTITION public.fact_transaction_2025_10_pkey;
ALTER INDEX public.idx_ft_transaction_id ATTACH PARTITION public.fact_transaction_2025_10_transaction_id_idx;
ALTER INDEX public.idx_ft_accountkey_tradedate ATTACH PARTITION public.fact_transaction_2025_11_account_key_trade_date_idx;
ALTER INDEX public.idx_ft_transaction_type_trgm ATTACH PARTITION public.fact_transaction_2025_11_lower_idx;
ALTER INDEX public.fact_transaction_new_pkey ATTACH PARTITION public.fact_transaction_2025_11_pkey;
ALTER INDEX public.idx_ft_transaction_id ATTACH PARTITION public.fact_transaction_2025_11_transaction_id_idx;
ALTER INDEX public.idx_ft_accountkey_tradedate ATTACH PARTITION public.fact_transaction_2025_12_account_key_trade_date_idx;
ALTER INDEX public.idx_ft_transaction_type_trgm ATTACH PARTITION public.fact_transaction_2025_12_lower_idx;
ALTER INDEX public.fact_transaction_new_pkey ATTACH PARTITION public.fact_transaction_2025_12_pkey;
ALTER INDEX public.idx_ft_transaction_id ATTACH PARTITION public.fact_transaction_2025_12_transaction_id_idx;
ALTER TABLE public.dim_account_history
    ADD CONSTRAINT dim_account_history_new_account_key_fkey FOREIGN KEY (account_key) REFERENCES public.dim_account(account_key);
ALTER TABLE public.dim_strategies_history
    ADD CONSTRAINT dim_strategies_history_strategy_key_fkey FOREIGN KEY (strategy_key) REFERENCES public.dim_strategies(strategy_key);
ALTER TABLE public.dim_target_history
    ADD CONSTRAINT dim_target_history_target_key_fkey FOREIGN KEY (target_key) REFERENCES public.dim_target(target_key);
ALTER TABLE ONLY public.fact_account_balance
    ADD CONSTRAINT fact_account_balance_account_key_fkey FOREIGN KEY (account_key) REFERENCES public.dim_account(account_key);
ALTER TABLE public.fact_account_balance_history
    ADD CONSTRAINT fact_account_balance_history_new_account_key_fkey FOREIGN KEY (account_key) REFERENCES public.dim_account(account_key);
ALTER TABLE ONLY public.fact_class_allocation
    ADD CONSTRAINT fact_class_allocation_account_key_fkey FOREIGN KEY (account_key) REFERENCES public.dim_account(account_key);
ALTER TABLE public.fact_class_allocation_history
    ADD CONSTRAINT fact_class_allocation_history_new_account_key_fkey FOREIGN KEY (account_key) REFERENCES public.dim_account(account_key);
ALTER TABLE ONLY public.fact_position_holding
    ADD CONSTRAINT fact_position_holding_account_key_fkey FOREIGN KEY (account_key) REFERENCES public.dim_account(account_key);
ALTER TABLE public.fact_position_holding_history
    ADD CONSTRAINT fact_position_holding_history_new_account_key_fkey FOREIGN KEY (account_key) REFERENCES public.dim_account(account_key);
ALTER TABLE public.fact_position_holding_history
    ADD CONSTRAINT fact_position_holding_history_new_security_key_fkey FOREIGN KEY (security_key) REFERENCES public.dim_security(security_key);
ALTER TABLE ONLY public.fact_position_holding
    ADD CONSTRAINT fact_position_holding_security_key_fkey FOREIGN KEY (security_key) REFERENCES public.dim_security(security_key);
ALTER TABLE ONLY public.fact_segment_allocation
    ADD CONSTRAINT fact_segment_allocation_account_key_fkey FOREIGN KEY (account_key) REFERENCES public.dim_account(account_key);
ALTER TABLE public.fact_segment_allocation_history
    ADD CONSTRAINT fact_segment_allocation_history_new_account_key_fkey FOREIGN KEY (account_key) REFERENCES public.dim_account(account_key);
ALTER TABLE ONLY public.fact_strategy_assignment
    ADD CONSTRAINT fact_strategy_assignment_account_key_fkey FOREIGN KEY (account_key) REFERENCES public.dim_account(account_key);
ALTER TABLE public.fact_strategy_assignment_history
    ADD CONSTRAINT fact_strategy_assignment_history_account_key_fkey FOREIGN KEY (account_key) REFERENCES public.dim_account(account_key);
ALTER TABLE public.fact_strategy_assignment_history
    ADD CONSTRAINT fact_strategy_assignment_history_strategy_key_fkey FOREIGN KEY (strategy_key) REFERENCES public.dim_strategies(strategy_key);
ALTER TABLE ONLY public.fact_strategy_assignment
    ADD CONSTRAINT fact_strategy_assignment_strategy_key_fkey FOREIGN KEY (strategy_key) REFERENCES public.dim_strategies(strategy_key);
ALTER TABLE ONLY public.fact_target_assignment
    ADD CONSTRAINT fact_target_assignment_account_key_fkey FOREIGN KEY (account_key) REFERENCES public.dim_account(account_key);
ALTER TABLE public.fact_target_assignment_history
    ADD CONSTRAINT fact_target_assignment_history_account_key_fkey FOREIGN KEY (account_key) REFERENCES public.dim_account(account_key);
ALTER TABLE public.fact_target_assignment_history
    ADD CONSTRAINT fact_target_assignment_history_portfolio_key_fkey FOREIGN KEY (portfolio_key) REFERENCES public.dim_portfolio(portfolio_key);
ALTER TABLE public.fact_target_assignment_history
    ADD CONSTRAINT fact_target_assignment_history_target_key_fkey FOREIGN KEY (target_key) REFERENCES public.dim_target(target_key);
ALTER TABLE ONLY public.fact_target_assignment
    ADD CONSTRAINT fact_target_assignment_portfolio_key_fkey FOREIGN KEY (portfolio_key) REFERENCES public.dim_portfolio(portfolio_key);
ALTER TABLE ONLY public.fact_target_assignment
    ADD CONSTRAINT fact_target_assignment_target_key_fkey FOREIGN KEY (target_key) REFERENCES public.dim_target(target_key);
ALTER TABLE public.fact_target_component_history
    ADD CONSTRAINT fact_target_component_history_security_key_fkey FOREIGN KEY (security_key) REFERENCES public.dim_security(security_key);
ALTER TABLE public.fact_target_component_history
    ADD CONSTRAINT fact_target_component_history_target_key_fkey FOREIGN KEY (target_key) REFERENCES public.dim_target(target_key);
ALTER TABLE ONLY public.fact_target_component
    ADD CONSTRAINT fact_target_component_security_key_fkey FOREIGN KEY (security_key) REFERENCES public.dim_security(security_key);
ALTER TABLE ONLY public.fact_target_component
    ADD CONSTRAINT fact_target_component_target_key_fkey FOREIGN KEY (target_key) REFERENCES public.dim_target(target_key);
ALTER TABLE public.fact_transaction
    ADD CONSTRAINT fact_transaction_external_contra_account_id_fkey FOREIGN KEY (external_contra_account_id) REFERENCES public.dim_account(account_key);
ALTER TABLE public.fact_transaction
    ADD CONSTRAINT fact_transaction_new_account_key_fkey FOREIGN KEY (account_key) REFERENCES public.dim_account(account_key);
ALTER TABLE public.fact_transaction
    ADD CONSTRAINT fact_transaction_new_security_key_fkey FOREIGN KEY (security_key) REFERENCES public.dim_security(security_key);
ALTER TABLE ONLY public.dim_security_history
    ADD CONSTRAINT fk_dim_security_history_security_key FOREIGN KEY (security_key) REFERENCES public.dim_security(security_key);
\unrestrict FwNhDOse7jsbYyzYwg99dU0wh0bROhSLV3zz87ZGDlM0grQBP0pZezG0pIkV8kz
