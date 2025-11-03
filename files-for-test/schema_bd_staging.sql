DATABASE NAME = vf_bd_staging

\restrict ViwK4tHkYK8SrQopMAgn2DKyZLcd5JNSDEqQyOFcC9P387QhLvBrFCKgNcAueJM
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
CREATE TABLE public.accounts (
    id integer NOT NULL,
    blackdiamond_account_id text,
    name text,
    custodial_account_name text,
    account_number text,
    billing_number text,
    billing_account_description text,
    external_billing_account_id text,
    other_billing_method text,
    pay_by_invoice text,
    tax_methodology text,
    tax_status text,
    start_date text,
    closed_date text,
    closed_when text,
    as_of_date text,
    billing_start_date text,
    billing_end_date text,
    history_start_date text,
    last_reconciled_date text,
    performance_start_date text,
    create_date text,
    custodian text,
    account_category text,
    account_sub_category text,
    account_type text,
    discretionary text,
    billable text,
    supervised text,
    long_number text,
    data_provider text,
    data_provider_id text,
    is_sleeve_account text,
    manager text,
    tags text,
    style text,
    file_name text,
    file_date text
);
CREATE TABLE public.accounts_class_allocations (
    id integer NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    class_name text,
    class_id text,
    as_of_date text,
    total_emv text,
    unsupervised_emv text,
    supervised_emv text,
    file_name text
)
PARTITION BY RANGE (file_date);
CREATE SEQUENCE public.accounts_class_allocations_new_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.accounts_class_allocations_new_id_seq OWNED BY public.accounts_class_allocations.id;
CREATE TABLE public.accounts_class_allocations_2024_q1 (
    id integer DEFAULT nextval('public.accounts_class_allocations_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    class_name text,
    class_id text,
    as_of_date text,
    total_emv text,
    unsupervised_emv text,
    supervised_emv text,
    file_name text
);
CREATE TABLE public.accounts_class_allocations_2024_q2 (
    id integer DEFAULT nextval('public.accounts_class_allocations_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    class_name text,
    class_id text,
    as_of_date text,
    total_emv text,
    unsupervised_emv text,
    supervised_emv text,
    file_name text
);
CREATE TABLE public.accounts_class_allocations_2024_q3 (
    id integer DEFAULT nextval('public.accounts_class_allocations_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    class_name text,
    class_id text,
    as_of_date text,
    total_emv text,
    unsupervised_emv text,
    supervised_emv text,
    file_name text
);
CREATE TABLE public.accounts_class_allocations_2024_q4 (
    id integer DEFAULT nextval('public.accounts_class_allocations_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    class_name text,
    class_id text,
    as_of_date text,
    total_emv text,
    unsupervised_emv text,
    supervised_emv text,
    file_name text
);
CREATE TABLE public.accounts_class_allocations_2025_q1 (
    id integer DEFAULT nextval('public.accounts_class_allocations_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    class_name text,
    class_id text,
    as_of_date text,
    total_emv text,
    unsupervised_emv text,
    supervised_emv text,
    file_name text
);
CREATE TABLE public.accounts_class_allocations_2025_q2 (
    id integer DEFAULT nextval('public.accounts_class_allocations_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    class_name text,
    class_id text,
    as_of_date text,
    total_emv text,
    unsupervised_emv text,
    supervised_emv text,
    file_name text
);
CREATE TABLE public.accounts_class_allocations_2025_q3 (
    id integer DEFAULT nextval('public.accounts_class_allocations_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    class_name text,
    class_id text,
    as_of_date text,
    total_emv text,
    unsupervised_emv text,
    supervised_emv text,
    file_name text
);
CREATE TABLE public.accounts_class_allocations_2025_q4 (
    id integer DEFAULT nextval('public.accounts_class_allocations_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    class_name text,
    class_id text,
    as_of_date text,
    total_emv text,
    unsupervised_emv text,
    supervised_emv text,
    file_name text
);
CREATE TABLE public.accounts_cost_basis (
    id integer NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    blackdiamond_holding_id text,
    blackdiamond_tax_lot_id text,
    ticker text,
    display_cusip text,
    cusip text,
    asset_name text,
    asset_id text,
    alternative_identifier text,
    trade_date text,
    open_date text,
    tax_status text,
    emv text,
    units text,
    cost_basis text,
    proceeds text,
    realized_lt text,
    realized_st text,
    unrealized_st text,
    unrealized_lt text,
    unit_cost text,
    unrealized_st_accrual text,
    unrealized_lt_accrual text,
    accrual text,
    ytd_short_term_realized_gain text,
    ytd_long_term_realized_gain text,
    price_factor text,
    paydown_factor text,
    ordinal text,
    cash text,
    effective_end_date text,
    file_name text
)
PARTITION BY RANGE (file_date);
CREATE SEQUENCE public.accounts_cost_basis_new_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.accounts_cost_basis_new_id_seq OWNED BY public.accounts_cost_basis.id;
CREATE TABLE public.accounts_cost_basis_2024_q1 (
    id integer DEFAULT nextval('public.accounts_cost_basis_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    blackdiamond_holding_id text,
    blackdiamond_tax_lot_id text,
    ticker text,
    display_cusip text,
    cusip text,
    asset_name text,
    asset_id text,
    alternative_identifier text,
    trade_date text,
    open_date text,
    tax_status text,
    emv text,
    units text,
    cost_basis text,
    proceeds text,
    realized_lt text,
    realized_st text,
    unrealized_st text,
    unrealized_lt text,
    unit_cost text,
    unrealized_st_accrual text,
    unrealized_lt_accrual text,
    accrual text,
    ytd_short_term_realized_gain text,
    ytd_long_term_realized_gain text,
    price_factor text,
    paydown_factor text,
    ordinal text,
    cash text,
    effective_end_date text,
    file_name text
);
CREATE TABLE public.accounts_cost_basis_2024_q2 (
    id integer DEFAULT nextval('public.accounts_cost_basis_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    blackdiamond_holding_id text,
    blackdiamond_tax_lot_id text,
    ticker text,
    display_cusip text,
    cusip text,
    asset_name text,
    asset_id text,
    alternative_identifier text,
    trade_date text,
    open_date text,
    tax_status text,
    emv text,
    units text,
    cost_basis text,
    proceeds text,
    realized_lt text,
    realized_st text,
    unrealized_st text,
    unrealized_lt text,
    unit_cost text,
    unrealized_st_accrual text,
    unrealized_lt_accrual text,
    accrual text,
    ytd_short_term_realized_gain text,
    ytd_long_term_realized_gain text,
    price_factor text,
    paydown_factor text,
    ordinal text,
    cash text,
    effective_end_date text,
    file_name text
);
CREATE TABLE public.accounts_cost_basis_2024_q3 (
    id integer DEFAULT nextval('public.accounts_cost_basis_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    blackdiamond_holding_id text,
    blackdiamond_tax_lot_id text,
    ticker text,
    display_cusip text,
    cusip text,
    asset_name text,
    asset_id text,
    alternative_identifier text,
    trade_date text,
    open_date text,
    tax_status text,
    emv text,
    units text,
    cost_basis text,
    proceeds text,
    realized_lt text,
    realized_st text,
    unrealized_st text,
    unrealized_lt text,
    unit_cost text,
    unrealized_st_accrual text,
    unrealized_lt_accrual text,
    accrual text,
    ytd_short_term_realized_gain text,
    ytd_long_term_realized_gain text,
    price_factor text,
    paydown_factor text,
    ordinal text,
    cash text,
    effective_end_date text,
    file_name text
);
CREATE TABLE public.accounts_cost_basis_2024_q4 (
    id integer DEFAULT nextval('public.accounts_cost_basis_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    blackdiamond_holding_id text,
    blackdiamond_tax_lot_id text,
    ticker text,
    display_cusip text,
    cusip text,
    asset_name text,
    asset_id text,
    alternative_identifier text,
    trade_date text,
    open_date text,
    tax_status text,
    emv text,
    units text,
    cost_basis text,
    proceeds text,
    realized_lt text,
    realized_st text,
    unrealized_st text,
    unrealized_lt text,
    unit_cost text,
    unrealized_st_accrual text,
    unrealized_lt_accrual text,
    accrual text,
    ytd_short_term_realized_gain text,
    ytd_long_term_realized_gain text,
    price_factor text,
    paydown_factor text,
    ordinal text,
    cash text,
    effective_end_date text,
    file_name text
);
CREATE TABLE public.accounts_cost_basis_2025_q1 (
    id integer DEFAULT nextval('public.accounts_cost_basis_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    blackdiamond_holding_id text,
    blackdiamond_tax_lot_id text,
    ticker text,
    display_cusip text,
    cusip text,
    asset_name text,
    asset_id text,
    alternative_identifier text,
    trade_date text,
    open_date text,
    tax_status text,
    emv text,
    units text,
    cost_basis text,
    proceeds text,
    realized_lt text,
    realized_st text,
    unrealized_st text,
    unrealized_lt text,
    unit_cost text,
    unrealized_st_accrual text,
    unrealized_lt_accrual text,
    accrual text,
    ytd_short_term_realized_gain text,
    ytd_long_term_realized_gain text,
    price_factor text,
    paydown_factor text,
    ordinal text,
    cash text,
    effective_end_date text,
    file_name text
);
CREATE TABLE public.accounts_cost_basis_2025_q2 (
    id integer DEFAULT nextval('public.accounts_cost_basis_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    blackdiamond_holding_id text,
    blackdiamond_tax_lot_id text,
    ticker text,
    display_cusip text,
    cusip text,
    asset_name text,
    asset_id text,
    alternative_identifier text,
    trade_date text,
    open_date text,
    tax_status text,
    emv text,
    units text,
    cost_basis text,
    proceeds text,
    realized_lt text,
    realized_st text,
    unrealized_st text,
    unrealized_lt text,
    unit_cost text,
    unrealized_st_accrual text,
    unrealized_lt_accrual text,
    accrual text,
    ytd_short_term_realized_gain text,
    ytd_long_term_realized_gain text,
    price_factor text,
    paydown_factor text,
    ordinal text,
    cash text,
    effective_end_date text,
    file_name text
);
CREATE TABLE public.accounts_cost_basis_2025_q3 (
    id integer DEFAULT nextval('public.accounts_cost_basis_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    blackdiamond_holding_id text,
    blackdiamond_tax_lot_id text,
    ticker text,
    display_cusip text,
    cusip text,
    asset_name text,
    asset_id text,
    alternative_identifier text,
    trade_date text,
    open_date text,
    tax_status text,
    emv text,
    units text,
    cost_basis text,
    proceeds text,
    realized_lt text,
    realized_st text,
    unrealized_st text,
    unrealized_lt text,
    unit_cost text,
    unrealized_st_accrual text,
    unrealized_lt_accrual text,
    accrual text,
    ytd_short_term_realized_gain text,
    ytd_long_term_realized_gain text,
    price_factor text,
    paydown_factor text,
    ordinal text,
    cash text,
    effective_end_date text,
    file_name text
);
CREATE TABLE public.accounts_cost_basis_2025_q4 (
    id integer DEFAULT nextval('public.accounts_cost_basis_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    blackdiamond_holding_id text,
    blackdiamond_tax_lot_id text,
    ticker text,
    display_cusip text,
    cusip text,
    asset_name text,
    asset_id text,
    alternative_identifier text,
    trade_date text,
    open_date text,
    tax_status text,
    emv text,
    units text,
    cost_basis text,
    proceeds text,
    realized_lt text,
    realized_st text,
    unrealized_st text,
    unrealized_lt text,
    unit_cost text,
    unrealized_st_accrual text,
    unrealized_lt_accrual text,
    accrual text,
    ytd_short_term_realized_gain text,
    ytd_long_term_realized_gain text,
    price_factor text,
    paydown_factor text,
    ordinal text,
    cash text,
    effective_end_date text,
    file_name text
);
CREATE TABLE public.accounts_details (
    id integer NOT NULL,
    blackdiamond_account_id text,
    max_account_as_of_date text,
    total_emv text,
    unsupervised_emv text,
    supervised_emv text,
    realized_short_term_gain_loss text,
    realized_long_term_gain_loss text,
    file_name text,
    file_date text
);
CREATE SEQUENCE public.accounts_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.accounts_details_id_seq OWNED BY public.accounts_details.id;
CREATE TABLE public.accounts_holdings (
    id integer NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    blackdiamond_holding_id text,
    as_of_date text,
    asset_id text,
    ticker text,
    display_cusip text,
    cusip text,
    alternate_id text,
    asset_name text,
    asset_name_short text,
    class_name text,
    class_id text,
    segment_name text,
    segment_id text,
    discretionary text,
    issue_type text,
    provider_issue_type text,
    supervised text,
    units text,
    billable text,
    money_market text,
    market_value text,
    investment_discretion text,
    voting_authority text,
    price_factor text,
    paydown_factor text,
    coupon_rate text,
    muni_state text,
    call_date text,
    yield text,
    sector text,
    cash text,
    asset_tags text,
    maturity_date text,
    accrual text,
    superclass_id text,
    superclass_name text,
    exchange text,
    long_holding text,
    file_name text
)
PARTITION BY RANGE (file_date);
CREATE SEQUENCE public.accounts_holdings_new_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.accounts_holdings_new_id_seq OWNED BY public.accounts_holdings.id;
CREATE TABLE public.accounts_holdings_2024_q1 (
    id integer DEFAULT nextval('public.accounts_holdings_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    blackdiamond_holding_id text,
    as_of_date text,
    asset_id text,
    ticker text,
    display_cusip text,
    cusip text,
    alternate_id text,
    asset_name text,
    asset_name_short text,
    class_name text,
    class_id text,
    segment_name text,
    segment_id text,
    discretionary text,
    issue_type text,
    provider_issue_type text,
    supervised text,
    units text,
    billable text,
    money_market text,
    market_value text,
    investment_discretion text,
    voting_authority text,
    price_factor text,
    paydown_factor text,
    coupon_rate text,
    muni_state text,
    call_date text,
    yield text,
    sector text,
    cash text,
    asset_tags text,
    maturity_date text,
    accrual text,
    superclass_id text,
    superclass_name text,
    exchange text,
    long_holding text,
    file_name text
);
CREATE TABLE public.accounts_holdings_2024_q2 (
    id integer DEFAULT nextval('public.accounts_holdings_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    blackdiamond_holding_id text,
    as_of_date text,
    asset_id text,
    ticker text,
    display_cusip text,
    cusip text,
    alternate_id text,
    asset_name text,
    asset_name_short text,
    class_name text,
    class_id text,
    segment_name text,
    segment_id text,
    discretionary text,
    issue_type text,
    provider_issue_type text,
    supervised text,
    units text,
    billable text,
    money_market text,
    market_value text,
    investment_discretion text,
    voting_authority text,
    price_factor text,
    paydown_factor text,
    coupon_rate text,
    muni_state text,
    call_date text,
    yield text,
    sector text,
    cash text,
    asset_tags text,
    maturity_date text,
    accrual text,
    superclass_id text,
    superclass_name text,
    exchange text,
    long_holding text,
    file_name text
);
CREATE TABLE public.accounts_holdings_2024_q3 (
    id integer DEFAULT nextval('public.accounts_holdings_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    blackdiamond_holding_id text,
    as_of_date text,
    asset_id text,
    ticker text,
    display_cusip text,
    cusip text,
    alternate_id text,
    asset_name text,
    asset_name_short text,
    class_name text,
    class_id text,
    segment_name text,
    segment_id text,
    discretionary text,
    issue_type text,
    provider_issue_type text,
    supervised text,
    units text,
    billable text,
    money_market text,
    market_value text,
    investment_discretion text,
    voting_authority text,
    price_factor text,
    paydown_factor text,
    coupon_rate text,
    muni_state text,
    call_date text,
    yield text,
    sector text,
    cash text,
    asset_tags text,
    maturity_date text,
    accrual text,
    superclass_id text,
    superclass_name text,
    exchange text,
    long_holding text,
    file_name text
);
CREATE TABLE public.accounts_holdings_2024_q4 (
    id integer DEFAULT nextval('public.accounts_holdings_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    blackdiamond_holding_id text,
    as_of_date text,
    asset_id text,
    ticker text,
    display_cusip text,
    cusip text,
    alternate_id text,
    asset_name text,
    asset_name_short text,
    class_name text,
    class_id text,
    segment_name text,
    segment_id text,
    discretionary text,
    issue_type text,
    provider_issue_type text,
    supervised text,
    units text,
    billable text,
    money_market text,
    market_value text,
    investment_discretion text,
    voting_authority text,
    price_factor text,
    paydown_factor text,
    coupon_rate text,
    muni_state text,
    call_date text,
    yield text,
    sector text,
    cash text,
    asset_tags text,
    maturity_date text,
    accrual text,
    superclass_id text,
    superclass_name text,
    exchange text,
    long_holding text,
    file_name text
);
CREATE TABLE public.accounts_holdings_2025_q1 (
    id integer DEFAULT nextval('public.accounts_holdings_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    blackdiamond_holding_id text,
    as_of_date text,
    asset_id text,
    ticker text,
    display_cusip text,
    cusip text,
    alternate_id text,
    asset_name text,
    asset_name_short text,
    class_name text,
    class_id text,
    segment_name text,
    segment_id text,
    discretionary text,
    issue_type text,
    provider_issue_type text,
    supervised text,
    units text,
    billable text,
    money_market text,
    market_value text,
    investment_discretion text,
    voting_authority text,
    price_factor text,
    paydown_factor text,
    coupon_rate text,
    muni_state text,
    call_date text,
    yield text,
    sector text,
    cash text,
    asset_tags text,
    maturity_date text,
    accrual text,
    superclass_id text,
    superclass_name text,
    exchange text,
    long_holding text,
    file_name text
);
CREATE TABLE public.accounts_holdings_2025_q2 (
    id integer DEFAULT nextval('public.accounts_holdings_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    blackdiamond_holding_id text,
    as_of_date text,
    asset_id text,
    ticker text,
    display_cusip text,
    cusip text,
    alternate_id text,
    asset_name text,
    asset_name_short text,
    class_name text,
    class_id text,
    segment_name text,
    segment_id text,
    discretionary text,
    issue_type text,
    provider_issue_type text,
    supervised text,
    units text,
    billable text,
    money_market text,
    market_value text,
    investment_discretion text,
    voting_authority text,
    price_factor text,
    paydown_factor text,
    coupon_rate text,
    muni_state text,
    call_date text,
    yield text,
    sector text,
    cash text,
    asset_tags text,
    maturity_date text,
    accrual text,
    superclass_id text,
    superclass_name text,
    exchange text,
    long_holding text,
    file_name text
);
CREATE TABLE public.accounts_holdings_2025_q3 (
    id integer DEFAULT nextval('public.accounts_holdings_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    blackdiamond_holding_id text,
    as_of_date text,
    asset_id text,
    ticker text,
    display_cusip text,
    cusip text,
    alternate_id text,
    asset_name text,
    asset_name_short text,
    class_name text,
    class_id text,
    segment_name text,
    segment_id text,
    discretionary text,
    issue_type text,
    provider_issue_type text,
    supervised text,
    units text,
    billable text,
    money_market text,
    market_value text,
    investment_discretion text,
    voting_authority text,
    price_factor text,
    paydown_factor text,
    coupon_rate text,
    muni_state text,
    call_date text,
    yield text,
    sector text,
    cash text,
    asset_tags text,
    maturity_date text,
    accrual text,
    superclass_id text,
    superclass_name text,
    exchange text,
    long_holding text,
    file_name text
);
CREATE TABLE public.accounts_holdings_2025_q4 (
    id integer DEFAULT nextval('public.accounts_holdings_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    blackdiamond_holding_id text,
    as_of_date text,
    asset_id text,
    ticker text,
    display_cusip text,
    cusip text,
    alternate_id text,
    asset_name text,
    asset_name_short text,
    class_name text,
    class_id text,
    segment_name text,
    segment_id text,
    discretionary text,
    issue_type text,
    provider_issue_type text,
    supervised text,
    units text,
    billable text,
    money_market text,
    market_value text,
    investment_discretion text,
    voting_authority text,
    price_factor text,
    paydown_factor text,
    coupon_rate text,
    muni_state text,
    call_date text,
    yield text,
    sector text,
    cash text,
    asset_tags text,
    maturity_date text,
    accrual text,
    superclass_id text,
    superclass_name text,
    exchange text,
    long_holding text,
    file_name text
);
CREATE SEQUENCE public.accounts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.accounts_id_seq OWNED BY public.accounts.id;
CREATE TABLE public.accounts_segments_allocations (
    id integer NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    as_of_date text,
    class_name text,
    class_id text,
    segment_name text,
    segment_id text,
    total_emv text,
    supervised_emv text,
    unsupervised_emv text,
    file_name text
)
PARTITION BY RANGE (file_date);
CREATE SEQUENCE public.accounts_segments_allocations_new_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.accounts_segments_allocations_new_id_seq OWNED BY public.accounts_segments_allocations.id;
CREATE TABLE public.accounts_segments_allocations_2024_q1 (
    id integer DEFAULT nextval('public.accounts_segments_allocations_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    as_of_date text,
    class_name text,
    class_id text,
    segment_name text,
    segment_id text,
    total_emv text,
    supervised_emv text,
    unsupervised_emv text,
    file_name text
);
CREATE TABLE public.accounts_segments_allocations_2024_q2 (
    id integer DEFAULT nextval('public.accounts_segments_allocations_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    as_of_date text,
    class_name text,
    class_id text,
    segment_name text,
    segment_id text,
    total_emv text,
    supervised_emv text,
    unsupervised_emv text,
    file_name text
);
CREATE TABLE public.accounts_segments_allocations_2024_q3 (
    id integer DEFAULT nextval('public.accounts_segments_allocations_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    as_of_date text,
    class_name text,
    class_id text,
    segment_name text,
    segment_id text,
    total_emv text,
    supervised_emv text,
    unsupervised_emv text,
    file_name text
);
CREATE TABLE public.accounts_segments_allocations_2024_q4 (
    id integer DEFAULT nextval('public.accounts_segments_allocations_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    as_of_date text,
    class_name text,
    class_id text,
    segment_name text,
    segment_id text,
    total_emv text,
    supervised_emv text,
    unsupervised_emv text,
    file_name text
);
CREATE TABLE public.accounts_segments_allocations_2025_q1 (
    id integer DEFAULT nextval('public.accounts_segments_allocations_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    as_of_date text,
    class_name text,
    class_id text,
    segment_name text,
    segment_id text,
    total_emv text,
    supervised_emv text,
    unsupervised_emv text,
    file_name text
);
CREATE TABLE public.accounts_segments_allocations_2025_q2 (
    id integer DEFAULT nextval('public.accounts_segments_allocations_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    as_of_date text,
    class_name text,
    class_id text,
    segment_name text,
    segment_id text,
    total_emv text,
    supervised_emv text,
    unsupervised_emv text,
    file_name text
);
CREATE TABLE public.accounts_segments_allocations_2025_q3 (
    id integer DEFAULT nextval('public.accounts_segments_allocations_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    as_of_date text,
    class_name text,
    class_id text,
    segment_name text,
    segment_id text,
    total_emv text,
    supervised_emv text,
    unsupervised_emv text,
    file_name text
);
CREATE TABLE public.accounts_segments_allocations_2025_q4 (
    id integer DEFAULT nextval('public.accounts_segments_allocations_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_account_id text,
    as_of_date text,
    class_name text,
    class_id text,
    segment_name text,
    segment_id text,
    total_emv text,
    supervised_emv text,
    unsupervised_emv text,
    file_name text
);
CREATE TABLE public.accounts_tax_lots (
    id integer NOT NULL,
    blackdiamond_account_id text,
    blackdiamond_holding_id text,
    blackdiamond_tax_lot_id text,
    ticker text,
    display_cusip text,
    cusip text,
    asset_name text,
    asset_id text,
    alternative_identifier text,
    trade_date text,
    open_date text,
    tax_status text,
    emv text,
    units text,
    cost_basis text,
    proceeds text,
    realized_lt text,
    realized_st text,
    unrealized_st text,
    unrealized_lt text,
    unit_cost text,
    unrealized_st_accrual text,
    unrealized_lt_accrual text,
    accrual text,
    ytd_short_term_realized_gain text,
    ytd_long_term_realized_gain text,
    price_factor text,
    paydown_factor text,
    ordinal text,
    cash text,
    effective_end_date text,
    file_name text,
    file_date text
);
CREATE SEQUENCE public.accounts_tax_lots_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.accounts_tax_lots_id_seq OWNED BY public.accounts_tax_lots.id;
CREATE TABLE public.accounts_transactions (
    id integer NOT NULL,
    file_date date NOT NULL,
    blackdiamond_holding_id text,
    blackdiamond_account_id text,
    transaction_id text,
    market_value text,
    account_number text,
    ticker text,
    cusip text,
    alternate_id text,
    display_cusip text,
    asset_id text,
    transaction_fee text,
    account_fee text,
    sub_code text,
    trans_code text,
    description text,
    file_code_description text,
    units text,
    return_date text,
    settle_date text,
    trade_date text,
    transaction_type text,
    transaction_sub_type text,
    external_contra_account_id text,
    notes text,
    action text,
    external_flow_affect text,
    issue_type text,
    price text,
    file_name text
)
PARTITION BY RANGE (file_date);
CREATE SEQUENCE public.accounts_transactions_new_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.accounts_transactions_new_id_seq OWNED BY public.accounts_transactions.id;
CREATE TABLE public.accounts_transactions_2024_q1 (
    id integer DEFAULT nextval('public.accounts_transactions_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_holding_id text,
    blackdiamond_account_id text,
    transaction_id text,
    market_value text,
    account_number text,
    ticker text,
    cusip text,
    alternate_id text,
    display_cusip text,
    asset_id text,
    transaction_fee text,
    account_fee text,
    sub_code text,
    trans_code text,
    description text,
    file_code_description text,
    units text,
    return_date text,
    settle_date text,
    trade_date text,
    transaction_type text,
    transaction_sub_type text,
    external_contra_account_id text,
    notes text,
    action text,
    external_flow_affect text,
    issue_type text,
    price text,
    file_name text
);
CREATE TABLE public.accounts_transactions_2024_q2 (
    id integer DEFAULT nextval('public.accounts_transactions_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_holding_id text,
    blackdiamond_account_id text,
    transaction_id text,
    market_value text,
    account_number text,
    ticker text,
    cusip text,
    alternate_id text,
    display_cusip text,
    asset_id text,
    transaction_fee text,
    account_fee text,
    sub_code text,
    trans_code text,
    description text,
    file_code_description text,
    units text,
    return_date text,
    settle_date text,
    trade_date text,
    transaction_type text,
    transaction_sub_type text,
    external_contra_account_id text,
    notes text,
    action text,
    external_flow_affect text,
    issue_type text,
    price text,
    file_name text
);
CREATE TABLE public.accounts_transactions_2024_q3 (
    id integer DEFAULT nextval('public.accounts_transactions_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_holding_id text,
    blackdiamond_account_id text,
    transaction_id text,
    market_value text,
    account_number text,
    ticker text,
    cusip text,
    alternate_id text,
    display_cusip text,
    asset_id text,
    transaction_fee text,
    account_fee text,
    sub_code text,
    trans_code text,
    description text,
    file_code_description text,
    units text,
    return_date text,
    settle_date text,
    trade_date text,
    transaction_type text,
    transaction_sub_type text,
    external_contra_account_id text,
    notes text,
    action text,
    external_flow_affect text,
    issue_type text,
    price text,
    file_name text
);
CREATE TABLE public.accounts_transactions_2024_q4 (
    id integer DEFAULT nextval('public.accounts_transactions_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_holding_id text,
    blackdiamond_account_id text,
    transaction_id text,
    market_value text,
    account_number text,
    ticker text,
    cusip text,
    alternate_id text,
    display_cusip text,
    asset_id text,
    transaction_fee text,
    account_fee text,
    sub_code text,
    trans_code text,
    description text,
    file_code_description text,
    units text,
    return_date text,
    settle_date text,
    trade_date text,
    transaction_type text,
    transaction_sub_type text,
    external_contra_account_id text,
    notes text,
    action text,
    external_flow_affect text,
    issue_type text,
    price text,
    file_name text
);
CREATE TABLE public.accounts_transactions_2025_q1 (
    id integer DEFAULT nextval('public.accounts_transactions_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_holding_id text,
    blackdiamond_account_id text,
    transaction_id text,
    market_value text,
    account_number text,
    ticker text,
    cusip text,
    alternate_id text,
    display_cusip text,
    asset_id text,
    transaction_fee text,
    account_fee text,
    sub_code text,
    trans_code text,
    description text,
    file_code_description text,
    units text,
    return_date text,
    settle_date text,
    trade_date text,
    transaction_type text,
    transaction_sub_type text,
    external_contra_account_id text,
    notes text,
    action text,
    external_flow_affect text,
    issue_type text,
    price text,
    file_name text
);
CREATE TABLE public.accounts_transactions_2025_q2 (
    id integer DEFAULT nextval('public.accounts_transactions_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_holding_id text,
    blackdiamond_account_id text,
    transaction_id text,
    market_value text,
    account_number text,
    ticker text,
    cusip text,
    alternate_id text,
    display_cusip text,
    asset_id text,
    transaction_fee text,
    account_fee text,
    sub_code text,
    trans_code text,
    description text,
    file_code_description text,
    units text,
    return_date text,
    settle_date text,
    trade_date text,
    transaction_type text,
    transaction_sub_type text,
    external_contra_account_id text,
    notes text,
    action text,
    external_flow_affect text,
    issue_type text,
    price text,
    file_name text
);
CREATE TABLE public.accounts_transactions_2025_q3 (
    id integer DEFAULT nextval('public.accounts_transactions_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_holding_id text,
    blackdiamond_account_id text,
    transaction_id text,
    market_value text,
    account_number text,
    ticker text,
    cusip text,
    alternate_id text,
    display_cusip text,
    asset_id text,
    transaction_fee text,
    account_fee text,
    sub_code text,
    trans_code text,
    description text,
    file_code_description text,
    units text,
    return_date text,
    settle_date text,
    trade_date text,
    transaction_type text,
    transaction_sub_type text,
    external_contra_account_id text,
    notes text,
    action text,
    external_flow_affect text,
    issue_type text,
    price text,
    file_name text
);
CREATE TABLE public.accounts_transactions_2025_q4 (
    id integer DEFAULT nextval('public.accounts_transactions_new_id_seq'::regclass) NOT NULL,
    file_date date NOT NULL,
    blackdiamond_holding_id text,
    blackdiamond_account_id text,
    transaction_id text,
    market_value text,
    account_number text,
    ticker text,
    cusip text,
    alternate_id text,
    display_cusip text,
    asset_id text,
    transaction_fee text,
    account_fee text,
    sub_code text,
    trans_code text,
    description text,
    file_code_description text,
    units text,
    return_date text,
    settle_date text,
    trade_date text,
    transaction_type text,
    transaction_sub_type text,
    external_contra_account_id text,
    notes text,
    action text,
    external_flow_affect text,
    issue_type text,
    price text,
    file_name text
);
CREATE TABLE public.assets (
    id integer NOT NULL,
    blackdiamond_asset_id text,
    asset_name text,
    asset_name_short text,
    ticker text,
    cusip text,
    display_cusip text,
    alternate_id text,
    superclass_id text,
    superclass_name text,
    superclass_ordinal text,
    class_name text,
    class_id text,
    class_ordinal text,
    sector_segment text,
    sector_segment_id text,
    sector_segment_ordinal text,
    segment_name text,
    cap_segment_id text,
    cap_segment_ordinal text,
    provider_issue_type text,
    cash text,
    is_cash_equivalent text,
    money_market text,
    archived text,
    original_asset_name text,
    sec_asset_type text,
    coupon_rate text,
    last_dividend text,
    maturity_date text,
    first_payment_date text,
    issue_date text,
    call_date text,
    tax_status text,
    pay_down_factor text,
    price_factor text,
    muni_state text,
    yield text,
    billable text,
    supervised text,
    discretionary text,
    exchange text,
    asset_tags text,
    file_name text,
    file_date text
);
CREATE SEQUENCE public.assets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.assets_id_seq OWNED BY public.assets.id;
CREATE TABLE public.firm_users (
    id integer NOT NULL,
    blackdiamond_firm_user_id text,
    unique_id text,
    all_accounts text,
    expiration_date text,
    role text,
    user_name text,
    first_name text,
    last_name text,
    email text,
    phone text,
    title text,
    external_link text,
    external_link_display_name text,
    active text,
    established text,
    locked text,
    invited text,
    file_name text,
    file_date text
);
CREATE SEQUENCE public.firm_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.firm_users_id_seq OWNED BY public.firm_users.id;
CREATE TABLE public.portfolios (
    id integer NOT NULL,
    blackdiamond_portfolio_id text,
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
    file_name text,
    file_date text
);
CREATE TABLE public.portfolios_accounts (
    id integer NOT NULL,
    blackdiamond_portfolio_id text,
    blackdiamond_account_id text,
    file_name text,
    file_date text
);
CREATE SEQUENCE public.portfolios_accounts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.portfolios_accounts_id_seq OWNED BY public.portfolios_accounts.id;
CREATE TABLE public.portfolios_advisors (
    id integer NOT NULL,
    blackdiamond_firm_user_id text,
    blackdiamond_portfolio_id text,
    first_name text,
    last_name text,
    file_name text,
    file_date text
);
CREATE SEQUENCE public.portfolios_advisors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.portfolios_advisors_id_seq OWNED BY public.portfolios_advisors.id;
CREATE SEQUENCE public.portfolios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.portfolios_id_seq OWNED BY public.portfolios.id;
CREATE TABLE public.strategies (
    id integer NOT NULL,
    name text,
    account_number text,
    program text,
    strategy text,
    tax_status text,
    as_of_date text,
    last_rebalanced text,
    account_type text,
    file_date text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE SEQUENCE public.strategies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.strategies_id_seq OWNED BY public.strategies.id;
CREATE TABLE public.targets (
    id integer NOT NULL,
    blackdiamond_target_id text,
    target text,
    description text,
    target_type text,
    file_name text,
    file_date text
);
CREATE TABLE public.targets_accounts_portfolios (
    id integer NOT NULL,
    blackdiamond_target_id text,
    blackdiamond_account_id text,
    blackdiamond_portfolio_id text,
    file_date text
);
CREATE SEQUENCE public.targets_accounts_portfolios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.targets_accounts_portfolios_id_seq OWNED BY public.targets_accounts_portfolios.id;
CREATE TABLE public.targets_components (
    id integer NOT NULL,
    blackdiamond_target_id text,
    blackdiamond_asset_id text,
    component_name text,
    class_name text,
    segment text,
    allocation text,
    tolerance_lower text,
    tolerance_upper text,
    file_name text,
    file_date text
);
CREATE SEQUENCE public.targets_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.targets_components_id_seq OWNED BY public.targets_components.id;
CREATE SEQUENCE public.targets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.targets_id_seq OWNED BY public.targets.id;
ALTER TABLE ONLY public.accounts_class_allocations ATTACH PARTITION public.accounts_class_allocations_2024_q1 FOR VALUES FROM ('2024-01-01') TO ('2024-04-01');
ALTER TABLE ONLY public.accounts_class_allocations ATTACH PARTITION public.accounts_class_allocations_2024_q2 FOR VALUES FROM ('2024-04-01') TO ('2024-07-01');
ALTER TABLE ONLY public.accounts_class_allocations ATTACH PARTITION public.accounts_class_allocations_2024_q3 FOR VALUES FROM ('2024-07-01') TO ('2024-10-01');
ALTER TABLE ONLY public.accounts_class_allocations ATTACH PARTITION public.accounts_class_allocations_2024_q4 FOR VALUES FROM ('2024-10-01') TO ('2025-01-01');
ALTER TABLE ONLY public.accounts_class_allocations ATTACH PARTITION public.accounts_class_allocations_2025_q1 FOR VALUES FROM ('2025-01-01') TO ('2025-04-01');
ALTER TABLE ONLY public.accounts_class_allocations ATTACH PARTITION public.accounts_class_allocations_2025_q2 FOR VALUES FROM ('2025-04-01') TO ('2025-07-01');
ALTER TABLE ONLY public.accounts_class_allocations ATTACH PARTITION public.accounts_class_allocations_2025_q3 FOR VALUES FROM ('2025-07-01') TO ('2025-10-01');
ALTER TABLE ONLY public.accounts_class_allocations ATTACH PARTITION public.accounts_class_allocations_2025_q4 FOR VALUES FROM ('2025-10-01') TO ('2026-01-01');
ALTER TABLE ONLY public.accounts_cost_basis ATTACH PARTITION public.accounts_cost_basis_2024_q1 FOR VALUES FROM ('2024-01-01') TO ('2024-04-01');
ALTER TABLE ONLY public.accounts_cost_basis ATTACH PARTITION public.accounts_cost_basis_2024_q2 FOR VALUES FROM ('2024-04-01') TO ('2024-07-01');
ALTER TABLE ONLY public.accounts_cost_basis ATTACH PARTITION public.accounts_cost_basis_2024_q3 FOR VALUES FROM ('2024-07-01') TO ('2024-10-01');
ALTER TABLE ONLY public.accounts_cost_basis ATTACH PARTITION public.accounts_cost_basis_2024_q4 FOR VALUES FROM ('2024-10-01') TO ('2025-01-01');
ALTER TABLE ONLY public.accounts_cost_basis ATTACH PARTITION public.accounts_cost_basis_2025_q1 FOR VALUES FROM ('2025-01-01') TO ('2025-04-01');
ALTER TABLE ONLY public.accounts_cost_basis ATTACH PARTITION public.accounts_cost_basis_2025_q2 FOR VALUES FROM ('2025-04-01') TO ('2025-07-01');
ALTER TABLE ONLY public.accounts_cost_basis ATTACH PARTITION public.accounts_cost_basis_2025_q3 FOR VALUES FROM ('2025-07-01') TO ('2025-10-01');
ALTER TABLE ONLY public.accounts_cost_basis ATTACH PARTITION public.accounts_cost_basis_2025_q4 FOR VALUES FROM ('2025-10-01') TO ('2026-01-01');
ALTER TABLE ONLY public.accounts_holdings ATTACH PARTITION public.accounts_holdings_2024_q1 FOR VALUES FROM ('2024-01-01') TO ('2024-04-01');
ALTER TABLE ONLY public.accounts_holdings ATTACH PARTITION public.accounts_holdings_2024_q2 FOR VALUES FROM ('2024-04-01') TO ('2024-07-01');
ALTER TABLE ONLY public.accounts_holdings ATTACH PARTITION public.accounts_holdings_2024_q3 FOR VALUES FROM ('2024-07-01') TO ('2024-10-01');
ALTER TABLE ONLY public.accounts_holdings ATTACH PARTITION public.accounts_holdings_2024_q4 FOR VALUES FROM ('2024-10-01') TO ('2025-01-01');
ALTER TABLE ONLY public.accounts_holdings ATTACH PARTITION public.accounts_holdings_2025_q1 FOR VALUES FROM ('2025-01-01') TO ('2025-04-01');
ALTER TABLE ONLY public.accounts_holdings ATTACH PARTITION public.accounts_holdings_2025_q2 FOR VALUES FROM ('2025-04-01') TO ('2025-07-01');
ALTER TABLE ONLY public.accounts_holdings ATTACH PARTITION public.accounts_holdings_2025_q3 FOR VALUES FROM ('2025-07-01') TO ('2025-10-01');
ALTER TABLE ONLY public.accounts_holdings ATTACH PARTITION public.accounts_holdings_2025_q4 FOR VALUES FROM ('2025-10-01') TO ('2026-01-01');
ALTER TABLE ONLY public.accounts_segments_allocations ATTACH PARTITION public.accounts_segments_allocations_2024_q1 FOR VALUES FROM ('2024-01-01') TO ('2024-04-01');
ALTER TABLE ONLY public.accounts_segments_allocations ATTACH PARTITION public.accounts_segments_allocations_2024_q2 FOR VALUES FROM ('2024-04-01') TO ('2024-07-01');
ALTER TABLE ONLY public.accounts_segments_allocations ATTACH PARTITION public.accounts_segments_allocations_2024_q3 FOR VALUES FROM ('2024-07-01') TO ('2024-10-01');
ALTER TABLE ONLY public.accounts_segments_allocations ATTACH PARTITION public.accounts_segments_allocations_2024_q4 FOR VALUES FROM ('2024-10-01') TO ('2025-01-01');
ALTER TABLE ONLY public.accounts_segments_allocations ATTACH PARTITION public.accounts_segments_allocations_2025_q1 FOR VALUES FROM ('2025-01-01') TO ('2025-04-01');
ALTER TABLE ONLY public.accounts_segments_allocations ATTACH PARTITION public.accounts_segments_allocations_2025_q2 FOR VALUES FROM ('2025-04-01') TO ('2025-07-01');
ALTER TABLE ONLY public.accounts_segments_allocations ATTACH PARTITION public.accounts_segments_allocations_2025_q3 FOR VALUES FROM ('2025-07-01') TO ('2025-10-01');
ALTER TABLE ONLY public.accounts_segments_allocations ATTACH PARTITION public.accounts_segments_allocations_2025_q4 FOR VALUES FROM ('2025-10-01') TO ('2026-01-01');
ALTER TABLE ONLY public.accounts_transactions ATTACH PARTITION public.accounts_transactions_2024_q1 FOR VALUES FROM ('2024-01-01') TO ('2024-04-01');
ALTER TABLE ONLY public.accounts_transactions ATTACH PARTITION public.accounts_transactions_2024_q2 FOR VALUES FROM ('2024-04-01') TO ('2024-07-01');
ALTER TABLE ONLY public.accounts_transactions ATTACH PARTITION public.accounts_transactions_2024_q3 FOR VALUES FROM ('2024-07-01') TO ('2024-10-01');
ALTER TABLE ONLY public.accounts_transactions ATTACH PARTITION public.accounts_transactions_2024_q4 FOR VALUES FROM ('2024-10-01') TO ('2025-01-01');
ALTER TABLE ONLY public.accounts_transactions ATTACH PARTITION public.accounts_transactions_2025_q1 FOR VALUES FROM ('2025-01-01') TO ('2025-04-01');
ALTER TABLE ONLY public.accounts_transactions ATTACH PARTITION public.accounts_transactions_2025_q2 FOR VALUES FROM ('2025-04-01') TO ('2025-07-01');
ALTER TABLE ONLY public.accounts_transactions ATTACH PARTITION public.accounts_transactions_2025_q3 FOR VALUES FROM ('2025-07-01') TO ('2025-10-01');
ALTER TABLE ONLY public.accounts_transactions ATTACH PARTITION public.accounts_transactions_2025_q4 FOR VALUES FROM ('2025-10-01') TO ('2026-01-01');
ALTER TABLE ONLY public.accounts ALTER COLUMN id SET DEFAULT nextval('public.accounts_id_seq'::regclass);
ALTER TABLE ONLY public.accounts_class_allocations ALTER COLUMN id SET DEFAULT nextval('public.accounts_class_allocations_new_id_seq'::regclass);
ALTER TABLE ONLY public.accounts_cost_basis ALTER COLUMN id SET DEFAULT nextval('public.accounts_cost_basis_new_id_seq'::regclass);
ALTER TABLE ONLY public.accounts_details ALTER COLUMN id SET DEFAULT nextval('public.accounts_details_id_seq'::regclass);
ALTER TABLE ONLY public.accounts_holdings ALTER COLUMN id SET DEFAULT nextval('public.accounts_holdings_new_id_seq'::regclass);
ALTER TABLE ONLY public.accounts_segments_allocations ALTER COLUMN id SET DEFAULT nextval('public.accounts_segments_allocations_new_id_seq'::regclass);
ALTER TABLE ONLY public.accounts_tax_lots ALTER COLUMN id SET DEFAULT nextval('public.accounts_tax_lots_id_seq'::regclass);
ALTER TABLE ONLY public.accounts_transactions ALTER COLUMN id SET DEFAULT nextval('public.accounts_transactions_new_id_seq'::regclass);
ALTER TABLE ONLY public.assets ALTER COLUMN id SET DEFAULT nextval('public.assets_id_seq'::regclass);
ALTER TABLE ONLY public.firm_users ALTER COLUMN id SET DEFAULT nextval('public.firm_users_id_seq'::regclass);
ALTER TABLE ONLY public.portfolios ALTER COLUMN id SET DEFAULT nextval('public.portfolios_id_seq'::regclass);
ALTER TABLE ONLY public.portfolios_accounts ALTER COLUMN id SET DEFAULT nextval('public.portfolios_accounts_id_seq'::regclass);
ALTER TABLE ONLY public.portfolios_advisors ALTER COLUMN id SET DEFAULT nextval('public.portfolios_advisors_id_seq'::regclass);
ALTER TABLE ONLY public.strategies ALTER COLUMN id SET DEFAULT nextval('public.strategies_id_seq'::regclass);
ALTER TABLE ONLY public.targets ALTER COLUMN id SET DEFAULT nextval('public.targets_id_seq'::regclass);
ALTER TABLE ONLY public.targets_accounts_portfolios ALTER COLUMN id SET DEFAULT nextval('public.targets_accounts_portfolios_id_seq'::regclass);
ALTER TABLE ONLY public.targets_components ALTER COLUMN id SET DEFAULT nextval('public.targets_components_id_seq'::regclass);
ALTER TABLE ONLY public.accounts_class_allocations
    ADD CONSTRAINT accounts_class_allocations_new_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_class_allocations_2024_q1
    ADD CONSTRAINT accounts_class_allocations_2024_q1_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_class_allocations_2024_q2
    ADD CONSTRAINT accounts_class_allocations_2024_q2_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_class_allocations_2024_q3
    ADD CONSTRAINT accounts_class_allocations_2024_q3_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_class_allocations_2024_q4
    ADD CONSTRAINT accounts_class_allocations_2024_q4_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_class_allocations_2025_q1
    ADD CONSTRAINT accounts_class_allocations_2025_q1_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_class_allocations_2025_q2
    ADD CONSTRAINT accounts_class_allocations_2025_q2_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_class_allocations_2025_q3
    ADD CONSTRAINT accounts_class_allocations_2025_q3_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_class_allocations_2025_q4
    ADD CONSTRAINT accounts_class_allocations_2025_q4_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_cost_basis
    ADD CONSTRAINT accounts_cost_basis_new_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_cost_basis_2024_q1
    ADD CONSTRAINT accounts_cost_basis_2024_q1_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_cost_basis_2024_q2
    ADD CONSTRAINT accounts_cost_basis_2024_q2_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_cost_basis_2024_q3
    ADD CONSTRAINT accounts_cost_basis_2024_q3_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_cost_basis_2024_q4
    ADD CONSTRAINT accounts_cost_basis_2024_q4_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_cost_basis_2025_q1
    ADD CONSTRAINT accounts_cost_basis_2025_q1_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_cost_basis_2025_q2
    ADD CONSTRAINT accounts_cost_basis_2025_q2_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_cost_basis_2025_q3
    ADD CONSTRAINT accounts_cost_basis_2025_q3_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_cost_basis_2025_q4
    ADD CONSTRAINT accounts_cost_basis_2025_q4_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_details
    ADD CONSTRAINT accounts_details_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.accounts_holdings
    ADD CONSTRAINT accounts_holdings_new_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_holdings_2024_q1
    ADD CONSTRAINT accounts_holdings_2024_q1_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_holdings_2024_q2
    ADD CONSTRAINT accounts_holdings_2024_q2_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_holdings_2024_q3
    ADD CONSTRAINT accounts_holdings_2024_q3_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_holdings_2024_q4
    ADD CONSTRAINT accounts_holdings_2024_q4_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_holdings_2025_q1
    ADD CONSTRAINT accounts_holdings_2025_q1_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_holdings_2025_q2
    ADD CONSTRAINT accounts_holdings_2025_q2_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_holdings_2025_q3
    ADD CONSTRAINT accounts_holdings_2025_q3_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_holdings_2025_q4
    ADD CONSTRAINT accounts_holdings_2025_q4_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.accounts_segments_allocations
    ADD CONSTRAINT accounts_segments_allocations_new_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_segments_allocations_2024_q1
    ADD CONSTRAINT accounts_segments_allocations_2024_q1_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_segments_allocations_2024_q2
    ADD CONSTRAINT accounts_segments_allocations_2024_q2_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_segments_allocations_2024_q3
    ADD CONSTRAINT accounts_segments_allocations_2024_q3_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_segments_allocations_2024_q4
    ADD CONSTRAINT accounts_segments_allocations_2024_q4_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_segments_allocations_2025_q1
    ADD CONSTRAINT accounts_segments_allocations_2025_q1_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_segments_allocations_2025_q2
    ADD CONSTRAINT accounts_segments_allocations_2025_q2_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_segments_allocations_2025_q3
    ADD CONSTRAINT accounts_segments_allocations_2025_q3_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_segments_allocations_2025_q4
    ADD CONSTRAINT accounts_segments_allocations_2025_q4_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_tax_lots
    ADD CONSTRAINT accounts_tax_lots_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.accounts_transactions
    ADD CONSTRAINT accounts_transactions_new_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_transactions_2024_q1
    ADD CONSTRAINT accounts_transactions_2024_q1_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_transactions_2024_q2
    ADD CONSTRAINT accounts_transactions_2024_q2_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_transactions_2024_q3
    ADD CONSTRAINT accounts_transactions_2024_q3_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_transactions_2024_q4
    ADD CONSTRAINT accounts_transactions_2024_q4_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_transactions_2025_q1
    ADD CONSTRAINT accounts_transactions_2025_q1_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_transactions_2025_q2
    ADD CONSTRAINT accounts_transactions_2025_q2_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_transactions_2025_q3
    ADD CONSTRAINT accounts_transactions_2025_q3_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.accounts_transactions_2025_q4
    ADD CONSTRAINT accounts_transactions_2025_q4_pkey PRIMARY KEY (id, file_date);
ALTER TABLE ONLY public.assets
    ADD CONSTRAINT assets_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.firm_users
    ADD CONSTRAINT firm_users_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.portfolios_accounts
    ADD CONSTRAINT portfolios_accounts_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.portfolios_advisors
    ADD CONSTRAINT portfolios_advisors_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.portfolios
    ADD CONSTRAINT portfolios_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.strategies
    ADD CONSTRAINT strategies_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.targets_accounts_portfolios
    ADD CONSTRAINT targets_accounts_portfolios_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.targets_components
    ADD CONSTRAINT targets_components_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.targets
    ADD CONSTRAINT targets_pkey PRIMARY KEY (id);
CREATE INDEX idx_accounts_class_allocations_file_date_partitionated_n ON ONLY public.accounts_class_allocations USING btree (file_date);
CREATE INDEX accounts_class_allocations_2024_q1_file_date_idx ON public.accounts_class_allocations_2024_q1 USING btree (file_date);
CREATE INDEX accounts_class_allocations_2024_q2_file_date_idx ON public.accounts_class_allocations_2024_q2 USING btree (file_date);
CREATE INDEX accounts_class_allocations_2024_q3_file_date_idx ON public.accounts_class_allocations_2024_q3 USING btree (file_date);
CREATE INDEX accounts_class_allocations_2024_q4_file_date_idx ON public.accounts_class_allocations_2024_q4 USING btree (file_date);
CREATE INDEX accounts_class_allocations_2025_q1_file_date_idx ON public.accounts_class_allocations_2025_q1 USING btree (file_date);
CREATE INDEX accounts_class_allocations_2025_q2_file_date_idx ON public.accounts_class_allocations_2025_q2 USING btree (file_date);
CREATE INDEX accounts_class_allocations_2025_q3_file_date_idx ON public.accounts_class_allocations_2025_q3 USING btree (file_date);
CREATE INDEX accounts_class_allocations_2025_q4_file_date_idx ON public.accounts_class_allocations_2025_q4 USING btree (file_date);
CREATE INDEX idx_accounts_cost_basis_file_date_partitionated ON ONLY public.accounts_cost_basis USING btree (file_date);
CREATE INDEX accounts_cost_basis_2024_q1_file_date_idx ON public.accounts_cost_basis_2024_q1 USING btree (file_date);
CREATE INDEX accounts_cost_basis_2024_q2_file_date_idx ON public.accounts_cost_basis_2024_q2 USING btree (file_date);
CREATE INDEX accounts_cost_basis_2024_q3_file_date_idx ON public.accounts_cost_basis_2024_q3 USING btree (file_date);
CREATE INDEX accounts_cost_basis_2024_q4_file_date_idx ON public.accounts_cost_basis_2024_q4 USING btree (file_date);
CREATE INDEX accounts_cost_basis_2025_q1_file_date_idx ON public.accounts_cost_basis_2025_q1 USING btree (file_date);
CREATE INDEX accounts_cost_basis_2025_q2_file_date_idx ON public.accounts_cost_basis_2025_q2 USING btree (file_date);
CREATE INDEX accounts_cost_basis_2025_q3_file_date_idx ON public.accounts_cost_basis_2025_q3 USING btree (file_date);
CREATE INDEX accounts_cost_basis_2025_q4_file_date_idx ON public.accounts_cost_basis_2025_q4 USING btree (file_date);
CREATE INDEX idx_accounts_holdings_file_date_partitionate ON ONLY public.accounts_holdings USING btree (file_date);
CREATE INDEX accounts_holdings_2024_q1_file_date_idx ON public.accounts_holdings_2024_q1 USING btree (file_date);
CREATE INDEX accounts_holdings_2024_q2_file_date_idx ON public.accounts_holdings_2024_q2 USING btree (file_date);
CREATE INDEX accounts_holdings_2024_q3_file_date_idx ON public.accounts_holdings_2024_q3 USING btree (file_date);
CREATE INDEX accounts_holdings_2024_q4_file_date_idx ON public.accounts_holdings_2024_q4 USING btree (file_date);
CREATE INDEX accounts_holdings_2025_q1_file_date_idx ON public.accounts_holdings_2025_q1 USING btree (file_date);
CREATE INDEX accounts_holdings_2025_q2_file_date_idx ON public.accounts_holdings_2025_q2 USING btree (file_date);
CREATE INDEX accounts_holdings_2025_q3_file_date_idx ON public.accounts_holdings_2025_q3 USING btree (file_date);
CREATE INDEX accounts_holdings_2025_q4_file_date_idx ON public.accounts_holdings_2025_q4 USING btree (file_date);
CREATE INDEX idx_accounts_segments_allocations_file_date_partitionated ON ONLY public.accounts_segments_allocations USING btree (file_date);
CREATE INDEX accounts_segments_allocations_2024_q1_file_date_idx ON public.accounts_segments_allocations_2024_q1 USING btree (file_date);
CREATE INDEX accounts_segments_allocations_2024_q2_file_date_idx ON public.accounts_segments_allocations_2024_q2 USING btree (file_date);
CREATE INDEX accounts_segments_allocations_2024_q3_file_date_idx ON public.accounts_segments_allocations_2024_q3 USING btree (file_date);
CREATE INDEX accounts_segments_allocations_2024_q4_file_date_idx ON public.accounts_segments_allocations_2024_q4 USING btree (file_date);
CREATE INDEX accounts_segments_allocations_2025_q1_file_date_idx ON public.accounts_segments_allocations_2025_q1 USING btree (file_date);
CREATE INDEX accounts_segments_allocations_2025_q2_file_date_idx ON public.accounts_segments_allocations_2025_q2 USING btree (file_date);
CREATE INDEX accounts_segments_allocations_2025_q3_file_date_idx ON public.accounts_segments_allocations_2025_q3 USING btree (file_date);
CREATE INDEX accounts_segments_allocations_2025_q4_file_date_idx ON public.accounts_segments_allocations_2025_q4 USING btree (file_date);
CREATE INDEX idx_accounts_transactions_file_date_partitionated ON ONLY public.accounts_transactions USING btree (file_date);
CREATE INDEX accounts_transactions_2024_q1_file_date_idx ON public.accounts_transactions_2024_q1 USING btree (file_date);
CREATE INDEX accounts_transactions_2024_q2_file_date_idx ON public.accounts_transactions_2024_q2 USING btree (file_date);
CREATE INDEX accounts_transactions_2024_q3_file_date_idx ON public.accounts_transactions_2024_q3 USING btree (file_date);
CREATE INDEX accounts_transactions_2024_q4_file_date_idx ON public.accounts_transactions_2024_q4 USING btree (file_date);
CREATE INDEX accounts_transactions_2025_q1_file_date_idx ON public.accounts_transactions_2025_q1 USING btree (file_date);
CREATE INDEX accounts_transactions_2025_q2_file_date_idx ON public.accounts_transactions_2025_q2 USING btree (file_date);
CREATE INDEX accounts_transactions_2025_q3_file_date_idx ON public.accounts_transactions_2025_q3 USING btree (file_date);
CREATE INDEX accounts_transactions_2025_q4_file_date_idx ON public.accounts_transactions_2025_q4 USING btree (file_date);
CREATE INDEX idx_targets_accounts_portfolios_file_date ON public.targets_accounts_portfolios USING btree (file_date);
ALTER INDEX public.idx_accounts_class_allocations_file_date_partitionated_n ATTACH PARTITION public.accounts_class_allocations_2024_q1_file_date_idx;
ALTER INDEX public.accounts_class_allocations_new_pkey ATTACH PARTITION public.accounts_class_allocations_2024_q1_pkey;
ALTER INDEX public.idx_accounts_class_allocations_file_date_partitionated_n ATTACH PARTITION public.accounts_class_allocations_2024_q2_file_date_idx;
ALTER INDEX public.accounts_class_allocations_new_pkey ATTACH PARTITION public.accounts_class_allocations_2024_q2_pkey;
ALTER INDEX public.idx_accounts_class_allocations_file_date_partitionated_n ATTACH PARTITION public.accounts_class_allocations_2024_q3_file_date_idx;
ALTER INDEX public.accounts_class_allocations_new_pkey ATTACH PARTITION public.accounts_class_allocations_2024_q3_pkey;
ALTER INDEX public.idx_accounts_class_allocations_file_date_partitionated_n ATTACH PARTITION public.accounts_class_allocations_2024_q4_file_date_idx;
ALTER INDEX public.accounts_class_allocations_new_pkey ATTACH PARTITION public.accounts_class_allocations_2024_q4_pkey;
ALTER INDEX public.idx_accounts_class_allocations_file_date_partitionated_n ATTACH PARTITION public.accounts_class_allocations_2025_q1_file_date_idx;
ALTER INDEX public.accounts_class_allocations_new_pkey ATTACH PARTITION public.accounts_class_allocations_2025_q1_pkey;
ALTER INDEX public.idx_accounts_class_allocations_file_date_partitionated_n ATTACH PARTITION public.accounts_class_allocations_2025_q2_file_date_idx;
ALTER INDEX public.accounts_class_allocations_new_pkey ATTACH PARTITION public.accounts_class_allocations_2025_q2_pkey;
ALTER INDEX public.idx_accounts_class_allocations_file_date_partitionated_n ATTACH PARTITION public.accounts_class_allocations_2025_q3_file_date_idx;
ALTER INDEX public.accounts_class_allocations_new_pkey ATTACH PARTITION public.accounts_class_allocations_2025_q3_pkey;
ALTER INDEX public.idx_accounts_class_allocations_file_date_partitionated_n ATTACH PARTITION public.accounts_class_allocations_2025_q4_file_date_idx;
ALTER INDEX public.accounts_class_allocations_new_pkey ATTACH PARTITION public.accounts_class_allocations_2025_q4_pkey;
ALTER INDEX public.idx_accounts_cost_basis_file_date_partitionated ATTACH PARTITION public.accounts_cost_basis_2024_q1_file_date_idx;
ALTER INDEX public.accounts_cost_basis_new_pkey ATTACH PARTITION public.accounts_cost_basis_2024_q1_pkey;
ALTER INDEX public.idx_accounts_cost_basis_file_date_partitionated ATTACH PARTITION public.accounts_cost_basis_2024_q2_file_date_idx;
ALTER INDEX public.accounts_cost_basis_new_pkey ATTACH PARTITION public.accounts_cost_basis_2024_q2_pkey;
ALTER INDEX public.idx_accounts_cost_basis_file_date_partitionated ATTACH PARTITION public.accounts_cost_basis_2024_q3_file_date_idx;
ALTER INDEX public.accounts_cost_basis_new_pkey ATTACH PARTITION public.accounts_cost_basis_2024_q3_pkey;
ALTER INDEX public.idx_accounts_cost_basis_file_date_partitionated ATTACH PARTITION public.accounts_cost_basis_2024_q4_file_date_idx;
ALTER INDEX public.accounts_cost_basis_new_pkey ATTACH PARTITION public.accounts_cost_basis_2024_q4_pkey;
ALTER INDEX public.idx_accounts_cost_basis_file_date_partitionated ATTACH PARTITION public.accounts_cost_basis_2025_q1_file_date_idx;
ALTER INDEX public.accounts_cost_basis_new_pkey ATTACH PARTITION public.accounts_cost_basis_2025_q1_pkey;
ALTER INDEX public.idx_accounts_cost_basis_file_date_partitionated ATTACH PARTITION public.accounts_cost_basis_2025_q2_file_date_idx;
ALTER INDEX public.accounts_cost_basis_new_pkey ATTACH PARTITION public.accounts_cost_basis_2025_q2_pkey;
ALTER INDEX public.idx_accounts_cost_basis_file_date_partitionated ATTACH PARTITION public.accounts_cost_basis_2025_q3_file_date_idx;
ALTER INDEX public.accounts_cost_basis_new_pkey ATTACH PARTITION public.accounts_cost_basis_2025_q3_pkey;
ALTER INDEX public.idx_accounts_cost_basis_file_date_partitionated ATTACH PARTITION public.accounts_cost_basis_2025_q4_file_date_idx;
ALTER INDEX public.accounts_cost_basis_new_pkey ATTACH PARTITION public.accounts_cost_basis_2025_q4_pkey;
ALTER INDEX public.idx_accounts_holdings_file_date_partitionate ATTACH PARTITION public.accounts_holdings_2024_q1_file_date_idx;
ALTER INDEX public.accounts_holdings_new_pkey ATTACH PARTITION public.accounts_holdings_2024_q1_pkey;
ALTER INDEX public.idx_accounts_holdings_file_date_partitionate ATTACH PARTITION public.accounts_holdings_2024_q2_file_date_idx;
ALTER INDEX public.accounts_holdings_new_pkey ATTACH PARTITION public.accounts_holdings_2024_q2_pkey;
ALTER INDEX public.idx_accounts_holdings_file_date_partitionate ATTACH PARTITION public.accounts_holdings_2024_q3_file_date_idx;
ALTER INDEX public.accounts_holdings_new_pkey ATTACH PARTITION public.accounts_holdings_2024_q3_pkey;
ALTER INDEX public.idx_accounts_holdings_file_date_partitionate ATTACH PARTITION public.accounts_holdings_2024_q4_file_date_idx;
ALTER INDEX public.accounts_holdings_new_pkey ATTACH PARTITION public.accounts_holdings_2024_q4_pkey;
ALTER INDEX public.idx_accounts_holdings_file_date_partitionate ATTACH PARTITION public.accounts_holdings_2025_q1_file_date_idx;
ALTER INDEX public.accounts_holdings_new_pkey ATTACH PARTITION public.accounts_holdings_2025_q1_pkey;
ALTER INDEX public.idx_accounts_holdings_file_date_partitionate ATTACH PARTITION public.accounts_holdings_2025_q2_file_date_idx;
ALTER INDEX public.accounts_holdings_new_pkey ATTACH PARTITION public.accounts_holdings_2025_q2_pkey;
ALTER INDEX public.idx_accounts_holdings_file_date_partitionate ATTACH PARTITION public.accounts_holdings_2025_q3_file_date_idx;
ALTER INDEX public.accounts_holdings_new_pkey ATTACH PARTITION public.accounts_holdings_2025_q3_pkey;
ALTER INDEX public.idx_accounts_holdings_file_date_partitionate ATTACH PARTITION public.accounts_holdings_2025_q4_file_date_idx;
ALTER INDEX public.accounts_holdings_new_pkey ATTACH PARTITION public.accounts_holdings_2025_q4_pkey;
ALTER INDEX public.idx_accounts_segments_allocations_file_date_partitionated ATTACH PARTITION public.accounts_segments_allocations_2024_q1_file_date_idx;
ALTER INDEX public.accounts_segments_allocations_new_pkey ATTACH PARTITION public.accounts_segments_allocations_2024_q1_pkey;
ALTER INDEX public.idx_accounts_segments_allocations_file_date_partitionated ATTACH PARTITION public.accounts_segments_allocations_2024_q2_file_date_idx;
ALTER INDEX public.accounts_segments_allocations_new_pkey ATTACH PARTITION public.accounts_segments_allocations_2024_q2_pkey;
ALTER INDEX public.idx_accounts_segments_allocations_file_date_partitionated ATTACH PARTITION public.accounts_segments_allocations_2024_q3_file_date_idx;
ALTER INDEX public.accounts_segments_allocations_new_pkey ATTACH PARTITION public.accounts_segments_allocations_2024_q3_pkey;
ALTER INDEX public.idx_accounts_segments_allocations_file_date_partitionated ATTACH PARTITION public.accounts_segments_allocations_2024_q4_file_date_idx;
ALTER INDEX public.accounts_segments_allocations_new_pkey ATTACH PARTITION public.accounts_segments_allocations_2024_q4_pkey;
ALTER INDEX public.idx_accounts_segments_allocations_file_date_partitionated ATTACH PARTITION public.accounts_segments_allocations_2025_q1_file_date_idx;
ALTER INDEX public.accounts_segments_allocations_new_pkey ATTACH PARTITION public.accounts_segments_allocations_2025_q1_pkey;
ALTER INDEX public.idx_accounts_segments_allocations_file_date_partitionated ATTACH PARTITION public.accounts_segments_allocations_2025_q2_file_date_idx;
ALTER INDEX public.accounts_segments_allocations_new_pkey ATTACH PARTITION public.accounts_segments_allocations_2025_q2_pkey;
ALTER INDEX public.idx_accounts_segments_allocations_file_date_partitionated ATTACH PARTITION public.accounts_segments_allocations_2025_q3_file_date_idx;
ALTER INDEX public.accounts_segments_allocations_new_pkey ATTACH PARTITION public.accounts_segments_allocations_2025_q3_pkey;
ALTER INDEX public.idx_accounts_segments_allocations_file_date_partitionated ATTACH PARTITION public.accounts_segments_allocations_2025_q4_file_date_idx;
ALTER INDEX public.accounts_segments_allocations_new_pkey ATTACH PARTITION public.accounts_segments_allocations_2025_q4_pkey;
ALTER INDEX public.idx_accounts_transactions_file_date_partitionated ATTACH PARTITION public.accounts_transactions_2024_q1_file_date_idx;
ALTER INDEX public.accounts_transactions_new_pkey ATTACH PARTITION public.accounts_transactions_2024_q1_pkey;
ALTER INDEX public.idx_accounts_transactions_file_date_partitionated ATTACH PARTITION public.accounts_transactions_2024_q2_file_date_idx;
ALTER INDEX public.accounts_transactions_new_pkey ATTACH PARTITION public.accounts_transactions_2024_q2_pkey;
ALTER INDEX public.idx_accounts_transactions_file_date_partitionated ATTACH PARTITION public.accounts_transactions_2024_q3_file_date_idx;
ALTER INDEX public.accounts_transactions_new_pkey ATTACH PARTITION public.accounts_transactions_2024_q3_pkey;
ALTER INDEX public.idx_accounts_transactions_file_date_partitionated ATTACH PARTITION public.accounts_transactions_2024_q4_file_date_idx;
ALTER INDEX public.accounts_transactions_new_pkey ATTACH PARTITION public.accounts_transactions_2024_q4_pkey;
ALTER INDEX public.idx_accounts_transactions_file_date_partitionated ATTACH PARTITION public.accounts_transactions_2025_q1_file_date_idx;
ALTER INDEX public.accounts_transactions_new_pkey ATTACH PARTITION public.accounts_transactions_2025_q1_pkey;
ALTER INDEX public.idx_accounts_transactions_file_date_partitionated ATTACH PARTITION public.accounts_transactions_2025_q2_file_date_idx;
ALTER INDEX public.accounts_transactions_new_pkey ATTACH PARTITION public.accounts_transactions_2025_q2_pkey;
ALTER INDEX public.idx_accounts_transactions_file_date_partitionated ATTACH PARTITION public.accounts_transactions_2025_q3_file_date_idx;
ALTER INDEX public.accounts_transactions_new_pkey ATTACH PARTITION public.accounts_transactions_2025_q3_pkey;
ALTER INDEX public.idx_accounts_transactions_file_date_partitionated ATTACH PARTITION public.accounts_transactions_2025_q4_file_date_idx;
ALTER INDEX public.accounts_transactions_new_pkey ATTACH PARTITION public.accounts_transactions_2025_q4_pkey;
\unrestrict ViwK4tHkYK8SrQopMAgn2DKyZLcd5JNSDEqQyOFcC9P387QhLvBrFCKgNcAueJM
