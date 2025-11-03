--
-- PostgreSQL database dump
--

\restrict hhFI9kiWC6bFYDi6bdcrIKsywgabUHGFGRhU0VU6q4eB7IxYlC5KTJBNtA7V1lt

-- Dumped from database version 16.10
-- Dumped by pg_dump version 16.10

-- Started on 2025-11-03 15:38:18 -05

DATABASE NAME = vf_fw_data_warehouse

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

--
-- TOC entry 6 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- TOC entry 5235 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 32239)
-- Name: dim_account; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_account (
    account_key integer NOT NULL,
    provider_key integer,
    account_number character varying(20) NOT NULL,
    branch_code character varying(10),
    firm_code character varying(10),
    account_type character varying(30) NOT NULL,
    account_owner_name character varying(200),
    short_name character varying(120),
    citizen_code character varying(5),
    establishment_date_key integer,
    account_note_line_1 character varying(255),
    account_note_line_2 character varying(255),
    account_note_line_3 character varying(255),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    file_date date,
    birth_date date,
    is_qualified_account boolean
);


--
-- TOC entry 219 (class 1259 OID 32238)
-- Name: dim_account_account_key_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.dim_account_account_key_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5236 (class 0 OID 0)
-- Dependencies: 219
-- Name: dim_account_account_key_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.dim_account_account_key_seq OWNED BY public.dim_account.account_key;


--
-- TOC entry 237 (class 1259 OID 33063)
-- Name: dim_account_history; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_account_history (
    account_history_key integer NOT NULL,
    account_key integer,
    provider_key integer,
    account_number character varying(20) NOT NULL,
    branch_code character varying(10),
    firm_code character varying(10),
    account_type character varying(30) NOT NULL,
    short_name character varying(120),
    account_owner_name character varying(200),
    citizen_code character varying(5),
    establishment_date_key integer,
    account_note_line_1 character varying(255),
    account_note_line_2 character varying(255),
    account_note_line_3 character varying(255),
    effective_from_date_key integer,
    effective_to_date_key integer,
    is_current boolean DEFAULT true,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    birth_date date,
    is_qualified_account boolean
)
PARTITION BY RANGE (file_date);


--
-- TOC entry 236 (class 1259 OID 33062)
-- Name: dim_account_history_account_history_key_seq1; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.dim_account_history_account_history_key_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5237 (class 0 OID 0)
-- Dependencies: 236
-- Name: dim_account_history_account_history_key_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.dim_account_history_account_history_key_seq1 OWNED BY public.dim_account_history.account_history_key;


--
-- TOC entry 242 (class 1259 OID 33187)
-- Name: dim_account_history_2020; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_account_history_2020 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_account_history_key_seq1'::regclass) NOT NULL,
    account_key integer,
    provider_key integer,
    account_number character varying(20) NOT NULL,
    branch_code character varying(10),
    firm_code character varying(10),
    account_type character varying(30) NOT NULL,
    short_name character varying(120),
    account_owner_name character varying(200),
    citizen_code character varying(5),
    establishment_date_key integer,
    account_note_line_1 character varying(255),
    account_note_line_2 character varying(255),
    account_note_line_3 character varying(255),
    effective_from_date_key integer,
    effective_to_date_key integer,
    is_current boolean DEFAULT true,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    birth_date date,
    is_qualified_account boolean
);


--
-- TOC entry 245 (class 1259 OID 33259)
-- Name: dim_account_history_2021; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_account_history_2021 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_account_history_key_seq1'::regclass) NOT NULL,
    account_key integer,
    provider_key integer,
    account_number character varying(20) NOT NULL,
    branch_code character varying(10),
    firm_code character varying(10),
    account_type character varying(30) NOT NULL,
    short_name character varying(120),
    account_owner_name character varying(200),
    citizen_code character varying(5),
    establishment_date_key integer,
    account_note_line_1 character varying(255),
    account_note_line_2 character varying(255),
    account_note_line_3 character varying(255),
    effective_from_date_key integer,
    effective_to_date_key integer,
    is_current boolean DEFAULT true,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    birth_date date,
    is_qualified_account boolean
);


--
-- TOC entry 248 (class 1259 OID 33331)
-- Name: dim_account_history_2022; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_account_history_2022 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_account_history_key_seq1'::regclass) NOT NULL,
    account_key integer,
    provider_key integer,
    account_number character varying(20) NOT NULL,
    branch_code character varying(10),
    firm_code character varying(10),
    account_type character varying(30) NOT NULL,
    short_name character varying(120),
    account_owner_name character varying(200),
    citizen_code character varying(5),
    establishment_date_key integer,
    account_note_line_1 character varying(255),
    account_note_line_2 character varying(255),
    account_note_line_3 character varying(255),
    effective_from_date_key integer,
    effective_to_date_key integer,
    is_current boolean DEFAULT true,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    birth_date date,
    is_qualified_account boolean
);


--
-- TOC entry 251 (class 1259 OID 33403)
-- Name: dim_account_history_2023; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_account_history_2023 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_account_history_key_seq1'::regclass) NOT NULL,
    account_key integer,
    provider_key integer,
    account_number character varying(20) NOT NULL,
    branch_code character varying(10),
    firm_code character varying(10),
    account_type character varying(30) NOT NULL,
    short_name character varying(120),
    account_owner_name character varying(200),
    citizen_code character varying(5),
    establishment_date_key integer,
    account_note_line_1 character varying(255),
    account_note_line_2 character varying(255),
    account_note_line_3 character varying(255),
    effective_from_date_key integer,
    effective_to_date_key integer,
    is_current boolean DEFAULT true,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    birth_date date,
    is_qualified_account boolean
);


--
-- TOC entry 254 (class 1259 OID 33475)
-- Name: dim_account_history_2024; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_account_history_2024 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_account_history_key_seq1'::regclass) NOT NULL,
    account_key integer,
    provider_key integer,
    account_number character varying(20) NOT NULL,
    branch_code character varying(10),
    firm_code character varying(10),
    account_type character varying(30) NOT NULL,
    short_name character varying(120),
    account_owner_name character varying(200),
    citizen_code character varying(5),
    establishment_date_key integer,
    account_note_line_1 character varying(255),
    account_note_line_2 character varying(255),
    account_note_line_3 character varying(255),
    effective_from_date_key integer,
    effective_to_date_key integer,
    is_current boolean DEFAULT true,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    birth_date date,
    is_qualified_account boolean
);


--
-- TOC entry 257 (class 1259 OID 33548)
-- Name: dim_account_history_2025_01; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_account_history_2025_01 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_account_history_key_seq1'::regclass) NOT NULL,
    account_key integer,
    provider_key integer,
    account_number character varying(20) NOT NULL,
    branch_code character varying(10),
    firm_code character varying(10),
    account_type character varying(30) NOT NULL,
    short_name character varying(120),
    account_owner_name character varying(200),
    citizen_code character varying(5),
    establishment_date_key integer,
    account_note_line_1 character varying(255),
    account_note_line_2 character varying(255),
    account_note_line_3 character varying(255),
    effective_from_date_key integer,
    effective_to_date_key integer,
    is_current boolean DEFAULT true,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    birth_date date,
    is_qualified_account boolean
);


--
-- TOC entry 260 (class 1259 OID 33620)
-- Name: dim_account_history_2025_02; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_account_history_2025_02 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_account_history_key_seq1'::regclass) NOT NULL,
    account_key integer,
    provider_key integer,
    account_number character varying(20) NOT NULL,
    branch_code character varying(10),
    firm_code character varying(10),
    account_type character varying(30) NOT NULL,
    short_name character varying(120),
    account_owner_name character varying(200),
    citizen_code character varying(5),
    establishment_date_key integer,
    account_note_line_1 character varying(255),
    account_note_line_2 character varying(255),
    account_note_line_3 character varying(255),
    effective_from_date_key integer,
    effective_to_date_key integer,
    is_current boolean DEFAULT true,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    birth_date date,
    is_qualified_account boolean
);


--
-- TOC entry 263 (class 1259 OID 33692)
-- Name: dim_account_history_2025_03; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_account_history_2025_03 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_account_history_key_seq1'::regclass) NOT NULL,
    account_key integer,
    provider_key integer,
    account_number character varying(20) NOT NULL,
    branch_code character varying(10),
    firm_code character varying(10),
    account_type character varying(30) NOT NULL,
    short_name character varying(120),
    account_owner_name character varying(200),
    citizen_code character varying(5),
    establishment_date_key integer,
    account_note_line_1 character varying(255),
    account_note_line_2 character varying(255),
    account_note_line_3 character varying(255),
    effective_from_date_key integer,
    effective_to_date_key integer,
    is_current boolean DEFAULT true,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    birth_date date,
    is_qualified_account boolean
);


--
-- TOC entry 266 (class 1259 OID 33764)
-- Name: dim_account_history_2025_04; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_account_history_2025_04 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_account_history_key_seq1'::regclass) NOT NULL,
    account_key integer,
    provider_key integer,
    account_number character varying(20) NOT NULL,
    branch_code character varying(10),
    firm_code character varying(10),
    account_type character varying(30) NOT NULL,
    short_name character varying(120),
    account_owner_name character varying(200),
    citizen_code character varying(5),
    establishment_date_key integer,
    account_note_line_1 character varying(255),
    account_note_line_2 character varying(255),
    account_note_line_3 character varying(255),
    effective_from_date_key integer,
    effective_to_date_key integer,
    is_current boolean DEFAULT true,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    birth_date date,
    is_qualified_account boolean
);


--
-- TOC entry 269 (class 1259 OID 33836)
-- Name: dim_account_history_2025_05; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_account_history_2025_05 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_account_history_key_seq1'::regclass) NOT NULL,
    account_key integer,
    provider_key integer,
    account_number character varying(20) NOT NULL,
    branch_code character varying(10),
    firm_code character varying(10),
    account_type character varying(30) NOT NULL,
    short_name character varying(120),
    account_owner_name character varying(200),
    citizen_code character varying(5),
    establishment_date_key integer,
    account_note_line_1 character varying(255),
    account_note_line_2 character varying(255),
    account_note_line_3 character varying(255),
    effective_from_date_key integer,
    effective_to_date_key integer,
    is_current boolean DEFAULT true,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    birth_date date,
    is_qualified_account boolean
);


--
-- TOC entry 272 (class 1259 OID 33908)
-- Name: dim_account_history_2025_06; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_account_history_2025_06 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_account_history_key_seq1'::regclass) NOT NULL,
    account_key integer,
    provider_key integer,
    account_number character varying(20) NOT NULL,
    branch_code character varying(10),
    firm_code character varying(10),
    account_type character varying(30) NOT NULL,
    short_name character varying(120),
    account_owner_name character varying(200),
    citizen_code character varying(5),
    establishment_date_key integer,
    account_note_line_1 character varying(255),
    account_note_line_2 character varying(255),
    account_note_line_3 character varying(255),
    effective_from_date_key integer,
    effective_to_date_key integer,
    is_current boolean DEFAULT true,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    birth_date date,
    is_qualified_account boolean
);


--
-- TOC entry 275 (class 1259 OID 33980)
-- Name: dim_account_history_2025_07; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_account_history_2025_07 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_account_history_key_seq1'::regclass) NOT NULL,
    account_key integer,
    provider_key integer,
    account_number character varying(20) NOT NULL,
    branch_code character varying(10),
    firm_code character varying(10),
    account_type character varying(30) NOT NULL,
    short_name character varying(120),
    account_owner_name character varying(200),
    citizen_code character varying(5),
    establishment_date_key integer,
    account_note_line_1 character varying(255),
    account_note_line_2 character varying(255),
    account_note_line_3 character varying(255),
    effective_from_date_key integer,
    effective_to_date_key integer,
    is_current boolean DEFAULT true,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    birth_date date,
    is_qualified_account boolean
);


--
-- TOC entry 278 (class 1259 OID 34052)
-- Name: dim_account_history_2025_08; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_account_history_2025_08 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_account_history_key_seq1'::regclass) NOT NULL,
    account_key integer,
    provider_key integer,
    account_number character varying(20) NOT NULL,
    branch_code character varying(10),
    firm_code character varying(10),
    account_type character varying(30) NOT NULL,
    short_name character varying(120),
    account_owner_name character varying(200),
    citizen_code character varying(5),
    establishment_date_key integer,
    account_note_line_1 character varying(255),
    account_note_line_2 character varying(255),
    account_note_line_3 character varying(255),
    effective_from_date_key integer,
    effective_to_date_key integer,
    is_current boolean DEFAULT true,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    birth_date date,
    is_qualified_account boolean
);


--
-- TOC entry 281 (class 1259 OID 34124)
-- Name: dim_account_history_2025_09; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_account_history_2025_09 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_account_history_key_seq1'::regclass) NOT NULL,
    account_key integer,
    provider_key integer,
    account_number character varying(20) NOT NULL,
    branch_code character varying(10),
    firm_code character varying(10),
    account_type character varying(30) NOT NULL,
    short_name character varying(120),
    account_owner_name character varying(200),
    citizen_code character varying(5),
    establishment_date_key integer,
    account_note_line_1 character varying(255),
    account_note_line_2 character varying(255),
    account_note_line_3 character varying(255),
    effective_from_date_key integer,
    effective_to_date_key integer,
    is_current boolean DEFAULT true,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    birth_date date,
    is_qualified_account boolean
);


--
-- TOC entry 284 (class 1259 OID 34196)
-- Name: dim_account_history_2025_10; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_account_history_2025_10 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_account_history_key_seq1'::regclass) NOT NULL,
    account_key integer,
    provider_key integer,
    account_number character varying(20) NOT NULL,
    branch_code character varying(10),
    firm_code character varying(10),
    account_type character varying(30) NOT NULL,
    short_name character varying(120),
    account_owner_name character varying(200),
    citizen_code character varying(5),
    establishment_date_key integer,
    account_note_line_1 character varying(255),
    account_note_line_2 character varying(255),
    account_note_line_3 character varying(255),
    effective_from_date_key integer,
    effective_to_date_key integer,
    is_current boolean DEFAULT true,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    birth_date date,
    is_qualified_account boolean
);


--
-- TOC entry 287 (class 1259 OID 34268)
-- Name: dim_account_history_2025_11; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_account_history_2025_11 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_account_history_key_seq1'::regclass) NOT NULL,
    account_key integer,
    provider_key integer,
    account_number character varying(20) NOT NULL,
    branch_code character varying(10),
    firm_code character varying(10),
    account_type character varying(30) NOT NULL,
    short_name character varying(120),
    account_owner_name character varying(200),
    citizen_code character varying(5),
    establishment_date_key integer,
    account_note_line_1 character varying(255),
    account_note_line_2 character varying(255),
    account_note_line_3 character varying(255),
    effective_from_date_key integer,
    effective_to_date_key integer,
    is_current boolean DEFAULT true,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    birth_date date,
    is_qualified_account boolean
);


--
-- TOC entry 290 (class 1259 OID 34340)
-- Name: dim_account_history_2025_12; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_account_history_2025_12 (
    account_history_key integer DEFAULT nextval('public.dim_account_history_account_history_key_seq1'::regclass) NOT NULL,
    account_key integer,
    provider_key integer,
    account_number character varying(20) NOT NULL,
    branch_code character varying(10),
    firm_code character varying(10),
    account_type character varying(30) NOT NULL,
    short_name character varying(120),
    account_owner_name character varying(200),
    citizen_code character varying(5),
    establishment_date_key integer,
    account_note_line_1 character varying(255),
    account_note_line_2 character varying(255),
    account_note_line_3 character varying(255),
    effective_from_date_key integer,
    effective_to_date_key integer,
    is_current boolean DEFAULT true,
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    birth_date date,
    is_qualified_account boolean
);


--
-- TOC entry 297 (class 1259 OID 49664)
-- Name: dim_account_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_account_type (
    account_type_code character varying(10) NOT NULL,
    account_type_desc character varying(100) NOT NULL,
    classification character varying(20) NOT NULL
);


--
-- TOC entry 218 (class 1259 OID 32231)
-- Name: dim_date; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_date (
    date_key integer NOT NULL,
    calendar_date date NOT NULL,
    year smallint NOT NULL,
    quarter smallint NOT NULL,
    month smallint NOT NULL,
    day smallint NOT NULL,
    is_month_end boolean NOT NULL,
    is_business_day boolean NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 221 (class 1259 OID 32308)
-- Name: dim_product_code; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_product_code (
    product_code character varying(10) NOT NULL,
    product_code_desc character varying(100) NOT NULL
);


--
-- TOC entry 217 (class 1259 OID 32221)
-- Name: dim_provider; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_provider (
    provider_key integer NOT NULL,
    provider_code character varying(20),
    provider_name character varying(100),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 216 (class 1259 OID 32220)
-- Name: dim_provider_provider_key_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.dim_provider_provider_key_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5238 (class 0 OID 0)
-- Dependencies: 216
-- Name: dim_provider_provider_key_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.dim_provider_provider_key_seq OWNED BY public.dim_provider.provider_key;


--
-- TOC entry 223 (class 1259 OID 32314)
-- Name: dim_security; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_security (
    security_key integer NOT NULL,
    cusip character(9),
    isin character(12),
    sedol character(7),
    symbol character varying(30),
    security_type character varying(20),
    type_of_fund character varying(50),
    asset_class character varying(30),
    product_code character varying(10),
    security_description_line_1 character varying(255),
    security_description_line_2 character varying(255),
    security_description_line_3 character varying(255),
    description character varying(255),
    maturity_date_key integer,
    coupon_rate numeric(9,4),
    sp_rating character varying(10),
    moodys_rating character varying(10),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 222 (class 1259 OID 32313)
-- Name: dim_security_security_key_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.dim_security_security_key_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5239 (class 0 OID 0)
-- Dependencies: 222
-- Name: dim_security_security_key_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.dim_security_security_key_seq OWNED BY public.dim_security.security_key;


--
-- TOC entry 300 (class 1259 OID 50210)
-- Name: dim_transaction_code; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_transaction_code (
    transaction_code character varying(10) NOT NULL,
    mnemonic character varying(10) NOT NULL,
    description_1 character varying(255),
    description_2 character varying(255),
    description_3 character varying(255),
    description_4 character varying(255),
    description_5 character varying(255),
    possible_value_description character varying(255),
    category character varying(100),
    money_or_securities character varying(50),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 225 (class 1259 OID 32337)
-- Name: fact_account_balance; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_account_balance (
    balance_key bigint NOT NULL,
    provider_key integer,
    account_key integer,
    date_key integer,
    cash_balance_settled numeric(18,2),
    account_value numeric(18,2),
    settled_cash_balance numeric(18,2),
    market_value_long numeric(18,2),
    market_value_short numeric(18,2),
    margin_equity numeric(18,2),
    option_market_value numeric(18,2),
    available_to_pay numeric(18,2),
    buying_power numeric(18,2),
    account_id_source character varying,
    business_date_source date,
    equity_excl_option numeric(18,2),
    money_market_funds numeric(18,2),
    maintenance_call numeric(18,2),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    prev_net_liquidating_value numeric(18,2),
    growth_pct numeric(18,4),
    file_date date
);


--
-- TOC entry 224 (class 1259 OID 32336)
-- Name: fact_account_balance_balance_key_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fact_account_balance_balance_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5240 (class 0 OID 0)
-- Dependencies: 224
-- Name: fact_account_balance_balance_key_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fact_account_balance_balance_key_seq OWNED BY public.fact_account_balance.balance_key;


--
-- TOC entry 239 (class 1259 OID 33125)
-- Name: fact_account_balance_history; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_account_balance_history (
    history_key bigint NOT NULL,
    provider_key integer,
    account_key integer,
    date_key integer,
    cash_balance_settled numeric(18,2),
    account_value numeric(18,2),
    settled_cash_balance numeric(18,2),
    market_value_long numeric(18,2),
    market_value_short numeric(18,2),
    margin_equity numeric(18,2),
    option_market_value numeric(18,2),
    available_to_pay numeric(18,2),
    buying_power numeric(18,2),
    account_id_source character varying,
    business_date_source date,
    equity_excl_option numeric(18,2),
    money_market_funds numeric(18,2),
    maintenance_call numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
)
PARTITION BY RANGE (file_date);


--
-- TOC entry 238 (class 1259 OID 33124)
-- Name: fact_account_balance_history_history_key_seq1; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fact_account_balance_history_history_key_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5241 (class 0 OID 0)
-- Dependencies: 238
-- Name: fact_account_balance_history_history_key_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fact_account_balance_history_history_key_seq1 OWNED BY public.fact_account_balance_history.history_key;


--
-- TOC entry 243 (class 1259 OID 33213)
-- Name: fact_account_balance_history_2020; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_account_balance_history_2020 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    date_key integer,
    cash_balance_settled numeric(18,2),
    account_value numeric(18,2),
    settled_cash_balance numeric(18,2),
    market_value_long numeric(18,2),
    market_value_short numeric(18,2),
    margin_equity numeric(18,2),
    option_market_value numeric(18,2),
    available_to_pay numeric(18,2),
    buying_power numeric(18,2),
    account_id_source character varying,
    business_date_source date,
    equity_excl_option numeric(18,2),
    money_market_funds numeric(18,2),
    maintenance_call numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 246 (class 1259 OID 33285)
-- Name: fact_account_balance_history_2021; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_account_balance_history_2021 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    date_key integer,
    cash_balance_settled numeric(18,2),
    account_value numeric(18,2),
    settled_cash_balance numeric(18,2),
    market_value_long numeric(18,2),
    market_value_short numeric(18,2),
    margin_equity numeric(18,2),
    option_market_value numeric(18,2),
    available_to_pay numeric(18,2),
    buying_power numeric(18,2),
    account_id_source character varying,
    business_date_source date,
    equity_excl_option numeric(18,2),
    money_market_funds numeric(18,2),
    maintenance_call numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 249 (class 1259 OID 33357)
-- Name: fact_account_balance_history_2022; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_account_balance_history_2022 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    date_key integer,
    cash_balance_settled numeric(18,2),
    account_value numeric(18,2),
    settled_cash_balance numeric(18,2),
    market_value_long numeric(18,2),
    market_value_short numeric(18,2),
    margin_equity numeric(18,2),
    option_market_value numeric(18,2),
    available_to_pay numeric(18,2),
    buying_power numeric(18,2),
    account_id_source character varying,
    business_date_source date,
    equity_excl_option numeric(18,2),
    money_market_funds numeric(18,2),
    maintenance_call numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 252 (class 1259 OID 33429)
-- Name: fact_account_balance_history_2023; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_account_balance_history_2023 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    date_key integer,
    cash_balance_settled numeric(18,2),
    account_value numeric(18,2),
    settled_cash_balance numeric(18,2),
    market_value_long numeric(18,2),
    market_value_short numeric(18,2),
    margin_equity numeric(18,2),
    option_market_value numeric(18,2),
    available_to_pay numeric(18,2),
    buying_power numeric(18,2),
    account_id_source character varying,
    business_date_source date,
    equity_excl_option numeric(18,2),
    money_market_funds numeric(18,2),
    maintenance_call numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 255 (class 1259 OID 33501)
-- Name: fact_account_balance_history_2024; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_account_balance_history_2024 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    date_key integer,
    cash_balance_settled numeric(18,2),
    account_value numeric(18,2),
    settled_cash_balance numeric(18,2),
    market_value_long numeric(18,2),
    market_value_short numeric(18,2),
    margin_equity numeric(18,2),
    option_market_value numeric(18,2),
    available_to_pay numeric(18,2),
    buying_power numeric(18,2),
    account_id_source character varying,
    business_date_source date,
    equity_excl_option numeric(18,2),
    money_market_funds numeric(18,2),
    maintenance_call numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 258 (class 1259 OID 33574)
-- Name: fact_account_balance_history_2025_01; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_account_balance_history_2025_01 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    date_key integer,
    cash_balance_settled numeric(18,2),
    account_value numeric(18,2),
    settled_cash_balance numeric(18,2),
    market_value_long numeric(18,2),
    market_value_short numeric(18,2),
    margin_equity numeric(18,2),
    option_market_value numeric(18,2),
    available_to_pay numeric(18,2),
    buying_power numeric(18,2),
    account_id_source character varying,
    business_date_source date,
    equity_excl_option numeric(18,2),
    money_market_funds numeric(18,2),
    maintenance_call numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 261 (class 1259 OID 33646)
-- Name: fact_account_balance_history_2025_02; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_account_balance_history_2025_02 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    date_key integer,
    cash_balance_settled numeric(18,2),
    account_value numeric(18,2),
    settled_cash_balance numeric(18,2),
    market_value_long numeric(18,2),
    market_value_short numeric(18,2),
    margin_equity numeric(18,2),
    option_market_value numeric(18,2),
    available_to_pay numeric(18,2),
    buying_power numeric(18,2),
    account_id_source character varying,
    business_date_source date,
    equity_excl_option numeric(18,2),
    money_market_funds numeric(18,2),
    maintenance_call numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 264 (class 1259 OID 33718)
-- Name: fact_account_balance_history_2025_03; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_account_balance_history_2025_03 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    date_key integer,
    cash_balance_settled numeric(18,2),
    account_value numeric(18,2),
    settled_cash_balance numeric(18,2),
    market_value_long numeric(18,2),
    market_value_short numeric(18,2),
    margin_equity numeric(18,2),
    option_market_value numeric(18,2),
    available_to_pay numeric(18,2),
    buying_power numeric(18,2),
    account_id_source character varying,
    business_date_source date,
    equity_excl_option numeric(18,2),
    money_market_funds numeric(18,2),
    maintenance_call numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 267 (class 1259 OID 33790)
-- Name: fact_account_balance_history_2025_04; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_account_balance_history_2025_04 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    date_key integer,
    cash_balance_settled numeric(18,2),
    account_value numeric(18,2),
    settled_cash_balance numeric(18,2),
    market_value_long numeric(18,2),
    market_value_short numeric(18,2),
    margin_equity numeric(18,2),
    option_market_value numeric(18,2),
    available_to_pay numeric(18,2),
    buying_power numeric(18,2),
    account_id_source character varying,
    business_date_source date,
    equity_excl_option numeric(18,2),
    money_market_funds numeric(18,2),
    maintenance_call numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 270 (class 1259 OID 33862)
-- Name: fact_account_balance_history_2025_05; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_account_balance_history_2025_05 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    date_key integer,
    cash_balance_settled numeric(18,2),
    account_value numeric(18,2),
    settled_cash_balance numeric(18,2),
    market_value_long numeric(18,2),
    market_value_short numeric(18,2),
    margin_equity numeric(18,2),
    option_market_value numeric(18,2),
    available_to_pay numeric(18,2),
    buying_power numeric(18,2),
    account_id_source character varying,
    business_date_source date,
    equity_excl_option numeric(18,2),
    money_market_funds numeric(18,2),
    maintenance_call numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 273 (class 1259 OID 33934)
-- Name: fact_account_balance_history_2025_06; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_account_balance_history_2025_06 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    date_key integer,
    cash_balance_settled numeric(18,2),
    account_value numeric(18,2),
    settled_cash_balance numeric(18,2),
    market_value_long numeric(18,2),
    market_value_short numeric(18,2),
    margin_equity numeric(18,2),
    option_market_value numeric(18,2),
    available_to_pay numeric(18,2),
    buying_power numeric(18,2),
    account_id_source character varying,
    business_date_source date,
    equity_excl_option numeric(18,2),
    money_market_funds numeric(18,2),
    maintenance_call numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 276 (class 1259 OID 34006)
-- Name: fact_account_balance_history_2025_07; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_account_balance_history_2025_07 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    date_key integer,
    cash_balance_settled numeric(18,2),
    account_value numeric(18,2),
    settled_cash_balance numeric(18,2),
    market_value_long numeric(18,2),
    market_value_short numeric(18,2),
    margin_equity numeric(18,2),
    option_market_value numeric(18,2),
    available_to_pay numeric(18,2),
    buying_power numeric(18,2),
    account_id_source character varying,
    business_date_source date,
    equity_excl_option numeric(18,2),
    money_market_funds numeric(18,2),
    maintenance_call numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 279 (class 1259 OID 34078)
-- Name: fact_account_balance_history_2025_08; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_account_balance_history_2025_08 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    date_key integer,
    cash_balance_settled numeric(18,2),
    account_value numeric(18,2),
    settled_cash_balance numeric(18,2),
    market_value_long numeric(18,2),
    market_value_short numeric(18,2),
    margin_equity numeric(18,2),
    option_market_value numeric(18,2),
    available_to_pay numeric(18,2),
    buying_power numeric(18,2),
    account_id_source character varying,
    business_date_source date,
    equity_excl_option numeric(18,2),
    money_market_funds numeric(18,2),
    maintenance_call numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 282 (class 1259 OID 34150)
-- Name: fact_account_balance_history_2025_09; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_account_balance_history_2025_09 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    date_key integer,
    cash_balance_settled numeric(18,2),
    account_value numeric(18,2),
    settled_cash_balance numeric(18,2),
    market_value_long numeric(18,2),
    market_value_short numeric(18,2),
    margin_equity numeric(18,2),
    option_market_value numeric(18,2),
    available_to_pay numeric(18,2),
    buying_power numeric(18,2),
    account_id_source character varying,
    business_date_source date,
    equity_excl_option numeric(18,2),
    money_market_funds numeric(18,2),
    maintenance_call numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 285 (class 1259 OID 34222)
-- Name: fact_account_balance_history_2025_10; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_account_balance_history_2025_10 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    date_key integer,
    cash_balance_settled numeric(18,2),
    account_value numeric(18,2),
    settled_cash_balance numeric(18,2),
    market_value_long numeric(18,2),
    market_value_short numeric(18,2),
    margin_equity numeric(18,2),
    option_market_value numeric(18,2),
    available_to_pay numeric(18,2),
    buying_power numeric(18,2),
    account_id_source character varying,
    business_date_source date,
    equity_excl_option numeric(18,2),
    money_market_funds numeric(18,2),
    maintenance_call numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 288 (class 1259 OID 34294)
-- Name: fact_account_balance_history_2025_11; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_account_balance_history_2025_11 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    date_key integer,
    cash_balance_settled numeric(18,2),
    account_value numeric(18,2),
    settled_cash_balance numeric(18,2),
    market_value_long numeric(18,2),
    market_value_short numeric(18,2),
    margin_equity numeric(18,2),
    option_market_value numeric(18,2),
    available_to_pay numeric(18,2),
    buying_power numeric(18,2),
    account_id_source character varying,
    business_date_source date,
    equity_excl_option numeric(18,2),
    money_market_funds numeric(18,2),
    maintenance_call numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 291 (class 1259 OID 34366)
-- Name: fact_account_balance_history_2025_12; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_account_balance_history_2025_12 (
    history_key bigint DEFAULT nextval('public.fact_account_balance_history_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    date_key integer,
    cash_balance_settled numeric(18,2),
    account_value numeric(18,2),
    settled_cash_balance numeric(18,2),
    market_value_long numeric(18,2),
    market_value_short numeric(18,2),
    margin_equity numeric(18,2),
    option_market_value numeric(18,2),
    available_to_pay numeric(18,2),
    buying_power numeric(18,2),
    account_id_source character varying,
    business_date_source date,
    equity_excl_option numeric(18,2),
    money_market_funds numeric(18,2),
    maintenance_call numeric(18,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 227 (class 1259 OID 32401)
-- Name: fact_cash_flow; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_cash_flow (
    cashflow_key bigint NOT NULL,
    provider_key integer,
    account_key integer,
    security_key integer,
    date_key integer,
    cashflow_type character varying(20),
    direction character(1),
    amount numeric(18,2),
    status character varying(20),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    plan_number character varying(20)
);


--
-- TOC entry 226 (class 1259 OID 32400)
-- Name: fact_cash_flow_cashflow_key_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fact_cash_flow_cashflow_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5242 (class 0 OID 0)
-- Dependencies: 226
-- Name: fact_cash_flow_cashflow_key_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fact_cash_flow_cashflow_key_seq OWNED BY public.fact_cash_flow.cashflow_key;


--
-- TOC entry 305 (class 1259 OID 65882)
-- Name: fact_icp; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_icp (
    icp_id bigint NOT NULL,
    provider_key integer,
    account_key integer,
    transaction_date_key integer,
    schedule_number integer,
    transaction_number_in_file integer,
    transaction_description character varying(100),
    party_type character varying(20),
    transaction_reference character varying(100),
    transaction_amount numeric(18,2),
    transaction_status character varying(50),
    sender_payee_account_name character varying(200),
    transaction_identifier character varying(50),
    file_date date,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 304 (class 1259 OID 65881)
-- Name: fact_icp_icp_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fact_icp_icp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5243 (class 0 OID 0)
-- Dependencies: 304
-- Name: fact_icp_icp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fact_icp_icp_id_seq OWNED BY public.fact_icp.icp_id;


--
-- TOC entry 229 (class 1259 OID 32432)
-- Name: fact_position_holding; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_position_holding (
    position_key bigint NOT NULL,
    provider_key integer,
    account_key integer,
    security_key integer,
    date_key integer,
    qty_settled numeric(18,4),
    qty_unsettled numeric(18,4),
    closing_price numeric(18,9),
    market_value numeric(17,2),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    account_type character varying(20),
    maturity_date_key integer,
    file_date date,
    security_type text
);


--
-- TOC entry 241 (class 1259 OID 33151)
-- Name: fact_position_holding_history; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_position_holding_history (
    position_history_key bigint NOT NULL,
    provider_key integer,
    account_key integer,
    security_key integer,
    date_key integer,
    maturity_date_key integer,
    account_type character varying(20),
    qty_settled numeric(18,4),
    qty_unsettled numeric(18,4),
    closing_price numeric(18,9),
    market_value numeric(17,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    security_type text
)
PARTITION BY RANGE (file_date);


--
-- TOC entry 240 (class 1259 OID 33150)
-- Name: fact_position_holding_history_position_history_key_seq1; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fact_position_holding_history_position_history_key_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5244 (class 0 OID 0)
-- Dependencies: 240
-- Name: fact_position_holding_history_position_history_key_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fact_position_holding_history_position_history_key_seq1 OWNED BY public.fact_position_holding_history.position_history_key;


--
-- TOC entry 244 (class 1259 OID 33234)
-- Name: fact_position_holding_history_2020; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_position_holding_history_2020 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_position_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    security_key integer,
    date_key integer,
    maturity_date_key integer,
    account_type character varying(20),
    qty_settled numeric(18,4),
    qty_unsettled numeric(18,4),
    closing_price numeric(18,9),
    market_value numeric(17,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    security_type text
);


--
-- TOC entry 247 (class 1259 OID 33306)
-- Name: fact_position_holding_history_2021; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_position_holding_history_2021 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_position_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    security_key integer,
    date_key integer,
    maturity_date_key integer,
    account_type character varying(20),
    qty_settled numeric(18,4),
    qty_unsettled numeric(18,4),
    closing_price numeric(18,9),
    market_value numeric(17,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    security_type text
);


--
-- TOC entry 250 (class 1259 OID 33378)
-- Name: fact_position_holding_history_2022; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_position_holding_history_2022 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_position_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    security_key integer,
    date_key integer,
    maturity_date_key integer,
    account_type character varying(20),
    qty_settled numeric(18,4),
    qty_unsettled numeric(18,4),
    closing_price numeric(18,9),
    market_value numeric(17,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    security_type text
);


--
-- TOC entry 253 (class 1259 OID 33450)
-- Name: fact_position_holding_history_2023; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_position_holding_history_2023 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_position_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    security_key integer,
    date_key integer,
    maturity_date_key integer,
    account_type character varying(20),
    qty_settled numeric(18,4),
    qty_unsettled numeric(18,4),
    closing_price numeric(18,9),
    market_value numeric(17,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    security_type text
);


--
-- TOC entry 256 (class 1259 OID 33522)
-- Name: fact_position_holding_history_2024; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_position_holding_history_2024 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_position_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    security_key integer,
    date_key integer,
    maturity_date_key integer,
    account_type character varying(20),
    qty_settled numeric(18,4),
    qty_unsettled numeric(18,4),
    closing_price numeric(18,9),
    market_value numeric(17,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    security_type text
);


--
-- TOC entry 259 (class 1259 OID 33595)
-- Name: fact_position_holding_history_2025_01; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_position_holding_history_2025_01 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_position_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    security_key integer,
    date_key integer,
    maturity_date_key integer,
    account_type character varying(20),
    qty_settled numeric(18,4),
    qty_unsettled numeric(18,4),
    closing_price numeric(18,9),
    market_value numeric(17,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    security_type text
);


--
-- TOC entry 262 (class 1259 OID 33667)
-- Name: fact_position_holding_history_2025_02; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_position_holding_history_2025_02 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_position_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    security_key integer,
    date_key integer,
    maturity_date_key integer,
    account_type character varying(20),
    qty_settled numeric(18,4),
    qty_unsettled numeric(18,4),
    closing_price numeric(18,9),
    market_value numeric(17,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    security_type text
);


--
-- TOC entry 265 (class 1259 OID 33739)
-- Name: fact_position_holding_history_2025_03; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_position_holding_history_2025_03 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_position_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    security_key integer,
    date_key integer,
    maturity_date_key integer,
    account_type character varying(20),
    qty_settled numeric(18,4),
    qty_unsettled numeric(18,4),
    closing_price numeric(18,9),
    market_value numeric(17,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    security_type text
);


--
-- TOC entry 268 (class 1259 OID 33811)
-- Name: fact_position_holding_history_2025_04; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_position_holding_history_2025_04 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_position_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    security_key integer,
    date_key integer,
    maturity_date_key integer,
    account_type character varying(20),
    qty_settled numeric(18,4),
    qty_unsettled numeric(18,4),
    closing_price numeric(18,9),
    market_value numeric(17,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    security_type text
);


--
-- TOC entry 271 (class 1259 OID 33883)
-- Name: fact_position_holding_history_2025_05; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_position_holding_history_2025_05 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_position_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    security_key integer,
    date_key integer,
    maturity_date_key integer,
    account_type character varying(20),
    qty_settled numeric(18,4),
    qty_unsettled numeric(18,4),
    closing_price numeric(18,9),
    market_value numeric(17,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    security_type text
);


--
-- TOC entry 274 (class 1259 OID 33955)
-- Name: fact_position_holding_history_2025_06; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_position_holding_history_2025_06 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_position_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    security_key integer,
    date_key integer,
    maturity_date_key integer,
    account_type character varying(20),
    qty_settled numeric(18,4),
    qty_unsettled numeric(18,4),
    closing_price numeric(18,9),
    market_value numeric(17,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    security_type text
);


--
-- TOC entry 277 (class 1259 OID 34027)
-- Name: fact_position_holding_history_2025_07; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_position_holding_history_2025_07 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_position_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    security_key integer,
    date_key integer,
    maturity_date_key integer,
    account_type character varying(20),
    qty_settled numeric(18,4),
    qty_unsettled numeric(18,4),
    closing_price numeric(18,9),
    market_value numeric(17,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    security_type text
);


--
-- TOC entry 280 (class 1259 OID 34099)
-- Name: fact_position_holding_history_2025_08; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_position_holding_history_2025_08 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_position_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    security_key integer,
    date_key integer,
    maturity_date_key integer,
    account_type character varying(20),
    qty_settled numeric(18,4),
    qty_unsettled numeric(18,4),
    closing_price numeric(18,9),
    market_value numeric(17,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    security_type text
);


--
-- TOC entry 283 (class 1259 OID 34171)
-- Name: fact_position_holding_history_2025_09; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_position_holding_history_2025_09 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_position_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    security_key integer,
    date_key integer,
    maturity_date_key integer,
    account_type character varying(20),
    qty_settled numeric(18,4),
    qty_unsettled numeric(18,4),
    closing_price numeric(18,9),
    market_value numeric(17,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    security_type text
);


--
-- TOC entry 286 (class 1259 OID 34243)
-- Name: fact_position_holding_history_2025_10; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_position_holding_history_2025_10 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_position_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    security_key integer,
    date_key integer,
    maturity_date_key integer,
    account_type character varying(20),
    qty_settled numeric(18,4),
    qty_unsettled numeric(18,4),
    closing_price numeric(18,9),
    market_value numeric(17,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    security_type text
);


--
-- TOC entry 289 (class 1259 OID 34315)
-- Name: fact_position_holding_history_2025_11; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_position_holding_history_2025_11 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_position_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    security_key integer,
    date_key integer,
    maturity_date_key integer,
    account_type character varying(20),
    qty_settled numeric(18,4),
    qty_unsettled numeric(18,4),
    closing_price numeric(18,9),
    market_value numeric(17,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    security_type text
);


--
-- TOC entry 292 (class 1259 OID 34387)
-- Name: fact_position_holding_history_2025_12; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_position_holding_history_2025_12 (
    position_history_key bigint DEFAULT nextval('public.fact_position_holding_history_position_history_key_seq1'::regclass) NOT NULL,
    provider_key integer,
    account_key integer,
    security_key integer,
    date_key integer,
    maturity_date_key integer,
    account_type character varying(20),
    qty_settled numeric(18,4),
    qty_unsettled numeric(18,4),
    closing_price numeric(18,9),
    market_value numeric(17,2),
    file_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    security_type text
);


--
-- TOC entry 228 (class 1259 OID 32431)
-- Name: fact_position_holding_position_key_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fact_position_holding_position_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5245 (class 0 OID 0)
-- Dependencies: 228
-- Name: fact_position_holding_position_key_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fact_position_holding_position_key_seq OWNED BY public.fact_position_holding.position_key;


--
-- TOC entry 231 (class 1259 OID 32463)
-- Name: fact_realized_gain; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_realized_gain (
    realized_key bigint NOT NULL,
    provider_key integer,
    account_key integer,
    security_key integer,
    close_date_key integer,
    acquire_date_key integer,
    quantity numeric(18,4),
    term character varying(5),
    proceeds numeric(18,2),
    cost_basis numeric(18,2),
    gain_loss numeric(18,2),
    gain_loss_pct numeric(18,4),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    lot_id character varying(100)
);


--
-- TOC entry 230 (class 1259 OID 32462)
-- Name: fact_realized_gain_realized_key_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fact_realized_gain_realized_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5246 (class 0 OID 0)
-- Dependencies: 230
-- Name: fact_realized_gain_realized_key_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fact_realized_gain_realized_key_seq OWNED BY public.fact_realized_gain.realized_key;


--
-- TOC entry 233 (class 1259 OID 32499)
-- Name: fact_required_minimum_distribution; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_required_minimum_distribution (
    rmd_key bigint NOT NULL,
    provider_key integer,
    account_key integer,
    date_key integer,
    prior_year_end_balance numeric(18,2),
    customer_date_of_birth date,
    year_to_date_distribution_amount numeric(18,2),
    life_expectancy_le_factor numeric(9,4),
    life_expectancy_le_ty_type_code character varying(10),
    periodic_plan_balance_adjustment_amount numeric(18,2),
    periodic_plan_expected_payout_amount numeric(18,2),
    estimated_required_minimum_distribution_amount numeric(18,2),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 232 (class 1259 OID 32498)
-- Name: fact_required_minimum_distribution_rmd_key_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fact_required_minimum_distribution_rmd_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5247 (class 0 OID 0)
-- Dependencies: 232
-- Name: fact_required_minimum_distribution_rmd_key_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fact_required_minimum_distribution_rmd_key_seq OWNED BY public.fact_required_minimum_distribution.rmd_key;


--
-- TOC entry 299 (class 1259 OID 50015)
-- Name: fact_transaction; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_transaction (
    txn_key bigint NOT NULL,
    provider_key integer,
    account_key integer,
    security_key integer,
    entry_date_key integer,
    trade_date_key integer,
    settlement_date_key integer,
    transaction_type character varying(30),
    transaction_description character varying(255),
    security_description character varying(255),
    quantity numeric(18,4),
    foreign_quantity numeric(18,4),
    price numeric(18,6),
    currency_code character varying(255),
    foreign_price numeric(18,6),
    foreign_currency_code character varying(255),
    net_amount_position numeric(18,2),
    net_amount_currency_code character varying(255),
    foreign_net_amount numeric(18,2),
    foreign_net_amount_currency_code character varying(255),
    account_type character varying(255),
    commission numeric(18,2),
    foreign_commission numeric(18,2),
    mnemonic_transaction_code character varying(30),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    net_amount_cash numeric,
    file_date date
);


--
-- TOC entry 298 (class 1259 OID 50014)
-- Name: fact_transaction_new_txn_key_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fact_transaction_new_txn_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5248 (class 0 OID 0)
-- Dependencies: 298
-- Name: fact_transaction_new_txn_key_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fact_transaction_new_txn_key_seq OWNED BY public.fact_transaction.txn_key;


--
-- TOC entry 235 (class 1259 OID 32525)
-- Name: fact_unrealized_gain; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_unrealized_gain (
    unrealized_key bigint NOT NULL,
    provider_key integer,
    account_key integer,
    security_key integer,
    date_key integer,
    lot_id character varying(100),
    cusip character(9),
    symbol character varying(30),
    product_code character varying(10),
    security_description character varying(255),
    quantity numeric(18,4),
    original_lot_quantity numeric(18,4),
    cost_basis numeric(18,2),
    original_lot_cost numeric(18,2),
    market_value numeric(18,2),
    closing_market_price numeric(18,6),
    unrealized_gain_loss numeric(18,2),
    gain_loss_pct numeric(18,4),
    acquire_date_key integer,
    open_lot_settlement_date date,
    holding_term character varying(5),
    cost_basis_method character varying(20),
    wash_sale_ind character(1),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 5249 (class 0 OID 0)
-- Dependencies: 235
-- Name: TABLE fact_unrealized_gain; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE public.fact_unrealized_gain IS 'Unrealized gain/loss at lot level. FID: tas_openfull; CS: uln.';


--
-- TOC entry 234 (class 1259 OID 32524)
-- Name: fact_unrealized_gain_unrealized_key_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fact_unrealized_gain_unrealized_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5250 (class 0 OID 0)
-- Dependencies: 234
-- Name: fact_unrealized_gain_unrealized_key_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fact_unrealized_gain_unrealized_key_seq OWNED BY public.fact_unrealized_gain.unrealized_key;


--
-- TOC entry 295 (class 1259 OID 49574)
-- Name: icp_flow_icp_flow_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.icp_flow_icp_flow_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 301 (class 1259 OID 50687)
-- Name: staging_account_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.staging_account_types (
    account_type character varying(255) NOT NULL,
    extraction_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- TOC entry 296 (class 1259 OID 49585)
-- Name: staging_icp_flow_flow_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.staging_icp_flow_flow_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 294 (class 1259 OID 49568)
-- Name: staging_icp_txn_desc; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.staging_icp_txn_desc (
    transaction_description character varying(100) NOT NULL,
    capture_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 303 (class 1259 OID 50749)
-- Name: stg_icp_flow; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.stg_icp_flow (
    flow_id bigint NOT NULL,
    transaction_date_key integer NOT NULL,
    transaction_amount numeric(18,2) NOT NULL,
    disbursement_icp_id bigint,
    receipt_icp_id bigint,
    disbursement_account integer,
    receipt_account integer,
    transaction_description character varying(255),
    match_status character varying(20) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 302 (class 1259 OID 50748)
-- Name: stg_icp_flow_flow_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.stg_icp_flow_flow_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5251 (class 0 OID 0)
-- Dependencies: 302
-- Name: stg_icp_flow_flow_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.stg_icp_flow_flow_id_seq OWNED BY public.stg_icp_flow.flow_id;


--
-- TOC entry 293 (class 1259 OID 49560)
-- Name: stg_icp_trans_desc_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.stg_icp_trans_desc_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4263 (class 0 OID 0)
-- Name: dim_account_history_2020; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2020 FOR VALUES FROM ('2020-01-01') TO ('2021-01-01');


--
-- TOC entry 4266 (class 0 OID 0)
-- Name: dim_account_history_2021; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2021 FOR VALUES FROM ('2021-01-01') TO ('2022-01-01');


--
-- TOC entry 4269 (class 0 OID 0)
-- Name: dim_account_history_2022; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2022 FOR VALUES FROM ('2022-01-01') TO ('2023-01-01');


--
-- TOC entry 4272 (class 0 OID 0)
-- Name: dim_account_history_2023; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2023 FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');


--
-- TOC entry 4275 (class 0 OID 0)
-- Name: dim_account_history_2024; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2024 FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');


--
-- TOC entry 4278 (class 0 OID 0)
-- Name: dim_account_history_2025_01; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2025_01 FOR VALUES FROM ('2025-01-01') TO ('2025-02-01');


--
-- TOC entry 4281 (class 0 OID 0)
-- Name: dim_account_history_2025_02; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2025_02 FOR VALUES FROM ('2025-02-01') TO ('2025-03-01');


--
-- TOC entry 4284 (class 0 OID 0)
-- Name: dim_account_history_2025_03; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2025_03 FOR VALUES FROM ('2025-03-01') TO ('2025-04-01');


--
-- TOC entry 4287 (class 0 OID 0)
-- Name: dim_account_history_2025_04; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2025_04 FOR VALUES FROM ('2025-04-01') TO ('2025-05-01');


--
-- TOC entry 4290 (class 0 OID 0)
-- Name: dim_account_history_2025_05; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2025_05 FOR VALUES FROM ('2025-05-01') TO ('2025-06-01');


--
-- TOC entry 4293 (class 0 OID 0)
-- Name: dim_account_history_2025_06; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2025_06 FOR VALUES FROM ('2025-06-01') TO ('2025-07-01');


--
-- TOC entry 4296 (class 0 OID 0)
-- Name: dim_account_history_2025_07; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2025_07 FOR VALUES FROM ('2025-07-01') TO ('2025-08-01');


--
-- TOC entry 4299 (class 0 OID 0)
-- Name: dim_account_history_2025_08; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2025_08 FOR VALUES FROM ('2025-08-01') TO ('2025-09-01');


--
-- TOC entry 4302 (class 0 OID 0)
-- Name: dim_account_history_2025_09; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2025_09 FOR VALUES FROM ('2025-09-01') TO ('2025-10-01');


--
-- TOC entry 4305 (class 0 OID 0)
-- Name: dim_account_history_2025_10; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2025_10 FOR VALUES FROM ('2025-10-01') TO ('2025-11-01');


--
-- TOC entry 4308 (class 0 OID 0)
-- Name: dim_account_history_2025_11; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2025_11 FOR VALUES FROM ('2025-11-01') TO ('2025-12-01');


--
-- TOC entry 4311 (class 0 OID 0)
-- Name: dim_account_history_2025_12; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history ATTACH PARTITION public.dim_account_history_2025_12 FOR VALUES FROM ('2025-12-01') TO ('2026-01-01');


--
-- TOC entry 4264 (class 0 OID 0)
-- Name: fact_account_balance_history_2020; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2020 FOR VALUES FROM ('2020-01-01') TO ('2021-01-01');


--
-- TOC entry 4267 (class 0 OID 0)
-- Name: fact_account_balance_history_2021; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2021 FOR VALUES FROM ('2021-01-01') TO ('2022-01-01');


--
-- TOC entry 4270 (class 0 OID 0)
-- Name: fact_account_balance_history_2022; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2022 FOR VALUES FROM ('2022-01-01') TO ('2023-01-01');


--
-- TOC entry 4273 (class 0 OID 0)
-- Name: fact_account_balance_history_2023; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2023 FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');


--
-- TOC entry 4276 (class 0 OID 0)
-- Name: fact_account_balance_history_2024; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2024 FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');


--
-- TOC entry 4279 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_01; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2025_01 FOR VALUES FROM ('2025-01-01') TO ('2025-02-01');


--
-- TOC entry 4282 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_02; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2025_02 FOR VALUES FROM ('2025-02-01') TO ('2025-03-01');


--
-- TOC entry 4285 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_03; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2025_03 FOR VALUES FROM ('2025-03-01') TO ('2025-04-01');


--
-- TOC entry 4288 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_04; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2025_04 FOR VALUES FROM ('2025-04-01') TO ('2025-05-01');


--
-- TOC entry 4291 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_05; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2025_05 FOR VALUES FROM ('2025-05-01') TO ('2025-06-01');


--
-- TOC entry 4294 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_06; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2025_06 FOR VALUES FROM ('2025-06-01') TO ('2025-07-01');


--
-- TOC entry 4297 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_07; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2025_07 FOR VALUES FROM ('2025-07-01') TO ('2025-08-01');


--
-- TOC entry 4300 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_08; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2025_08 FOR VALUES FROM ('2025-08-01') TO ('2025-09-01');


--
-- TOC entry 4303 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_09; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2025_09 FOR VALUES FROM ('2025-09-01') TO ('2025-10-01');


--
-- TOC entry 4306 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_10; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2025_10 FOR VALUES FROM ('2025-10-01') TO ('2025-11-01');


--
-- TOC entry 4309 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_11; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2025_11 FOR VALUES FROM ('2025-11-01') TO ('2025-12-01');


--
-- TOC entry 4312 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_12; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history ATTACH PARTITION public.fact_account_balance_history_2025_12 FOR VALUES FROM ('2025-12-01') TO ('2026-01-01');


--
-- TOC entry 4265 (class 0 OID 0)
-- Name: fact_position_holding_history_2020; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2020 FOR VALUES FROM ('2020-01-01') TO ('2021-01-01');


--
-- TOC entry 4268 (class 0 OID 0)
-- Name: fact_position_holding_history_2021; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2021 FOR VALUES FROM ('2021-01-01') TO ('2022-01-01');


--
-- TOC entry 4271 (class 0 OID 0)
-- Name: fact_position_holding_history_2022; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2022 FOR VALUES FROM ('2022-01-01') TO ('2023-01-01');


--
-- TOC entry 4274 (class 0 OID 0)
-- Name: fact_position_holding_history_2023; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2023 FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');


--
-- TOC entry 4277 (class 0 OID 0)
-- Name: fact_position_holding_history_2024; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2024 FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');


--
-- TOC entry 4280 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_01; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2025_01 FOR VALUES FROM ('2025-01-01') TO ('2025-02-01');


--
-- TOC entry 4283 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_02; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2025_02 FOR VALUES FROM ('2025-02-01') TO ('2025-03-01');


--
-- TOC entry 4286 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_03; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2025_03 FOR VALUES FROM ('2025-03-01') TO ('2025-04-01');


--
-- TOC entry 4289 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_04; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2025_04 FOR VALUES FROM ('2025-04-01') TO ('2025-05-01');


--
-- TOC entry 4292 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_05; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2025_05 FOR VALUES FROM ('2025-05-01') TO ('2025-06-01');


--
-- TOC entry 4295 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_06; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2025_06 FOR VALUES FROM ('2025-06-01') TO ('2025-07-01');


--
-- TOC entry 4298 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_07; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2025_07 FOR VALUES FROM ('2025-07-01') TO ('2025-08-01');


--
-- TOC entry 4301 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_08; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2025_08 FOR VALUES FROM ('2025-08-01') TO ('2025-09-01');


--
-- TOC entry 4304 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_09; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2025_09 FOR VALUES FROM ('2025-09-01') TO ('2025-10-01');


--
-- TOC entry 4307 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_10; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2025_10 FOR VALUES FROM ('2025-10-01') TO ('2025-11-01');


--
-- TOC entry 4310 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_11; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2025_11 FOR VALUES FROM ('2025-11-01') TO ('2025-12-01');


--
-- TOC entry 4313 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_12; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history ATTACH PARTITION public.fact_position_holding_history_2025_12 FOR VALUES FROM ('2025-12-01') TO ('2026-01-01');


--
-- TOC entry 4319 (class 2604 OID 32242)
-- Name: dim_account account_key; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account ALTER COLUMN account_key SET DEFAULT nextval('public.dim_account_account_key_seq'::regclass);


--
-- TOC entry 4343 (class 2604 OID 33066)
-- Name: dim_account_history account_history_key; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history ALTER COLUMN account_history_key SET DEFAULT nextval('public.dim_account_history_account_history_key_seq1'::regclass);


--
-- TOC entry 4314 (class 2604 OID 32224)
-- Name: dim_provider provider_key; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_provider ALTER COLUMN provider_key SET DEFAULT nextval('public.dim_provider_provider_key_seq'::regclass);


--
-- TOC entry 4322 (class 2604 OID 32317)
-- Name: dim_security security_key; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_security ALTER COLUMN security_key SET DEFAULT nextval('public.dim_security_security_key_seq'::regclass);


--
-- TOC entry 4325 (class 2604 OID 32340)
-- Name: fact_account_balance balance_key; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance ALTER COLUMN balance_key SET DEFAULT nextval('public.fact_account_balance_balance_key_seq'::regclass);


--
-- TOC entry 4347 (class 2604 OID 33128)
-- Name: fact_account_balance_history history_key; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history ALTER COLUMN history_key SET DEFAULT nextval('public.fact_account_balance_history_history_key_seq1'::regclass);


--
-- TOC entry 4328 (class 2604 OID 32404)
-- Name: fact_cash_flow cashflow_key; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_cash_flow ALTER COLUMN cashflow_key SET DEFAULT nextval('public.fact_cash_flow_cashflow_key_seq'::regclass);


--
-- TOC entry 4532 (class 2604 OID 65885)
-- Name: fact_icp icp_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_icp ALTER COLUMN icp_id SET DEFAULT nextval('public.fact_icp_icp_id_seq'::regclass);


--
-- TOC entry 4331 (class 2604 OID 32435)
-- Name: fact_position_holding position_key; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding ALTER COLUMN position_key SET DEFAULT nextval('public.fact_position_holding_position_key_seq'::regclass);


--
-- TOC entry 4350 (class 2604 OID 33154)
-- Name: fact_position_holding_history position_history_key; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history ALTER COLUMN position_history_key SET DEFAULT nextval('public.fact_position_holding_history_position_history_key_seq1'::regclass);


--
-- TOC entry 4334 (class 2604 OID 32466)
-- Name: fact_realized_gain realized_key; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_realized_gain ALTER COLUMN realized_key SET DEFAULT nextval('public.fact_realized_gain_realized_key_seq'::regclass);


--
-- TOC entry 4337 (class 2604 OID 32502)
-- Name: fact_required_minimum_distribution rmd_key; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_required_minimum_distribution ALTER COLUMN rmd_key SET DEFAULT nextval('public.fact_required_minimum_distribution_rmd_key_seq'::regclass);


--
-- TOC entry 4524 (class 2604 OID 50018)
-- Name: fact_transaction txn_key; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_transaction ALTER COLUMN txn_key SET DEFAULT nextval('public.fact_transaction_new_txn_key_seq'::regclass);


--
-- TOC entry 4340 (class 2604 OID 32528)
-- Name: fact_unrealized_gain unrealized_key; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_unrealized_gain ALTER COLUMN unrealized_key SET DEFAULT nextval('public.fact_unrealized_gain_unrealized_key_seq'::regclass);


--
-- TOC entry 4530 (class 2604 OID 50752)
-- Name: stg_icp_flow flow_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stg_icp_flow ALTER COLUMN flow_id SET DEFAULT nextval('public.stg_icp_flow_flow_id_seq'::regclass);


--
-- TOC entry 4606 (class 2606 OID 33071)
-- Name: dim_account_history dim_account_history_pkey1; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history
    ADD CONSTRAINT dim_account_history_pkey1 PRIMARY KEY (account_history_key, file_date);


--
-- TOC entry 4620 (class 2606 OID 33195)
-- Name: dim_account_history_2020 dim_account_history_2020_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history_2020
    ADD CONSTRAINT dim_account_history_2020_pkey PRIMARY KEY (account_history_key, file_date);


--
-- TOC entry 4634 (class 2606 OID 33267)
-- Name: dim_account_history_2021 dim_account_history_2021_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history_2021
    ADD CONSTRAINT dim_account_history_2021_pkey PRIMARY KEY (account_history_key, file_date);


--
-- TOC entry 4648 (class 2606 OID 33339)
-- Name: dim_account_history_2022 dim_account_history_2022_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history_2022
    ADD CONSTRAINT dim_account_history_2022_pkey PRIMARY KEY (account_history_key, file_date);


--
-- TOC entry 4662 (class 2606 OID 33411)
-- Name: dim_account_history_2023 dim_account_history_2023_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history_2023
    ADD CONSTRAINT dim_account_history_2023_pkey PRIMARY KEY (account_history_key, file_date);


--
-- TOC entry 4676 (class 2606 OID 33483)
-- Name: dim_account_history_2024 dim_account_history_2024_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history_2024
    ADD CONSTRAINT dim_account_history_2024_pkey PRIMARY KEY (account_history_key, file_date);


--
-- TOC entry 4690 (class 2606 OID 33556)
-- Name: dim_account_history_2025_01 dim_account_history_2025_01_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history_2025_01
    ADD CONSTRAINT dim_account_history_2025_01_pkey PRIMARY KEY (account_history_key, file_date);


--
-- TOC entry 4704 (class 2606 OID 33628)
-- Name: dim_account_history_2025_02 dim_account_history_2025_02_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history_2025_02
    ADD CONSTRAINT dim_account_history_2025_02_pkey PRIMARY KEY (account_history_key, file_date);


--
-- TOC entry 4718 (class 2606 OID 33700)
-- Name: dim_account_history_2025_03 dim_account_history_2025_03_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history_2025_03
    ADD CONSTRAINT dim_account_history_2025_03_pkey PRIMARY KEY (account_history_key, file_date);


--
-- TOC entry 4732 (class 2606 OID 33772)
-- Name: dim_account_history_2025_04 dim_account_history_2025_04_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history_2025_04
    ADD CONSTRAINT dim_account_history_2025_04_pkey PRIMARY KEY (account_history_key, file_date);


--
-- TOC entry 4746 (class 2606 OID 33844)
-- Name: dim_account_history_2025_05 dim_account_history_2025_05_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history_2025_05
    ADD CONSTRAINT dim_account_history_2025_05_pkey PRIMARY KEY (account_history_key, file_date);


--
-- TOC entry 4760 (class 2606 OID 33916)
-- Name: dim_account_history_2025_06 dim_account_history_2025_06_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history_2025_06
    ADD CONSTRAINT dim_account_history_2025_06_pkey PRIMARY KEY (account_history_key, file_date);


--
-- TOC entry 4774 (class 2606 OID 33988)
-- Name: dim_account_history_2025_07 dim_account_history_2025_07_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history_2025_07
    ADD CONSTRAINT dim_account_history_2025_07_pkey PRIMARY KEY (account_history_key, file_date);


--
-- TOC entry 4788 (class 2606 OID 34060)
-- Name: dim_account_history_2025_08 dim_account_history_2025_08_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history_2025_08
    ADD CONSTRAINT dim_account_history_2025_08_pkey PRIMARY KEY (account_history_key, file_date);


--
-- TOC entry 4802 (class 2606 OID 34132)
-- Name: dim_account_history_2025_09 dim_account_history_2025_09_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history_2025_09
    ADD CONSTRAINT dim_account_history_2025_09_pkey PRIMARY KEY (account_history_key, file_date);


--
-- TOC entry 4816 (class 2606 OID 34204)
-- Name: dim_account_history_2025_10 dim_account_history_2025_10_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history_2025_10
    ADD CONSTRAINT dim_account_history_2025_10_pkey PRIMARY KEY (account_history_key, file_date);


--
-- TOC entry 4830 (class 2606 OID 34276)
-- Name: dim_account_history_2025_11 dim_account_history_2025_11_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history_2025_11
    ADD CONSTRAINT dim_account_history_2025_11_pkey PRIMARY KEY (account_history_key, file_date);


--
-- TOC entry 4844 (class 2606 OID 34348)
-- Name: dim_account_history_2025_12 dim_account_history_2025_12_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_history_2025_12
    ADD CONSTRAINT dim_account_history_2025_12_pkey PRIMARY KEY (account_history_key, file_date);


--
-- TOC entry 4542 (class 2606 OID 32248)
-- Name: dim_account dim_account_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account
    ADD CONSTRAINT dim_account_pkey PRIMARY KEY (account_key);


--
-- TOC entry 4860 (class 2606 OID 49668)
-- Name: dim_account_type dim_account_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account_type
    ADD CONSTRAINT dim_account_type_pkey PRIMARY KEY (account_type_code);


--
-- TOC entry 4540 (class 2606 OID 32237)
-- Name: dim_date dim_date_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_date
    ADD CONSTRAINT dim_date_pkey PRIMARY KEY (date_key);


--
-- TOC entry 4555 (class 2606 OID 32312)
-- Name: dim_product_code dim_product_code_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_product_code
    ADD CONSTRAINT dim_product_code_pkey PRIMARY KEY (product_code);


--
-- TOC entry 4536 (class 2606 OID 32228)
-- Name: dim_provider dim_provider_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_provider
    ADD CONSTRAINT dim_provider_pkey PRIMARY KEY (provider_key);


--
-- TOC entry 4538 (class 2606 OID 32230)
-- Name: dim_provider dim_provider_provider_code_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_provider
    ADD CONSTRAINT dim_provider_provider_code_key UNIQUE (provider_code);


--
-- TOC entry 4558 (class 2606 OID 32325)
-- Name: dim_security dim_security_cusip_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_security
    ADD CONSTRAINT dim_security_cusip_key UNIQUE (cusip);


--
-- TOC entry 4560 (class 2606 OID 32323)
-- Name: dim_security dim_security_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_security
    ADD CONSTRAINT dim_security_pkey PRIMARY KEY (security_key);


--
-- TOC entry 4868 (class 2606 OID 50218)
-- Name: dim_transaction_code dim_transaction_code_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_transaction_code
    ADD CONSTRAINT dim_transaction_code_pkey PRIMARY KEY (transaction_code, mnemonic);


--
-- TOC entry 4608 (class 2606 OID 33132)
-- Name: fact_account_balance_history fact_account_balance_history_pkey1; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history
    ADD CONSTRAINT fact_account_balance_history_pkey1 PRIMARY KEY (history_key, file_date);


--
-- TOC entry 4624 (class 2606 OID 33220)
-- Name: fact_account_balance_history_2020 fact_account_balance_history_2020_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2020
    ADD CONSTRAINT fact_account_balance_history_2020_pkey PRIMARY KEY (history_key, file_date);


--
-- TOC entry 4638 (class 2606 OID 33292)
-- Name: fact_account_balance_history_2021 fact_account_balance_history_2021_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2021
    ADD CONSTRAINT fact_account_balance_history_2021_pkey PRIMARY KEY (history_key, file_date);


--
-- TOC entry 4652 (class 2606 OID 33364)
-- Name: fact_account_balance_history_2022 fact_account_balance_history_2022_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2022
    ADD CONSTRAINT fact_account_balance_history_2022_pkey PRIMARY KEY (history_key, file_date);


--
-- TOC entry 4666 (class 2606 OID 33436)
-- Name: fact_account_balance_history_2023 fact_account_balance_history_2023_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2023
    ADD CONSTRAINT fact_account_balance_history_2023_pkey PRIMARY KEY (history_key, file_date);


--
-- TOC entry 4680 (class 2606 OID 33508)
-- Name: fact_account_balance_history_2024 fact_account_balance_history_2024_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2024
    ADD CONSTRAINT fact_account_balance_history_2024_pkey PRIMARY KEY (history_key, file_date);


--
-- TOC entry 4694 (class 2606 OID 33581)
-- Name: fact_account_balance_history_2025_01 fact_account_balance_history_2025_01_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2025_01
    ADD CONSTRAINT fact_account_balance_history_2025_01_pkey PRIMARY KEY (history_key, file_date);


--
-- TOC entry 4708 (class 2606 OID 33653)
-- Name: fact_account_balance_history_2025_02 fact_account_balance_history_2025_02_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2025_02
    ADD CONSTRAINT fact_account_balance_history_2025_02_pkey PRIMARY KEY (history_key, file_date);


--
-- TOC entry 4722 (class 2606 OID 33725)
-- Name: fact_account_balance_history_2025_03 fact_account_balance_history_2025_03_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2025_03
    ADD CONSTRAINT fact_account_balance_history_2025_03_pkey PRIMARY KEY (history_key, file_date);


--
-- TOC entry 4736 (class 2606 OID 33797)
-- Name: fact_account_balance_history_2025_04 fact_account_balance_history_2025_04_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2025_04
    ADD CONSTRAINT fact_account_balance_history_2025_04_pkey PRIMARY KEY (history_key, file_date);


--
-- TOC entry 4750 (class 2606 OID 33869)
-- Name: fact_account_balance_history_2025_05 fact_account_balance_history_2025_05_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2025_05
    ADD CONSTRAINT fact_account_balance_history_2025_05_pkey PRIMARY KEY (history_key, file_date);


--
-- TOC entry 4764 (class 2606 OID 33941)
-- Name: fact_account_balance_history_2025_06 fact_account_balance_history_2025_06_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2025_06
    ADD CONSTRAINT fact_account_balance_history_2025_06_pkey PRIMARY KEY (history_key, file_date);


--
-- TOC entry 4778 (class 2606 OID 34013)
-- Name: fact_account_balance_history_2025_07 fact_account_balance_history_2025_07_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2025_07
    ADD CONSTRAINT fact_account_balance_history_2025_07_pkey PRIMARY KEY (history_key, file_date);


--
-- TOC entry 4792 (class 2606 OID 34085)
-- Name: fact_account_balance_history_2025_08 fact_account_balance_history_2025_08_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2025_08
    ADD CONSTRAINT fact_account_balance_history_2025_08_pkey PRIMARY KEY (history_key, file_date);


--
-- TOC entry 4806 (class 2606 OID 34157)
-- Name: fact_account_balance_history_2025_09 fact_account_balance_history_2025_09_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2025_09
    ADD CONSTRAINT fact_account_balance_history_2025_09_pkey PRIMARY KEY (history_key, file_date);


--
-- TOC entry 4820 (class 2606 OID 34229)
-- Name: fact_account_balance_history_2025_10 fact_account_balance_history_2025_10_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2025_10
    ADD CONSTRAINT fact_account_balance_history_2025_10_pkey PRIMARY KEY (history_key, file_date);


--
-- TOC entry 4834 (class 2606 OID 34301)
-- Name: fact_account_balance_history_2025_11 fact_account_balance_history_2025_11_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2025_11
    ADD CONSTRAINT fact_account_balance_history_2025_11_pkey PRIMARY KEY (history_key, file_date);


--
-- TOC entry 4848 (class 2606 OID 34373)
-- Name: fact_account_balance_history_2025_12 fact_account_balance_history_2025_12_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2025_12
    ADD CONSTRAINT fact_account_balance_history_2025_12_pkey PRIMARY KEY (history_key, file_date);


--
-- TOC entry 4612 (class 2606 OID 33134)
-- Name: fact_account_balance_history unique_account_balance_history; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history
    ADD CONSTRAINT unique_account_balance_history UNIQUE (history_key, account_key, provider_key, date_key, file_date);


--
-- TOC entry 4640 (class 2606 OID 33294)
-- Name: fact_account_balance_history_2021 fact_account_balance_history__history_key_account_key_prov_key1; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2021
    ADD CONSTRAINT fact_account_balance_history__history_key_account_key_prov_key1 UNIQUE (history_key, account_key, provider_key, date_key, file_date);


--
-- TOC entry 4654 (class 2606 OID 33366)
-- Name: fact_account_balance_history_2022 fact_account_balance_history__history_key_account_key_prov_key2; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2022
    ADD CONSTRAINT fact_account_balance_history__history_key_account_key_prov_key2 UNIQUE (history_key, account_key, provider_key, date_key, file_date);


--
-- TOC entry 4668 (class 2606 OID 33438)
-- Name: fact_account_balance_history_2023 fact_account_balance_history__history_key_account_key_prov_key3; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2023
    ADD CONSTRAINT fact_account_balance_history__history_key_account_key_prov_key3 UNIQUE (history_key, account_key, provider_key, date_key, file_date);


--
-- TOC entry 4682 (class 2606 OID 33510)
-- Name: fact_account_balance_history_2024 fact_account_balance_history__history_key_account_key_prov_key4; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2024
    ADD CONSTRAINT fact_account_balance_history__history_key_account_key_prov_key4 UNIQUE (history_key, account_key, provider_key, date_key, file_date);


--
-- TOC entry 4696 (class 2606 OID 33583)
-- Name: fact_account_balance_history_2025_01 fact_account_balance_history__history_key_account_key_prov_key5; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2025_01
    ADD CONSTRAINT fact_account_balance_history__history_key_account_key_prov_key5 UNIQUE (history_key, account_key, provider_key, date_key, file_date);


--
-- TOC entry 4710 (class 2606 OID 33655)
-- Name: fact_account_balance_history_2025_02 fact_account_balance_history__history_key_account_key_prov_key6; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2025_02
    ADD CONSTRAINT fact_account_balance_history__history_key_account_key_prov_key6 UNIQUE (history_key, account_key, provider_key, date_key, file_date);


--
-- TOC entry 4724 (class 2606 OID 33727)
-- Name: fact_account_balance_history_2025_03 fact_account_balance_history__history_key_account_key_prov_key7; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2025_03
    ADD CONSTRAINT fact_account_balance_history__history_key_account_key_prov_key7 UNIQUE (history_key, account_key, provider_key, date_key, file_date);


--
-- TOC entry 4738 (class 2606 OID 33799)
-- Name: fact_account_balance_history_2025_04 fact_account_balance_history__history_key_account_key_prov_key8; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2025_04
    ADD CONSTRAINT fact_account_balance_history__history_key_account_key_prov_key8 UNIQUE (history_key, account_key, provider_key, date_key, file_date);


--
-- TOC entry 4752 (class 2606 OID 33871)
-- Name: fact_account_balance_history_2025_05 fact_account_balance_history__history_key_account_key_prov_key9; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2025_05
    ADD CONSTRAINT fact_account_balance_history__history_key_account_key_prov_key9 UNIQUE (history_key, account_key, provider_key, date_key, file_date);


--
-- TOC entry 4626 (class 2606 OID 33222)
-- Name: fact_account_balance_history_2020 fact_account_balance_history__history_key_account_key_provi_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2020
    ADD CONSTRAINT fact_account_balance_history__history_key_account_key_provi_key UNIQUE (history_key, account_key, provider_key, date_key, file_date);


--
-- TOC entry 4766 (class 2606 OID 33943)
-- Name: fact_account_balance_history_2025_06 fact_account_balance_history_history_key_account_key_prov_key10; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2025_06
    ADD CONSTRAINT fact_account_balance_history_history_key_account_key_prov_key10 UNIQUE (history_key, account_key, provider_key, date_key, file_date);


--
-- TOC entry 4780 (class 2606 OID 34015)
-- Name: fact_account_balance_history_2025_07 fact_account_balance_history_history_key_account_key_prov_key11; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2025_07
    ADD CONSTRAINT fact_account_balance_history_history_key_account_key_prov_key11 UNIQUE (history_key, account_key, provider_key, date_key, file_date);


--
-- TOC entry 4794 (class 2606 OID 34087)
-- Name: fact_account_balance_history_2025_08 fact_account_balance_history_history_key_account_key_prov_key12; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2025_08
    ADD CONSTRAINT fact_account_balance_history_history_key_account_key_prov_key12 UNIQUE (history_key, account_key, provider_key, date_key, file_date);


--
-- TOC entry 4808 (class 2606 OID 34159)
-- Name: fact_account_balance_history_2025_09 fact_account_balance_history_history_key_account_key_prov_key13; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2025_09
    ADD CONSTRAINT fact_account_balance_history_history_key_account_key_prov_key13 UNIQUE (history_key, account_key, provider_key, date_key, file_date);


--
-- TOC entry 4822 (class 2606 OID 34231)
-- Name: fact_account_balance_history_2025_10 fact_account_balance_history_history_key_account_key_prov_key14; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2025_10
    ADD CONSTRAINT fact_account_balance_history_history_key_account_key_prov_key14 UNIQUE (history_key, account_key, provider_key, date_key, file_date);


--
-- TOC entry 4836 (class 2606 OID 34303)
-- Name: fact_account_balance_history_2025_11 fact_account_balance_history_history_key_account_key_prov_key15; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2025_11
    ADD CONSTRAINT fact_account_balance_history_history_key_account_key_prov_key15 UNIQUE (history_key, account_key, provider_key, date_key, file_date);


--
-- TOC entry 4850 (class 2606 OID 34375)
-- Name: fact_account_balance_history_2025_12 fact_account_balance_history_history_key_account_key_prov_key16; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance_history_2025_12
    ADD CONSTRAINT fact_account_balance_history_history_key_account_key_prov_key16 UNIQUE (history_key, account_key, provider_key, date_key, file_date);


--
-- TOC entry 4566 (class 2606 OID 32346)
-- Name: fact_account_balance fact_account_balance_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance
    ADD CONSTRAINT fact_account_balance_pkey PRIMARY KEY (balance_key);


--
-- TOC entry 4573 (class 2606 OID 32408)
-- Name: fact_cash_flow fact_cash_flow_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_cash_flow
    ADD CONSTRAINT fact_cash_flow_pkey PRIMARY KEY (cashflow_key);


--
-- TOC entry 4874 (class 2606 OID 65891)
-- Name: fact_icp fact_icp_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_icp
    ADD CONSTRAINT fact_icp_pkey PRIMARY KEY (icp_id);


--
-- TOC entry 4618 (class 2606 OID 33160)
-- Name: fact_position_holding_history unique_provider_account_security_date_history; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history
    ADD CONSTRAINT unique_provider_account_security_date_history UNIQUE (provider_key, account_key, security_key, date_key, account_type, file_date);


--
-- TOC entry 4769 (class 2606 OID 33964)
-- Name: fact_position_holding_history_2025_06 fact_position_holding_histor_provider_key_account_key_sec_key10; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2025_06
    ADD CONSTRAINT fact_position_holding_histor_provider_key_account_key_sec_key10 UNIQUE (provider_key, account_key, security_key, date_key, account_type, file_date);


--
-- TOC entry 4783 (class 2606 OID 34036)
-- Name: fact_position_holding_history_2025_07 fact_position_holding_histor_provider_key_account_key_sec_key11; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2025_07
    ADD CONSTRAINT fact_position_holding_histor_provider_key_account_key_sec_key11 UNIQUE (provider_key, account_key, security_key, date_key, account_type, file_date);


--
-- TOC entry 4797 (class 2606 OID 34108)
-- Name: fact_position_holding_history_2025_08 fact_position_holding_histor_provider_key_account_key_sec_key12; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2025_08
    ADD CONSTRAINT fact_position_holding_histor_provider_key_account_key_sec_key12 UNIQUE (provider_key, account_key, security_key, date_key, account_type, file_date);


--
-- TOC entry 4811 (class 2606 OID 34180)
-- Name: fact_position_holding_history_2025_09 fact_position_holding_histor_provider_key_account_key_sec_key13; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2025_09
    ADD CONSTRAINT fact_position_holding_histor_provider_key_account_key_sec_key13 UNIQUE (provider_key, account_key, security_key, date_key, account_type, file_date);


--
-- TOC entry 4825 (class 2606 OID 34252)
-- Name: fact_position_holding_history_2025_10 fact_position_holding_histor_provider_key_account_key_sec_key14; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2025_10
    ADD CONSTRAINT fact_position_holding_histor_provider_key_account_key_sec_key14 UNIQUE (provider_key, account_key, security_key, date_key, account_type, file_date);


--
-- TOC entry 4839 (class 2606 OID 34324)
-- Name: fact_position_holding_history_2025_11 fact_position_holding_histor_provider_key_account_key_sec_key15; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2025_11
    ADD CONSTRAINT fact_position_holding_histor_provider_key_account_key_sec_key15 UNIQUE (provider_key, account_key, security_key, date_key, account_type, file_date);


--
-- TOC entry 4853 (class 2606 OID 34396)
-- Name: fact_position_holding_history_2025_12 fact_position_holding_histor_provider_key_account_key_sec_key16; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2025_12
    ADD CONSTRAINT fact_position_holding_histor_provider_key_account_key_sec_key16 UNIQUE (provider_key, account_key, security_key, date_key, account_type, file_date);


--
-- TOC entry 4614 (class 2606 OID 33158)
-- Name: fact_position_holding_history fact_position_holding_history_pkey1; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history
    ADD CONSTRAINT fact_position_holding_history_pkey1 PRIMARY KEY (position_history_key, file_date);


--
-- TOC entry 4629 (class 2606 OID 33241)
-- Name: fact_position_holding_history_2020 fact_position_holding_history_2020_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2020
    ADD CONSTRAINT fact_position_holding_history_2020_pkey PRIMARY KEY (position_history_key, file_date);


--
-- TOC entry 4643 (class 2606 OID 33313)
-- Name: fact_position_holding_history_2021 fact_position_holding_history_2021_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2021
    ADD CONSTRAINT fact_position_holding_history_2021_pkey PRIMARY KEY (position_history_key, file_date);


--
-- TOC entry 4657 (class 2606 OID 33385)
-- Name: fact_position_holding_history_2022 fact_position_holding_history_2022_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2022
    ADD CONSTRAINT fact_position_holding_history_2022_pkey PRIMARY KEY (position_history_key, file_date);


--
-- TOC entry 4671 (class 2606 OID 33457)
-- Name: fact_position_holding_history_2023 fact_position_holding_history_2023_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2023
    ADD CONSTRAINT fact_position_holding_history_2023_pkey PRIMARY KEY (position_history_key, file_date);


--
-- TOC entry 4685 (class 2606 OID 33529)
-- Name: fact_position_holding_history_2024 fact_position_holding_history_2024_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2024
    ADD CONSTRAINT fact_position_holding_history_2024_pkey PRIMARY KEY (position_history_key, file_date);


--
-- TOC entry 4699 (class 2606 OID 33602)
-- Name: fact_position_holding_history_2025_01 fact_position_holding_history_2025_01_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2025_01
    ADD CONSTRAINT fact_position_holding_history_2025_01_pkey PRIMARY KEY (position_history_key, file_date);


--
-- TOC entry 4713 (class 2606 OID 33674)
-- Name: fact_position_holding_history_2025_02 fact_position_holding_history_2025_02_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2025_02
    ADD CONSTRAINT fact_position_holding_history_2025_02_pkey PRIMARY KEY (position_history_key, file_date);


--
-- TOC entry 4727 (class 2606 OID 33746)
-- Name: fact_position_holding_history_2025_03 fact_position_holding_history_2025_03_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2025_03
    ADD CONSTRAINT fact_position_holding_history_2025_03_pkey PRIMARY KEY (position_history_key, file_date);


--
-- TOC entry 4741 (class 2606 OID 33818)
-- Name: fact_position_holding_history_2025_04 fact_position_holding_history_2025_04_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2025_04
    ADD CONSTRAINT fact_position_holding_history_2025_04_pkey PRIMARY KEY (position_history_key, file_date);


--
-- TOC entry 4755 (class 2606 OID 33890)
-- Name: fact_position_holding_history_2025_05 fact_position_holding_history_2025_05_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2025_05
    ADD CONSTRAINT fact_position_holding_history_2025_05_pkey PRIMARY KEY (position_history_key, file_date);


--
-- TOC entry 4772 (class 2606 OID 33962)
-- Name: fact_position_holding_history_2025_06 fact_position_holding_history_2025_06_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2025_06
    ADD CONSTRAINT fact_position_holding_history_2025_06_pkey PRIMARY KEY (position_history_key, file_date);


--
-- TOC entry 4786 (class 2606 OID 34034)
-- Name: fact_position_holding_history_2025_07 fact_position_holding_history_2025_07_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2025_07
    ADD CONSTRAINT fact_position_holding_history_2025_07_pkey PRIMARY KEY (position_history_key, file_date);


--
-- TOC entry 4800 (class 2606 OID 34106)
-- Name: fact_position_holding_history_2025_08 fact_position_holding_history_2025_08_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2025_08
    ADD CONSTRAINT fact_position_holding_history_2025_08_pkey PRIMARY KEY (position_history_key, file_date);


--
-- TOC entry 4814 (class 2606 OID 34178)
-- Name: fact_position_holding_history_2025_09 fact_position_holding_history_2025_09_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2025_09
    ADD CONSTRAINT fact_position_holding_history_2025_09_pkey PRIMARY KEY (position_history_key, file_date);


--
-- TOC entry 4828 (class 2606 OID 34250)
-- Name: fact_position_holding_history_2025_10 fact_position_holding_history_2025_10_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2025_10
    ADD CONSTRAINT fact_position_holding_history_2025_10_pkey PRIMARY KEY (position_history_key, file_date);


--
-- TOC entry 4842 (class 2606 OID 34322)
-- Name: fact_position_holding_history_2025_11 fact_position_holding_history_2025_11_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2025_11
    ADD CONSTRAINT fact_position_holding_history_2025_11_pkey PRIMARY KEY (position_history_key, file_date);


--
-- TOC entry 4856 (class 2606 OID 34394)
-- Name: fact_position_holding_history_2025_12 fact_position_holding_history_2025_12_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2025_12
    ADD CONSTRAINT fact_position_holding_history_2025_12_pkey PRIMARY KEY (position_history_key, file_date);


--
-- TOC entry 4646 (class 2606 OID 33315)
-- Name: fact_position_holding_history_2021 fact_position_holding_history_provider_key_account_key_sec_key1; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2021
    ADD CONSTRAINT fact_position_holding_history_provider_key_account_key_sec_key1 UNIQUE (provider_key, account_key, security_key, date_key, account_type, file_date);


--
-- TOC entry 4660 (class 2606 OID 33387)
-- Name: fact_position_holding_history_2022 fact_position_holding_history_provider_key_account_key_sec_key2; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2022
    ADD CONSTRAINT fact_position_holding_history_provider_key_account_key_sec_key2 UNIQUE (provider_key, account_key, security_key, date_key, account_type, file_date);


--
-- TOC entry 4674 (class 2606 OID 33459)
-- Name: fact_position_holding_history_2023 fact_position_holding_history_provider_key_account_key_sec_key3; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2023
    ADD CONSTRAINT fact_position_holding_history_provider_key_account_key_sec_key3 UNIQUE (provider_key, account_key, security_key, date_key, account_type, file_date);


--
-- TOC entry 4688 (class 2606 OID 33531)
-- Name: fact_position_holding_history_2024 fact_position_holding_history_provider_key_account_key_sec_key4; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2024
    ADD CONSTRAINT fact_position_holding_history_provider_key_account_key_sec_key4 UNIQUE (provider_key, account_key, security_key, date_key, account_type, file_date);


--
-- TOC entry 4702 (class 2606 OID 33604)
-- Name: fact_position_holding_history_2025_01 fact_position_holding_history_provider_key_account_key_sec_key5; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2025_01
    ADD CONSTRAINT fact_position_holding_history_provider_key_account_key_sec_key5 UNIQUE (provider_key, account_key, security_key, date_key, account_type, file_date);


--
-- TOC entry 4716 (class 2606 OID 33676)
-- Name: fact_position_holding_history_2025_02 fact_position_holding_history_provider_key_account_key_sec_key6; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2025_02
    ADD CONSTRAINT fact_position_holding_history_provider_key_account_key_sec_key6 UNIQUE (provider_key, account_key, security_key, date_key, account_type, file_date);


--
-- TOC entry 4730 (class 2606 OID 33748)
-- Name: fact_position_holding_history_2025_03 fact_position_holding_history_provider_key_account_key_sec_key7; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2025_03
    ADD CONSTRAINT fact_position_holding_history_provider_key_account_key_sec_key7 UNIQUE (provider_key, account_key, security_key, date_key, account_type, file_date);


--
-- TOC entry 4744 (class 2606 OID 33820)
-- Name: fact_position_holding_history_2025_04 fact_position_holding_history_provider_key_account_key_sec_key8; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2025_04
    ADD CONSTRAINT fact_position_holding_history_provider_key_account_key_sec_key8 UNIQUE (provider_key, account_key, security_key, date_key, account_type, file_date);


--
-- TOC entry 4758 (class 2606 OID 33892)
-- Name: fact_position_holding_history_2025_05 fact_position_holding_history_provider_key_account_key_sec_key9; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2025_05
    ADD CONSTRAINT fact_position_holding_history_provider_key_account_key_sec_key9 UNIQUE (provider_key, account_key, security_key, date_key, account_type, file_date);


--
-- TOC entry 4632 (class 2606 OID 33243)
-- Name: fact_position_holding_history_2020 fact_position_holding_history_provider_key_account_key_secu_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding_history_2020
    ADD CONSTRAINT fact_position_holding_history_provider_key_account_key_secu_key UNIQUE (provider_key, account_key, security_key, date_key, account_type, file_date);


--
-- TOC entry 4577 (class 2606 OID 32439)
-- Name: fact_position_holding fact_position_holding_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding
    ADD CONSTRAINT fact_position_holding_pkey PRIMARY KEY (position_key);


--
-- TOC entry 4585 (class 2606 OID 32470)
-- Name: fact_realized_gain fact_realized_gain_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_realized_gain
    ADD CONSTRAINT fact_realized_gain_pkey PRIMARY KEY (realized_key);


--
-- TOC entry 4592 (class 2606 OID 32506)
-- Name: fact_required_minimum_distribution fact_required_minimum_distribution_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_required_minimum_distribution
    ADD CONSTRAINT fact_required_minimum_distribution_pkey PRIMARY KEY (rmd_key);


--
-- TOC entry 4862 (class 2606 OID 50024)
-- Name: fact_transaction fact_transaction_new_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_transaction
    ADD CONSTRAINT fact_transaction_new_pkey PRIMARY KEY (txn_key);


--
-- TOC entry 4598 (class 2606 OID 32534)
-- Name: fact_unrealized_gain fact_unrealized_gain_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_unrealized_gain
    ADD CONSTRAINT fact_unrealized_gain_pkey PRIMARY KEY (unrealized_key);


--
-- TOC entry 4870 (class 2606 OID 50692)
-- Name: staging_account_types staging_account_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.staging_account_types
    ADD CONSTRAINT staging_account_types_pkey PRIMARY KEY (account_type);


--
-- TOC entry 4858 (class 2606 OID 49573)
-- Name: staging_icp_txn_desc staging_icp_txn_desc_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.staging_icp_txn_desc
    ADD CONSTRAINT staging_icp_txn_desc_pkey PRIMARY KEY (transaction_description);


--
-- TOC entry 4872 (class 2606 OID 50755)
-- Name: stg_icp_flow stg_icp_flow_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stg_icp_flow
    ADD CONSTRAINT stg_icp_flow_pkey PRIMARY KEY (flow_id);


--
-- TOC entry 4553 (class 2606 OID 32265)
-- Name: dim_account unique_account_provider; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account
    ADD CONSTRAINT unique_account_provider UNIQUE (account_number, provider_key);


--
-- TOC entry 4571 (class 2606 OID 32363)
-- Name: fact_account_balance unique_account_provider_date; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance
    ADD CONSTRAINT unique_account_provider_date UNIQUE (account_key, provider_key, date_key);


--
-- TOC entry 4596 (class 2606 OID 32523)
-- Name: fact_required_minimum_distribution unique_provider_account_date_required_minimum_distribution; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_required_minimum_distribution
    ADD CONSTRAINT unique_provider_account_date_required_minimum_distribution UNIQUE (provider_key, account_key, date_key);


--
-- TOC entry 4590 (class 2606 OID 32686)
-- Name: fact_realized_gain unique_provider_account_security_close_date_realized_gain; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_realized_gain
    ADD CONSTRAINT unique_provider_account_security_close_date_realized_gain UNIQUE (provider_key, account_key, security_key, close_date_key, lot_id);


--
-- TOC entry 4575 (class 2606 OID 32615)
-- Name: fact_cash_flow unique_provider_account_security_date_date_key_cash_flow; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_cash_flow
    ADD CONSTRAINT unique_provider_account_security_date_date_key_cash_flow UNIQUE (provider_key, account_key, security_key, date_key, plan_number);


--
-- TOC entry 4604 (class 2606 OID 32561)
-- Name: fact_unrealized_gain unique_provider_account_security_lot_date; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_unrealized_gain
    ADD CONSTRAINT unique_provider_account_security_lot_date UNIQUE (provider_key, account_key, security_key, lot_id, date_key);


--
-- TOC entry 4609 (class 1259 OID 88458)
-- Name: idx_fabh_account_key_file_date; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_fabh_account_key_file_date ON ONLY public.fact_account_balance_history USING btree (account_key, file_date);


--
-- TOC entry 4621 (class 1259 OID 88459)
-- Name: fact_account_balance_history_2020_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2020_account_key_file_date_idx ON public.fact_account_balance_history_2020 USING btree (account_key, file_date);


--
-- TOC entry 4610 (class 1259 OID 88476)
-- Name: idx_fabh_file_date; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_fabh_file_date ON ONLY public.fact_account_balance_history USING btree (file_date);


--
-- TOC entry 4622 (class 1259 OID 88477)
-- Name: fact_account_balance_history_2020_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2020_file_date_idx ON public.fact_account_balance_history_2020 USING btree (file_date);


--
-- TOC entry 4635 (class 1259 OID 88460)
-- Name: fact_account_balance_history_2021_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2021_account_key_file_date_idx ON public.fact_account_balance_history_2021 USING btree (account_key, file_date);


--
-- TOC entry 4636 (class 1259 OID 88478)
-- Name: fact_account_balance_history_2021_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2021_file_date_idx ON public.fact_account_balance_history_2021 USING btree (file_date);


--
-- TOC entry 4649 (class 1259 OID 88461)
-- Name: fact_account_balance_history_2022_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2022_account_key_file_date_idx ON public.fact_account_balance_history_2022 USING btree (account_key, file_date);


--
-- TOC entry 4650 (class 1259 OID 88479)
-- Name: fact_account_balance_history_2022_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2022_file_date_idx ON public.fact_account_balance_history_2022 USING btree (file_date);


--
-- TOC entry 4663 (class 1259 OID 88462)
-- Name: fact_account_balance_history_2023_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2023_account_key_file_date_idx ON public.fact_account_balance_history_2023 USING btree (account_key, file_date);


--
-- TOC entry 4664 (class 1259 OID 88480)
-- Name: fact_account_balance_history_2023_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2023_file_date_idx ON public.fact_account_balance_history_2023 USING btree (file_date);


--
-- TOC entry 4677 (class 1259 OID 88463)
-- Name: fact_account_balance_history_2024_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2024_account_key_file_date_idx ON public.fact_account_balance_history_2024 USING btree (account_key, file_date);


--
-- TOC entry 4678 (class 1259 OID 88481)
-- Name: fact_account_balance_history_2024_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2024_file_date_idx ON public.fact_account_balance_history_2024 USING btree (file_date);


--
-- TOC entry 4691 (class 1259 OID 88464)
-- Name: fact_account_balance_history_2025_01_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2025_01_account_key_file_date_idx ON public.fact_account_balance_history_2025_01 USING btree (account_key, file_date);


--
-- TOC entry 4692 (class 1259 OID 88482)
-- Name: fact_account_balance_history_2025_01_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2025_01_file_date_idx ON public.fact_account_balance_history_2025_01 USING btree (file_date);


--
-- TOC entry 4705 (class 1259 OID 88465)
-- Name: fact_account_balance_history_2025_02_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2025_02_account_key_file_date_idx ON public.fact_account_balance_history_2025_02 USING btree (account_key, file_date);


--
-- TOC entry 4706 (class 1259 OID 88483)
-- Name: fact_account_balance_history_2025_02_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2025_02_file_date_idx ON public.fact_account_balance_history_2025_02 USING btree (file_date);


--
-- TOC entry 4719 (class 1259 OID 88466)
-- Name: fact_account_balance_history_2025_03_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2025_03_account_key_file_date_idx ON public.fact_account_balance_history_2025_03 USING btree (account_key, file_date);


--
-- TOC entry 4720 (class 1259 OID 88484)
-- Name: fact_account_balance_history_2025_03_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2025_03_file_date_idx ON public.fact_account_balance_history_2025_03 USING btree (file_date);


--
-- TOC entry 4733 (class 1259 OID 88467)
-- Name: fact_account_balance_history_2025_04_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2025_04_account_key_file_date_idx ON public.fact_account_balance_history_2025_04 USING btree (account_key, file_date);


--
-- TOC entry 4734 (class 1259 OID 88485)
-- Name: fact_account_balance_history_2025_04_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2025_04_file_date_idx ON public.fact_account_balance_history_2025_04 USING btree (file_date);


--
-- TOC entry 4747 (class 1259 OID 88468)
-- Name: fact_account_balance_history_2025_05_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2025_05_account_key_file_date_idx ON public.fact_account_balance_history_2025_05 USING btree (account_key, file_date);


--
-- TOC entry 4748 (class 1259 OID 88486)
-- Name: fact_account_balance_history_2025_05_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2025_05_file_date_idx ON public.fact_account_balance_history_2025_05 USING btree (file_date);


--
-- TOC entry 4761 (class 1259 OID 88469)
-- Name: fact_account_balance_history_2025_06_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2025_06_account_key_file_date_idx ON public.fact_account_balance_history_2025_06 USING btree (account_key, file_date);


--
-- TOC entry 4762 (class 1259 OID 88487)
-- Name: fact_account_balance_history_2025_06_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2025_06_file_date_idx ON public.fact_account_balance_history_2025_06 USING btree (file_date);


--
-- TOC entry 4775 (class 1259 OID 88470)
-- Name: fact_account_balance_history_2025_07_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2025_07_account_key_file_date_idx ON public.fact_account_balance_history_2025_07 USING btree (account_key, file_date);


--
-- TOC entry 4776 (class 1259 OID 88488)
-- Name: fact_account_balance_history_2025_07_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2025_07_file_date_idx ON public.fact_account_balance_history_2025_07 USING btree (file_date);


--
-- TOC entry 4789 (class 1259 OID 88471)
-- Name: fact_account_balance_history_2025_08_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2025_08_account_key_file_date_idx ON public.fact_account_balance_history_2025_08 USING btree (account_key, file_date);


--
-- TOC entry 4790 (class 1259 OID 88489)
-- Name: fact_account_balance_history_2025_08_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2025_08_file_date_idx ON public.fact_account_balance_history_2025_08 USING btree (file_date);


--
-- TOC entry 4803 (class 1259 OID 88472)
-- Name: fact_account_balance_history_2025_09_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2025_09_account_key_file_date_idx ON public.fact_account_balance_history_2025_09 USING btree (account_key, file_date);


--
-- TOC entry 4804 (class 1259 OID 88490)
-- Name: fact_account_balance_history_2025_09_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2025_09_file_date_idx ON public.fact_account_balance_history_2025_09 USING btree (file_date);


--
-- TOC entry 4817 (class 1259 OID 88473)
-- Name: fact_account_balance_history_2025_10_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2025_10_account_key_file_date_idx ON public.fact_account_balance_history_2025_10 USING btree (account_key, file_date);


--
-- TOC entry 4818 (class 1259 OID 88491)
-- Name: fact_account_balance_history_2025_10_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2025_10_file_date_idx ON public.fact_account_balance_history_2025_10 USING btree (file_date);


--
-- TOC entry 4831 (class 1259 OID 88474)
-- Name: fact_account_balance_history_2025_11_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2025_11_account_key_file_date_idx ON public.fact_account_balance_history_2025_11 USING btree (account_key, file_date);


--
-- TOC entry 4832 (class 1259 OID 88492)
-- Name: fact_account_balance_history_2025_11_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2025_11_file_date_idx ON public.fact_account_balance_history_2025_11 USING btree (file_date);


--
-- TOC entry 4845 (class 1259 OID 88475)
-- Name: fact_account_balance_history_2025_12_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2025_12_account_key_file_date_idx ON public.fact_account_balance_history_2025_12 USING btree (account_key, file_date);


--
-- TOC entry 4846 (class 1259 OID 88493)
-- Name: fact_account_balance_history_2025_12_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_account_balance_history_2025_12_file_date_idx ON public.fact_account_balance_history_2025_12 USING btree (file_date);


--
-- TOC entry 4616 (class 1259 OID 88512)
-- Name: idx_fphh_file_date_account_security; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_fphh_file_date_account_security ON ONLY public.fact_position_holding_history USING btree (file_date, account_key, security_key);


--
-- TOC entry 4767 (class 1259 OID 88523)
-- Name: fact_position_holding_histor_file_date_account_key_securi_idx10; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_histor_file_date_account_key_securi_idx10 ON public.fact_position_holding_history_2025_06 USING btree (file_date, account_key, security_key);


--
-- TOC entry 4781 (class 1259 OID 88524)
-- Name: fact_position_holding_histor_file_date_account_key_securi_idx11; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_histor_file_date_account_key_securi_idx11 ON public.fact_position_holding_history_2025_07 USING btree (file_date, account_key, security_key);


--
-- TOC entry 4795 (class 1259 OID 88525)
-- Name: fact_position_holding_histor_file_date_account_key_securi_idx12; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_histor_file_date_account_key_securi_idx12 ON public.fact_position_holding_history_2025_08 USING btree (file_date, account_key, security_key);


--
-- TOC entry 4809 (class 1259 OID 88526)
-- Name: fact_position_holding_histor_file_date_account_key_securi_idx13; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_histor_file_date_account_key_securi_idx13 ON public.fact_position_holding_history_2025_09 USING btree (file_date, account_key, security_key);


--
-- TOC entry 4823 (class 1259 OID 88527)
-- Name: fact_position_holding_histor_file_date_account_key_securi_idx14; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_histor_file_date_account_key_securi_idx14 ON public.fact_position_holding_history_2025_10 USING btree (file_date, account_key, security_key);


--
-- TOC entry 4837 (class 1259 OID 88528)
-- Name: fact_position_holding_histor_file_date_account_key_securi_idx15; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_histor_file_date_account_key_securi_idx15 ON public.fact_position_holding_history_2025_11 USING btree (file_date, account_key, security_key);


--
-- TOC entry 4851 (class 1259 OID 88529)
-- Name: fact_position_holding_histor_file_date_account_key_securi_idx16; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_histor_file_date_account_key_securi_idx16 ON public.fact_position_holding_history_2025_12 USING btree (file_date, account_key, security_key);


--
-- TOC entry 4615 (class 1259 OID 88494)
-- Name: idx_fphh_account_key_file_date; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_fphh_account_key_file_date ON ONLY public.fact_position_holding_history USING btree (account_key, file_date);


--
-- TOC entry 4627 (class 1259 OID 88495)
-- Name: fact_position_holding_history_2020_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_history_2020_account_key_file_date_idx ON public.fact_position_holding_history_2020 USING btree (account_key, file_date);


--
-- TOC entry 4641 (class 1259 OID 88496)
-- Name: fact_position_holding_history_2021_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_history_2021_account_key_file_date_idx ON public.fact_position_holding_history_2021 USING btree (account_key, file_date);


--
-- TOC entry 4655 (class 1259 OID 88497)
-- Name: fact_position_holding_history_2022_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_history_2022_account_key_file_date_idx ON public.fact_position_holding_history_2022 USING btree (account_key, file_date);


--
-- TOC entry 4669 (class 1259 OID 88498)
-- Name: fact_position_holding_history_2023_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_history_2023_account_key_file_date_idx ON public.fact_position_holding_history_2023 USING btree (account_key, file_date);


--
-- TOC entry 4683 (class 1259 OID 88499)
-- Name: fact_position_holding_history_2024_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_history_2024_account_key_file_date_idx ON public.fact_position_holding_history_2024 USING btree (account_key, file_date);


--
-- TOC entry 4697 (class 1259 OID 88500)
-- Name: fact_position_holding_history_2025_01_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_history_2025_01_account_key_file_date_idx ON public.fact_position_holding_history_2025_01 USING btree (account_key, file_date);


--
-- TOC entry 4711 (class 1259 OID 88501)
-- Name: fact_position_holding_history_2025_02_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_history_2025_02_account_key_file_date_idx ON public.fact_position_holding_history_2025_02 USING btree (account_key, file_date);


--
-- TOC entry 4725 (class 1259 OID 88502)
-- Name: fact_position_holding_history_2025_03_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_history_2025_03_account_key_file_date_idx ON public.fact_position_holding_history_2025_03 USING btree (account_key, file_date);


--
-- TOC entry 4739 (class 1259 OID 88503)
-- Name: fact_position_holding_history_2025_04_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_history_2025_04_account_key_file_date_idx ON public.fact_position_holding_history_2025_04 USING btree (account_key, file_date);


--
-- TOC entry 4753 (class 1259 OID 88504)
-- Name: fact_position_holding_history_2025_05_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_history_2025_05_account_key_file_date_idx ON public.fact_position_holding_history_2025_05 USING btree (account_key, file_date);


--
-- TOC entry 4770 (class 1259 OID 88505)
-- Name: fact_position_holding_history_2025_06_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_history_2025_06_account_key_file_date_idx ON public.fact_position_holding_history_2025_06 USING btree (account_key, file_date);


--
-- TOC entry 4784 (class 1259 OID 88506)
-- Name: fact_position_holding_history_2025_07_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_history_2025_07_account_key_file_date_idx ON public.fact_position_holding_history_2025_07 USING btree (account_key, file_date);


--
-- TOC entry 4798 (class 1259 OID 88507)
-- Name: fact_position_holding_history_2025_08_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_history_2025_08_account_key_file_date_idx ON public.fact_position_holding_history_2025_08 USING btree (account_key, file_date);


--
-- TOC entry 4812 (class 1259 OID 88508)
-- Name: fact_position_holding_history_2025_09_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_history_2025_09_account_key_file_date_idx ON public.fact_position_holding_history_2025_09 USING btree (account_key, file_date);


--
-- TOC entry 4826 (class 1259 OID 88509)
-- Name: fact_position_holding_history_2025_10_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_history_2025_10_account_key_file_date_idx ON public.fact_position_holding_history_2025_10 USING btree (account_key, file_date);


--
-- TOC entry 4840 (class 1259 OID 88510)
-- Name: fact_position_holding_history_2025_11_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_history_2025_11_account_key_file_date_idx ON public.fact_position_holding_history_2025_11 USING btree (account_key, file_date);


--
-- TOC entry 4854 (class 1259 OID 88511)
-- Name: fact_position_holding_history_2025_12_account_key_file_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_history_2025_12_account_key_file_date_idx ON public.fact_position_holding_history_2025_12 USING btree (account_key, file_date);


--
-- TOC entry 4644 (class 1259 OID 88514)
-- Name: fact_position_holding_history_file_date_account_key_securi_idx1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_history_file_date_account_key_securi_idx1 ON public.fact_position_holding_history_2021 USING btree (file_date, account_key, security_key);


--
-- TOC entry 4658 (class 1259 OID 88515)
-- Name: fact_position_holding_history_file_date_account_key_securi_idx2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_history_file_date_account_key_securi_idx2 ON public.fact_position_holding_history_2022 USING btree (file_date, account_key, security_key);


--
-- TOC entry 4672 (class 1259 OID 88516)
-- Name: fact_position_holding_history_file_date_account_key_securi_idx3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_history_file_date_account_key_securi_idx3 ON public.fact_position_holding_history_2023 USING btree (file_date, account_key, security_key);


--
-- TOC entry 4686 (class 1259 OID 88517)
-- Name: fact_position_holding_history_file_date_account_key_securi_idx4; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_history_file_date_account_key_securi_idx4 ON public.fact_position_holding_history_2024 USING btree (file_date, account_key, security_key);


--
-- TOC entry 4700 (class 1259 OID 88518)
-- Name: fact_position_holding_history_file_date_account_key_securi_idx5; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_history_file_date_account_key_securi_idx5 ON public.fact_position_holding_history_2025_01 USING btree (file_date, account_key, security_key);


--
-- TOC entry 4714 (class 1259 OID 88519)
-- Name: fact_position_holding_history_file_date_account_key_securi_idx6; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_history_file_date_account_key_securi_idx6 ON public.fact_position_holding_history_2025_02 USING btree (file_date, account_key, security_key);


--
-- TOC entry 4728 (class 1259 OID 88520)
-- Name: fact_position_holding_history_file_date_account_key_securi_idx7; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_history_file_date_account_key_securi_idx7 ON public.fact_position_holding_history_2025_03 USING btree (file_date, account_key, security_key);


--
-- TOC entry 4742 (class 1259 OID 88521)
-- Name: fact_position_holding_history_file_date_account_key_securi_idx8; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_history_file_date_account_key_securi_idx8 ON public.fact_position_holding_history_2025_04 USING btree (file_date, account_key, security_key);


--
-- TOC entry 4756 (class 1259 OID 88522)
-- Name: fact_position_holding_history_file_date_account_key_securi_idx9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_history_file_date_account_key_securi_idx9 ON public.fact_position_holding_history_2025_05 USING btree (file_date, account_key, security_key);


--
-- TOC entry 4630 (class 1259 OID 88513)
-- Name: fact_position_holding_history_file_date_account_key_securit_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fact_position_holding_history_file_date_account_key_securit_idx ON public.fact_position_holding_history_2020 USING btree (file_date, account_key, security_key);


--
-- TOC entry 4543 (class 1259 OID 88419)
-- Name: idx_da_account_number; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_da_account_number ON public.dim_account USING btree (account_number);


--
-- TOC entry 4544 (class 1259 OID 88426)
-- Name: idx_da_account_number_hash; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_da_account_number_hash ON public.dim_account USING hash (account_number);


--
-- TOC entry 4545 (class 1259 OID 88420)
-- Name: idx_da_account_owner_name_trgm; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_da_account_owner_name_trgm ON public.dim_account USING gin (lower((account_owner_name)::text) public.gin_trgm_ops);


--
-- TOC entry 4546 (class 1259 OID 88423)
-- Name: idx_da_account_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_da_account_type ON public.dim_account USING btree (account_type);


--
-- TOC entry 4547 (class 1259 OID 88425)
-- Name: idx_da_account_type_qualified; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_da_account_type_qualified ON public.dim_account USING btree (account_type, is_qualified_account);


--
-- TOC entry 4548 (class 1259 OID 88424)
-- Name: idx_da_is_qualified_account; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_da_is_qualified_account ON public.dim_account USING btree (is_qualified_account);


--
-- TOC entry 4549 (class 1259 OID 88422)
-- Name: idx_da_note_lines_trgm; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_da_note_lines_trgm ON public.dim_account USING gin (lower((((((account_note_line_1)::text || ' '::text) || (account_note_line_2)::text) || ' '::text) || (account_note_line_3)::text)) public.gin_trgm_ops);


--
-- TOC entry 4550 (class 1259 OID 88421)
-- Name: idx_da_short_name_trgm; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_da_short_name_trgm ON public.dim_account USING gin (lower((short_name)::text) public.gin_trgm_ops);


--
-- TOC entry 4551 (class 1259 OID 34413)
-- Name: idx_dim_account_account_number; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_dim_account_account_number ON public.dim_account USING btree (account_number);


--
-- TOC entry 4561 (class 1259 OID 34414)
-- Name: idx_dim_security_cusip; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_dim_security_cusip ON public.dim_security USING btree (cusip);


--
-- TOC entry 4556 (class 1259 OID 88438)
-- Name: idx_dpc_desc_trgm; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_dpc_desc_trgm ON public.dim_product_code USING gin (lower((product_code_desc)::text) public.gin_trgm_ops);


--
-- TOC entry 4562 (class 1259 OID 88437)
-- Name: idx_ds_desc_lines_trgm; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_ds_desc_lines_trgm ON public.dim_security USING gin (lower((((security_description_line_1)::text || ' '::text) || (security_description_line_2)::text)) public.gin_trgm_ops);


--
-- TOC entry 4563 (class 1259 OID 88436)
-- Name: idx_ds_product_code; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_ds_product_code ON public.dim_security USING btree (product_code);


--
-- TOC entry 4564 (class 1259 OID 88435)
-- Name: idx_ds_security_key; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_ds_security_key ON public.dim_security USING btree (security_key);


--
-- TOC entry 4567 (class 1259 OID 88427)
-- Name: idx_fab_account_key; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_fab_account_key ON public.fact_account_balance USING btree (account_key);


--
-- TOC entry 4568 (class 1259 OID 88428)
-- Name: idx_fab_date_key; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_fab_date_key ON public.fact_account_balance USING btree (date_key);


--
-- TOC entry 4569 (class 1259 OID 34415)
-- Name: idx_fact_account_balance_account_key; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_fact_account_balance_account_key ON public.fact_account_balance USING btree (account_key);


--
-- TOC entry 4875 (class 1259 OID 88439)
-- Name: idx_ficp_account_key; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_ficp_account_key ON public.fact_icp USING btree (account_key);


--
-- TOC entry 4876 (class 1259 OID 88443)
-- Name: idx_ficp_join_conditions; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_ficp_join_conditions ON public.fact_icp USING btree (transaction_date_key, transaction_amount, account_key);


--
-- TOC entry 4877 (class 1259 OID 88444)
-- Name: idx_ficp_sender_payee_trgm; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_ficp_sender_payee_trgm ON public.fact_icp USING gin (lower((sender_payee_account_name)::text) public.gin_trgm_ops);


--
-- TOC entry 4878 (class 1259 OID 88442)
-- Name: idx_ficp_transaction_amount; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_ficp_transaction_amount ON public.fact_icp USING btree (transaction_amount);


--
-- TOC entry 4879 (class 1259 OID 88440)
-- Name: idx_ficp_transaction_date_key; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_ficp_transaction_date_key ON public.fact_icp USING btree (transaction_date_key);


--
-- TOC entry 4880 (class 1259 OID 88441)
-- Name: idx_ficp_transaction_desc_trgm; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_ficp_transaction_desc_trgm ON public.fact_icp USING gin (lower((transaction_description)::text) public.gin_trgm_ops);


--
-- TOC entry 4578 (class 1259 OID 88429)
-- Name: idx_fph_account_key; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_fph_account_key ON public.fact_position_holding USING btree (account_key);


--
-- TOC entry 4579 (class 1259 OID 88434)
-- Name: idx_fph_account_market_value; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_fph_account_market_value ON public.fact_position_holding USING btree (account_key, market_value DESC);


--
-- TOC entry 4580 (class 1259 OID 88433)
-- Name: idx_fph_account_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_fph_account_type ON public.fact_position_holding USING btree (account_type);


--
-- TOC entry 4581 (class 1259 OID 88432)
-- Name: idx_fph_date_key; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_fph_date_key ON public.fact_position_holding USING btree (date_key);


--
-- TOC entry 4582 (class 1259 OID 88431)
-- Name: idx_fph_market_value_desc; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_fph_market_value_desc ON public.fact_position_holding USING btree (market_value DESC);


--
-- TOC entry 4583 (class 1259 OID 88430)
-- Name: idx_fph_security_key; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_fph_security_key ON public.fact_position_holding USING btree (security_key);


--
-- TOC entry 4586 (class 1259 OID 88453)
-- Name: idx_frg_account_key; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_frg_account_key ON public.fact_realized_gain USING btree (account_key);


--
-- TOC entry 4587 (class 1259 OID 88455)
-- Name: idx_frg_close_date_key; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_frg_close_date_key ON public.fact_realized_gain USING btree (close_date_key);


--
-- TOC entry 4588 (class 1259 OID 88454)
-- Name: idx_frg_security_key; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_frg_security_key ON public.fact_realized_gain USING btree (security_key);


--
-- TOC entry 4593 (class 1259 OID 88456)
-- Name: idx_frmd_account_key; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_frmd_account_key ON public.fact_required_minimum_distribution USING btree (account_key);


--
-- TOC entry 4594 (class 1259 OID 88457)
-- Name: idx_frmd_date_key; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_frmd_date_key ON public.fact_required_minimum_distribution USING btree (date_key);


--
-- TOC entry 4863 (class 1259 OID 88445)
-- Name: idx_ft_account_key; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_ft_account_key ON public.fact_transaction USING btree (account_key);


--
-- TOC entry 4864 (class 1259 OID 88447)
-- Name: idx_ft_entry_date_desc; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_ft_entry_date_desc ON public.fact_transaction USING btree (entry_date_key DESC);


--
-- TOC entry 4865 (class 1259 OID 88446)
-- Name: idx_ft_security_key; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_ft_security_key ON public.fact_transaction USING btree (security_key);


--
-- TOC entry 4866 (class 1259 OID 88448)
-- Name: idx_ft_transaction_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_ft_transaction_type ON public.fact_transaction USING btree (transaction_type);


--
-- TOC entry 4599 (class 1259 OID 88449)
-- Name: idx_fug_account_key; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_fug_account_key ON public.fact_unrealized_gain USING btree (account_key);


--
-- TOC entry 4600 (class 1259 OID 88452)
-- Name: idx_fug_acquire_date_key; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_fug_acquire_date_key ON public.fact_unrealized_gain USING btree (acquire_date_key);


--
-- TOC entry 4601 (class 1259 OID 88451)
-- Name: idx_fug_date_key; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_fug_date_key ON public.fact_unrealized_gain USING btree (date_key);


--
-- TOC entry 4602 (class 1259 OID 88450)
-- Name: idx_fug_security_key; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_fug_security_key ON public.fact_unrealized_gain USING btree (security_key);


--
-- TOC entry 4881 (class 0 OID 0)
-- Name: dim_account_history_2020_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.dim_account_history_pkey1 ATTACH PARTITION public.dim_account_history_2020_pkey;


--
-- TOC entry 4890 (class 0 OID 0)
-- Name: dim_account_history_2021_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.dim_account_history_pkey1 ATTACH PARTITION public.dim_account_history_2021_pkey;


--
-- TOC entry 4899 (class 0 OID 0)
-- Name: dim_account_history_2022_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.dim_account_history_pkey1 ATTACH PARTITION public.dim_account_history_2022_pkey;


--
-- TOC entry 4908 (class 0 OID 0)
-- Name: dim_account_history_2023_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.dim_account_history_pkey1 ATTACH PARTITION public.dim_account_history_2023_pkey;


--
-- TOC entry 4917 (class 0 OID 0)
-- Name: dim_account_history_2024_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.dim_account_history_pkey1 ATTACH PARTITION public.dim_account_history_2024_pkey;


--
-- TOC entry 4926 (class 0 OID 0)
-- Name: dim_account_history_2025_01_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.dim_account_history_pkey1 ATTACH PARTITION public.dim_account_history_2025_01_pkey;


--
-- TOC entry 4935 (class 0 OID 0)
-- Name: dim_account_history_2025_02_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.dim_account_history_pkey1 ATTACH PARTITION public.dim_account_history_2025_02_pkey;


--
-- TOC entry 4944 (class 0 OID 0)
-- Name: dim_account_history_2025_03_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.dim_account_history_pkey1 ATTACH PARTITION public.dim_account_history_2025_03_pkey;


--
-- TOC entry 4953 (class 0 OID 0)
-- Name: dim_account_history_2025_04_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.dim_account_history_pkey1 ATTACH PARTITION public.dim_account_history_2025_04_pkey;


--
-- TOC entry 4962 (class 0 OID 0)
-- Name: dim_account_history_2025_05_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.dim_account_history_pkey1 ATTACH PARTITION public.dim_account_history_2025_05_pkey;


--
-- TOC entry 4971 (class 0 OID 0)
-- Name: dim_account_history_2025_06_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.dim_account_history_pkey1 ATTACH PARTITION public.dim_account_history_2025_06_pkey;


--
-- TOC entry 4980 (class 0 OID 0)
-- Name: dim_account_history_2025_07_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.dim_account_history_pkey1 ATTACH PARTITION public.dim_account_history_2025_07_pkey;


--
-- TOC entry 4989 (class 0 OID 0)
-- Name: dim_account_history_2025_08_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.dim_account_history_pkey1 ATTACH PARTITION public.dim_account_history_2025_08_pkey;


--
-- TOC entry 4998 (class 0 OID 0)
-- Name: dim_account_history_2025_09_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.dim_account_history_pkey1 ATTACH PARTITION public.dim_account_history_2025_09_pkey;


--
-- TOC entry 5007 (class 0 OID 0)
-- Name: dim_account_history_2025_10_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.dim_account_history_pkey1 ATTACH PARTITION public.dim_account_history_2025_10_pkey;


--
-- TOC entry 5016 (class 0 OID 0)
-- Name: dim_account_history_2025_11_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.dim_account_history_pkey1 ATTACH PARTITION public.dim_account_history_2025_11_pkey;


--
-- TOC entry 5025 (class 0 OID 0)
-- Name: dim_account_history_2025_12_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.dim_account_history_pkey1 ATTACH PARTITION public.dim_account_history_2025_12_pkey;


--
-- TOC entry 4882 (class 0 OID 0)
-- Name: fact_account_balance_history_2020_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2020_account_key_file_date_idx;


--
-- TOC entry 4883 (class 0 OID 0)
-- Name: fact_account_balance_history_2020_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_file_date ATTACH PARTITION public.fact_account_balance_history_2020_file_date_idx;


--
-- TOC entry 4884 (class 0 OID 0)
-- Name: fact_account_balance_history_2020_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_account_balance_history_pkey1 ATTACH PARTITION public.fact_account_balance_history_2020_pkey;


--
-- TOC entry 4891 (class 0 OID 0)
-- Name: fact_account_balance_history_2021_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2021_account_key_file_date_idx;


--
-- TOC entry 4892 (class 0 OID 0)
-- Name: fact_account_balance_history_2021_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_file_date ATTACH PARTITION public.fact_account_balance_history_2021_file_date_idx;


--
-- TOC entry 4893 (class 0 OID 0)
-- Name: fact_account_balance_history_2021_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_account_balance_history_pkey1 ATTACH PARTITION public.fact_account_balance_history_2021_pkey;


--
-- TOC entry 4900 (class 0 OID 0)
-- Name: fact_account_balance_history_2022_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2022_account_key_file_date_idx;


--
-- TOC entry 4901 (class 0 OID 0)
-- Name: fact_account_balance_history_2022_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_file_date ATTACH PARTITION public.fact_account_balance_history_2022_file_date_idx;


--
-- TOC entry 4902 (class 0 OID 0)
-- Name: fact_account_balance_history_2022_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_account_balance_history_pkey1 ATTACH PARTITION public.fact_account_balance_history_2022_pkey;


--
-- TOC entry 4909 (class 0 OID 0)
-- Name: fact_account_balance_history_2023_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2023_account_key_file_date_idx;


--
-- TOC entry 4910 (class 0 OID 0)
-- Name: fact_account_balance_history_2023_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_file_date ATTACH PARTITION public.fact_account_balance_history_2023_file_date_idx;


--
-- TOC entry 4911 (class 0 OID 0)
-- Name: fact_account_balance_history_2023_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_account_balance_history_pkey1 ATTACH PARTITION public.fact_account_balance_history_2023_pkey;


--
-- TOC entry 4918 (class 0 OID 0)
-- Name: fact_account_balance_history_2024_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2024_account_key_file_date_idx;


--
-- TOC entry 4919 (class 0 OID 0)
-- Name: fact_account_balance_history_2024_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_file_date ATTACH PARTITION public.fact_account_balance_history_2024_file_date_idx;


--
-- TOC entry 4920 (class 0 OID 0)
-- Name: fact_account_balance_history_2024_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_account_balance_history_pkey1 ATTACH PARTITION public.fact_account_balance_history_2024_pkey;


--
-- TOC entry 4927 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_01_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2025_01_account_key_file_date_idx;


--
-- TOC entry 4928 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_01_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_file_date ATTACH PARTITION public.fact_account_balance_history_2025_01_file_date_idx;


--
-- TOC entry 4929 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_01_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_account_balance_history_pkey1 ATTACH PARTITION public.fact_account_balance_history_2025_01_pkey;


--
-- TOC entry 4936 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_02_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2025_02_account_key_file_date_idx;


--
-- TOC entry 4937 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_02_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_file_date ATTACH PARTITION public.fact_account_balance_history_2025_02_file_date_idx;


--
-- TOC entry 4938 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_02_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_account_balance_history_pkey1 ATTACH PARTITION public.fact_account_balance_history_2025_02_pkey;


--
-- TOC entry 4945 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_03_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2025_03_account_key_file_date_idx;


--
-- TOC entry 4946 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_03_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_file_date ATTACH PARTITION public.fact_account_balance_history_2025_03_file_date_idx;


--
-- TOC entry 4947 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_03_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_account_balance_history_pkey1 ATTACH PARTITION public.fact_account_balance_history_2025_03_pkey;


--
-- TOC entry 4954 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_04_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2025_04_account_key_file_date_idx;


--
-- TOC entry 4955 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_04_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_file_date ATTACH PARTITION public.fact_account_balance_history_2025_04_file_date_idx;


--
-- TOC entry 4956 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_04_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_account_balance_history_pkey1 ATTACH PARTITION public.fact_account_balance_history_2025_04_pkey;


--
-- TOC entry 4963 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_05_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2025_05_account_key_file_date_idx;


--
-- TOC entry 4964 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_05_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_file_date ATTACH PARTITION public.fact_account_balance_history_2025_05_file_date_idx;


--
-- TOC entry 4965 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_05_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_account_balance_history_pkey1 ATTACH PARTITION public.fact_account_balance_history_2025_05_pkey;


--
-- TOC entry 4972 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_06_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2025_06_account_key_file_date_idx;


--
-- TOC entry 4973 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_06_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_file_date ATTACH PARTITION public.fact_account_balance_history_2025_06_file_date_idx;


--
-- TOC entry 4974 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_06_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_account_balance_history_pkey1 ATTACH PARTITION public.fact_account_balance_history_2025_06_pkey;


--
-- TOC entry 4981 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_07_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2025_07_account_key_file_date_idx;


--
-- TOC entry 4982 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_07_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_file_date ATTACH PARTITION public.fact_account_balance_history_2025_07_file_date_idx;


--
-- TOC entry 4983 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_07_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_account_balance_history_pkey1 ATTACH PARTITION public.fact_account_balance_history_2025_07_pkey;


--
-- TOC entry 4990 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_08_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2025_08_account_key_file_date_idx;


--
-- TOC entry 4991 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_08_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_file_date ATTACH PARTITION public.fact_account_balance_history_2025_08_file_date_idx;


--
-- TOC entry 4992 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_08_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_account_balance_history_pkey1 ATTACH PARTITION public.fact_account_balance_history_2025_08_pkey;


--
-- TOC entry 4999 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_09_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2025_09_account_key_file_date_idx;


--
-- TOC entry 5000 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_09_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_file_date ATTACH PARTITION public.fact_account_balance_history_2025_09_file_date_idx;


--
-- TOC entry 5001 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_09_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_account_balance_history_pkey1 ATTACH PARTITION public.fact_account_balance_history_2025_09_pkey;


--
-- TOC entry 5008 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_10_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2025_10_account_key_file_date_idx;


--
-- TOC entry 5009 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_10_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_file_date ATTACH PARTITION public.fact_account_balance_history_2025_10_file_date_idx;


--
-- TOC entry 5010 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_10_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_account_balance_history_pkey1 ATTACH PARTITION public.fact_account_balance_history_2025_10_pkey;


--
-- TOC entry 5017 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_11_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2025_11_account_key_file_date_idx;


--
-- TOC entry 5018 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_11_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_file_date ATTACH PARTITION public.fact_account_balance_history_2025_11_file_date_idx;


--
-- TOC entry 5019 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_11_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_account_balance_history_pkey1 ATTACH PARTITION public.fact_account_balance_history_2025_11_pkey;


--
-- TOC entry 5026 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_12_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_account_key_file_date ATTACH PARTITION public.fact_account_balance_history_2025_12_account_key_file_date_idx;


--
-- TOC entry 5027 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_12_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fabh_file_date ATTACH PARTITION public.fact_account_balance_history_2025_12_file_date_idx;


--
-- TOC entry 5028 (class 0 OID 0)
-- Name: fact_account_balance_history_2025_12_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_account_balance_history_pkey1 ATTACH PARTITION public.fact_account_balance_history_2025_12_pkey;


--
-- TOC entry 4894 (class 0 OID 0)
-- Name: fact_account_balance_history__history_key_account_key_prov_key1; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_account_balance_history ATTACH PARTITION public.fact_account_balance_history__history_key_account_key_prov_key1;


--
-- TOC entry 4903 (class 0 OID 0)
-- Name: fact_account_balance_history__history_key_account_key_prov_key2; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_account_balance_history ATTACH PARTITION public.fact_account_balance_history__history_key_account_key_prov_key2;


--
-- TOC entry 4912 (class 0 OID 0)
-- Name: fact_account_balance_history__history_key_account_key_prov_key3; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_account_balance_history ATTACH PARTITION public.fact_account_balance_history__history_key_account_key_prov_key3;


--
-- TOC entry 4921 (class 0 OID 0)
-- Name: fact_account_balance_history__history_key_account_key_prov_key4; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_account_balance_history ATTACH PARTITION public.fact_account_balance_history__history_key_account_key_prov_key4;


--
-- TOC entry 4930 (class 0 OID 0)
-- Name: fact_account_balance_history__history_key_account_key_prov_key5; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_account_balance_history ATTACH PARTITION public.fact_account_balance_history__history_key_account_key_prov_key5;


--
-- TOC entry 4939 (class 0 OID 0)
-- Name: fact_account_balance_history__history_key_account_key_prov_key6; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_account_balance_history ATTACH PARTITION public.fact_account_balance_history__history_key_account_key_prov_key6;


--
-- TOC entry 4948 (class 0 OID 0)
-- Name: fact_account_balance_history__history_key_account_key_prov_key7; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_account_balance_history ATTACH PARTITION public.fact_account_balance_history__history_key_account_key_prov_key7;


--
-- TOC entry 4957 (class 0 OID 0)
-- Name: fact_account_balance_history__history_key_account_key_prov_key8; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_account_balance_history ATTACH PARTITION public.fact_account_balance_history__history_key_account_key_prov_key8;


--
-- TOC entry 4966 (class 0 OID 0)
-- Name: fact_account_balance_history__history_key_account_key_prov_key9; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_account_balance_history ATTACH PARTITION public.fact_account_balance_history__history_key_account_key_prov_key9;


--
-- TOC entry 4885 (class 0 OID 0)
-- Name: fact_account_balance_history__history_key_account_key_provi_key; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_account_balance_history ATTACH PARTITION public.fact_account_balance_history__history_key_account_key_provi_key;


--
-- TOC entry 4975 (class 0 OID 0)
-- Name: fact_account_balance_history_history_key_account_key_prov_key10; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_account_balance_history ATTACH PARTITION public.fact_account_balance_history_history_key_account_key_prov_key10;


--
-- TOC entry 4984 (class 0 OID 0)
-- Name: fact_account_balance_history_history_key_account_key_prov_key11; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_account_balance_history ATTACH PARTITION public.fact_account_balance_history_history_key_account_key_prov_key11;


--
-- TOC entry 4993 (class 0 OID 0)
-- Name: fact_account_balance_history_history_key_account_key_prov_key12; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_account_balance_history ATTACH PARTITION public.fact_account_balance_history_history_key_account_key_prov_key12;


--
-- TOC entry 5002 (class 0 OID 0)
-- Name: fact_account_balance_history_history_key_account_key_prov_key13; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_account_balance_history ATTACH PARTITION public.fact_account_balance_history_history_key_account_key_prov_key13;


--
-- TOC entry 5011 (class 0 OID 0)
-- Name: fact_account_balance_history_history_key_account_key_prov_key14; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_account_balance_history ATTACH PARTITION public.fact_account_balance_history_history_key_account_key_prov_key14;


--
-- TOC entry 5020 (class 0 OID 0)
-- Name: fact_account_balance_history_history_key_account_key_prov_key15; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_account_balance_history ATTACH PARTITION public.fact_account_balance_history_history_key_account_key_prov_key15;


--
-- TOC entry 5029 (class 0 OID 0)
-- Name: fact_account_balance_history_history_key_account_key_prov_key16; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_account_balance_history ATTACH PARTITION public.fact_account_balance_history_history_key_account_key_prov_key16;


--
-- TOC entry 4976 (class 0 OID 0)
-- Name: fact_position_holding_histor_file_date_account_key_securi_idx10; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_file_date_account_security ATTACH PARTITION public.fact_position_holding_histor_file_date_account_key_securi_idx10;


--
-- TOC entry 4985 (class 0 OID 0)
-- Name: fact_position_holding_histor_file_date_account_key_securi_idx11; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_file_date_account_security ATTACH PARTITION public.fact_position_holding_histor_file_date_account_key_securi_idx11;


--
-- TOC entry 4994 (class 0 OID 0)
-- Name: fact_position_holding_histor_file_date_account_key_securi_idx12; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_file_date_account_security ATTACH PARTITION public.fact_position_holding_histor_file_date_account_key_securi_idx12;


--
-- TOC entry 5003 (class 0 OID 0)
-- Name: fact_position_holding_histor_file_date_account_key_securi_idx13; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_file_date_account_security ATTACH PARTITION public.fact_position_holding_histor_file_date_account_key_securi_idx13;


--
-- TOC entry 5012 (class 0 OID 0)
-- Name: fact_position_holding_histor_file_date_account_key_securi_idx14; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_file_date_account_security ATTACH PARTITION public.fact_position_holding_histor_file_date_account_key_securi_idx14;


--
-- TOC entry 5021 (class 0 OID 0)
-- Name: fact_position_holding_histor_file_date_account_key_securi_idx15; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_file_date_account_security ATTACH PARTITION public.fact_position_holding_histor_file_date_account_key_securi_idx15;


--
-- TOC entry 5030 (class 0 OID 0)
-- Name: fact_position_holding_histor_file_date_account_key_securi_idx16; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_file_date_account_security ATTACH PARTITION public.fact_position_holding_histor_file_date_account_key_securi_idx16;


--
-- TOC entry 4977 (class 0 OID 0)
-- Name: fact_position_holding_histor_provider_key_account_key_sec_key10; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_provider_account_security_date_history ATTACH PARTITION public.fact_position_holding_histor_provider_key_account_key_sec_key10;


--
-- TOC entry 4986 (class 0 OID 0)
-- Name: fact_position_holding_histor_provider_key_account_key_sec_key11; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_provider_account_security_date_history ATTACH PARTITION public.fact_position_holding_histor_provider_key_account_key_sec_key11;


--
-- TOC entry 4995 (class 0 OID 0)
-- Name: fact_position_holding_histor_provider_key_account_key_sec_key12; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_provider_account_security_date_history ATTACH PARTITION public.fact_position_holding_histor_provider_key_account_key_sec_key12;


--
-- TOC entry 5004 (class 0 OID 0)
-- Name: fact_position_holding_histor_provider_key_account_key_sec_key13; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_provider_account_security_date_history ATTACH PARTITION public.fact_position_holding_histor_provider_key_account_key_sec_key13;


--
-- TOC entry 5013 (class 0 OID 0)
-- Name: fact_position_holding_histor_provider_key_account_key_sec_key14; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_provider_account_security_date_history ATTACH PARTITION public.fact_position_holding_histor_provider_key_account_key_sec_key14;


--
-- TOC entry 5022 (class 0 OID 0)
-- Name: fact_position_holding_histor_provider_key_account_key_sec_key15; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_provider_account_security_date_history ATTACH PARTITION public.fact_position_holding_histor_provider_key_account_key_sec_key15;


--
-- TOC entry 5031 (class 0 OID 0)
-- Name: fact_position_holding_histor_provider_key_account_key_sec_key16; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_provider_account_security_date_history ATTACH PARTITION public.fact_position_holding_histor_provider_key_account_key_sec_key16;


--
-- TOC entry 4886 (class 0 OID 0)
-- Name: fact_position_holding_history_2020_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_account_key_file_date ATTACH PARTITION public.fact_position_holding_history_2020_account_key_file_date_idx;


--
-- TOC entry 4887 (class 0 OID 0)
-- Name: fact_position_holding_history_2020_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_position_holding_history_pkey1 ATTACH PARTITION public.fact_position_holding_history_2020_pkey;


--
-- TOC entry 4895 (class 0 OID 0)
-- Name: fact_position_holding_history_2021_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_account_key_file_date ATTACH PARTITION public.fact_position_holding_history_2021_account_key_file_date_idx;


--
-- TOC entry 4896 (class 0 OID 0)
-- Name: fact_position_holding_history_2021_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_position_holding_history_pkey1 ATTACH PARTITION public.fact_position_holding_history_2021_pkey;


--
-- TOC entry 4904 (class 0 OID 0)
-- Name: fact_position_holding_history_2022_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_account_key_file_date ATTACH PARTITION public.fact_position_holding_history_2022_account_key_file_date_idx;


--
-- TOC entry 4905 (class 0 OID 0)
-- Name: fact_position_holding_history_2022_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_position_holding_history_pkey1 ATTACH PARTITION public.fact_position_holding_history_2022_pkey;


--
-- TOC entry 4913 (class 0 OID 0)
-- Name: fact_position_holding_history_2023_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_account_key_file_date ATTACH PARTITION public.fact_position_holding_history_2023_account_key_file_date_idx;


--
-- TOC entry 4914 (class 0 OID 0)
-- Name: fact_position_holding_history_2023_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_position_holding_history_pkey1 ATTACH PARTITION public.fact_position_holding_history_2023_pkey;


--
-- TOC entry 4922 (class 0 OID 0)
-- Name: fact_position_holding_history_2024_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_account_key_file_date ATTACH PARTITION public.fact_position_holding_history_2024_account_key_file_date_idx;


--
-- TOC entry 4923 (class 0 OID 0)
-- Name: fact_position_holding_history_2024_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_position_holding_history_pkey1 ATTACH PARTITION public.fact_position_holding_history_2024_pkey;


--
-- TOC entry 4931 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_01_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_account_key_file_date ATTACH PARTITION public.fact_position_holding_history_2025_01_account_key_file_date_idx;


--
-- TOC entry 4932 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_01_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_position_holding_history_pkey1 ATTACH PARTITION public.fact_position_holding_history_2025_01_pkey;


--
-- TOC entry 4940 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_02_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_account_key_file_date ATTACH PARTITION public.fact_position_holding_history_2025_02_account_key_file_date_idx;


--
-- TOC entry 4941 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_02_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_position_holding_history_pkey1 ATTACH PARTITION public.fact_position_holding_history_2025_02_pkey;


--
-- TOC entry 4949 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_03_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_account_key_file_date ATTACH PARTITION public.fact_position_holding_history_2025_03_account_key_file_date_idx;


--
-- TOC entry 4950 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_03_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_position_holding_history_pkey1 ATTACH PARTITION public.fact_position_holding_history_2025_03_pkey;


--
-- TOC entry 4958 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_04_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_account_key_file_date ATTACH PARTITION public.fact_position_holding_history_2025_04_account_key_file_date_idx;


--
-- TOC entry 4959 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_04_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_position_holding_history_pkey1 ATTACH PARTITION public.fact_position_holding_history_2025_04_pkey;


--
-- TOC entry 4967 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_05_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_account_key_file_date ATTACH PARTITION public.fact_position_holding_history_2025_05_account_key_file_date_idx;


--
-- TOC entry 4968 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_05_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_position_holding_history_pkey1 ATTACH PARTITION public.fact_position_holding_history_2025_05_pkey;


--
-- TOC entry 4978 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_06_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_account_key_file_date ATTACH PARTITION public.fact_position_holding_history_2025_06_account_key_file_date_idx;


--
-- TOC entry 4979 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_06_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_position_holding_history_pkey1 ATTACH PARTITION public.fact_position_holding_history_2025_06_pkey;


--
-- TOC entry 4987 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_07_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_account_key_file_date ATTACH PARTITION public.fact_position_holding_history_2025_07_account_key_file_date_idx;


--
-- TOC entry 4988 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_07_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_position_holding_history_pkey1 ATTACH PARTITION public.fact_position_holding_history_2025_07_pkey;


--
-- TOC entry 4996 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_08_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_account_key_file_date ATTACH PARTITION public.fact_position_holding_history_2025_08_account_key_file_date_idx;


--
-- TOC entry 4997 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_08_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_position_holding_history_pkey1 ATTACH PARTITION public.fact_position_holding_history_2025_08_pkey;


--
-- TOC entry 5005 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_09_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_account_key_file_date ATTACH PARTITION public.fact_position_holding_history_2025_09_account_key_file_date_idx;


--
-- TOC entry 5006 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_09_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_position_holding_history_pkey1 ATTACH PARTITION public.fact_position_holding_history_2025_09_pkey;


--
-- TOC entry 5014 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_10_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_account_key_file_date ATTACH PARTITION public.fact_position_holding_history_2025_10_account_key_file_date_idx;


--
-- TOC entry 5015 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_10_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_position_holding_history_pkey1 ATTACH PARTITION public.fact_position_holding_history_2025_10_pkey;


--
-- TOC entry 5023 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_11_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_account_key_file_date ATTACH PARTITION public.fact_position_holding_history_2025_11_account_key_file_date_idx;


--
-- TOC entry 5024 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_11_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_position_holding_history_pkey1 ATTACH PARTITION public.fact_position_holding_history_2025_11_pkey;


--
-- TOC entry 5032 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_12_account_key_file_date_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_account_key_file_date ATTACH PARTITION public.fact_position_holding_history_2025_12_account_key_file_date_idx;


--
-- TOC entry 5033 (class 0 OID 0)
-- Name: fact_position_holding_history_2025_12_pkey; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.fact_position_holding_history_pkey1 ATTACH PARTITION public.fact_position_holding_history_2025_12_pkey;


--
-- TOC entry 4897 (class 0 OID 0)
-- Name: fact_position_holding_history_file_date_account_key_securi_idx1; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_file_date_account_security ATTACH PARTITION public.fact_position_holding_history_file_date_account_key_securi_idx1;


--
-- TOC entry 4906 (class 0 OID 0)
-- Name: fact_position_holding_history_file_date_account_key_securi_idx2; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_file_date_account_security ATTACH PARTITION public.fact_position_holding_history_file_date_account_key_securi_idx2;


--
-- TOC entry 4915 (class 0 OID 0)
-- Name: fact_position_holding_history_file_date_account_key_securi_idx3; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_file_date_account_security ATTACH PARTITION public.fact_position_holding_history_file_date_account_key_securi_idx3;


--
-- TOC entry 4924 (class 0 OID 0)
-- Name: fact_position_holding_history_file_date_account_key_securi_idx4; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_file_date_account_security ATTACH PARTITION public.fact_position_holding_history_file_date_account_key_securi_idx4;


--
-- TOC entry 4933 (class 0 OID 0)
-- Name: fact_position_holding_history_file_date_account_key_securi_idx5; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_file_date_account_security ATTACH PARTITION public.fact_position_holding_history_file_date_account_key_securi_idx5;


--
-- TOC entry 4942 (class 0 OID 0)
-- Name: fact_position_holding_history_file_date_account_key_securi_idx6; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_file_date_account_security ATTACH PARTITION public.fact_position_holding_history_file_date_account_key_securi_idx6;


--
-- TOC entry 4951 (class 0 OID 0)
-- Name: fact_position_holding_history_file_date_account_key_securi_idx7; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_file_date_account_security ATTACH PARTITION public.fact_position_holding_history_file_date_account_key_securi_idx7;


--
-- TOC entry 4960 (class 0 OID 0)
-- Name: fact_position_holding_history_file_date_account_key_securi_idx8; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_file_date_account_security ATTACH PARTITION public.fact_position_holding_history_file_date_account_key_securi_idx8;


--
-- TOC entry 4969 (class 0 OID 0)
-- Name: fact_position_holding_history_file_date_account_key_securi_idx9; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_file_date_account_security ATTACH PARTITION public.fact_position_holding_history_file_date_account_key_securi_idx9;


--
-- TOC entry 4888 (class 0 OID 0)
-- Name: fact_position_holding_history_file_date_account_key_securit_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.idx_fphh_file_date_account_security ATTACH PARTITION public.fact_position_holding_history_file_date_account_key_securit_idx;


--
-- TOC entry 4898 (class 0 OID 0)
-- Name: fact_position_holding_history_provider_key_account_key_sec_key1; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_provider_account_security_date_history ATTACH PARTITION public.fact_position_holding_history_provider_key_account_key_sec_key1;


--
-- TOC entry 4907 (class 0 OID 0)
-- Name: fact_position_holding_history_provider_key_account_key_sec_key2; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_provider_account_security_date_history ATTACH PARTITION public.fact_position_holding_history_provider_key_account_key_sec_key2;


--
-- TOC entry 4916 (class 0 OID 0)
-- Name: fact_position_holding_history_provider_key_account_key_sec_key3; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_provider_account_security_date_history ATTACH PARTITION public.fact_position_holding_history_provider_key_account_key_sec_key3;


--
-- TOC entry 4925 (class 0 OID 0)
-- Name: fact_position_holding_history_provider_key_account_key_sec_key4; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_provider_account_security_date_history ATTACH PARTITION public.fact_position_holding_history_provider_key_account_key_sec_key4;


--
-- TOC entry 4934 (class 0 OID 0)
-- Name: fact_position_holding_history_provider_key_account_key_sec_key5; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_provider_account_security_date_history ATTACH PARTITION public.fact_position_holding_history_provider_key_account_key_sec_key5;


--
-- TOC entry 4943 (class 0 OID 0)
-- Name: fact_position_holding_history_provider_key_account_key_sec_key6; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_provider_account_security_date_history ATTACH PARTITION public.fact_position_holding_history_provider_key_account_key_sec_key6;


--
-- TOC entry 4952 (class 0 OID 0)
-- Name: fact_position_holding_history_provider_key_account_key_sec_key7; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_provider_account_security_date_history ATTACH PARTITION public.fact_position_holding_history_provider_key_account_key_sec_key7;


--
-- TOC entry 4961 (class 0 OID 0)
-- Name: fact_position_holding_history_provider_key_account_key_sec_key8; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_provider_account_security_date_history ATTACH PARTITION public.fact_position_holding_history_provider_key_account_key_sec_key8;


--
-- TOC entry 4970 (class 0 OID 0)
-- Name: fact_position_holding_history_provider_key_account_key_sec_key9; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_provider_account_security_date_history ATTACH PARTITION public.fact_position_holding_history_provider_key_account_key_sec_key9;


--
-- TOC entry 4889 (class 0 OID 0)
-- Name: fact_position_holding_history_provider_key_account_key_secu_key; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.unique_provider_account_security_date_history ATTACH PARTITION public.fact_position_holding_history_provider_key_account_key_secu_key;


--
-- TOC entry 5064 (class 2606 OID 33072)
-- Name: dim_account_history dim_account_history_account_key_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE public.dim_account_history
    ADD CONSTRAINT dim_account_history_account_key_fkey1 FOREIGN KEY (account_key) REFERENCES public.dim_account(account_key);


--
-- TOC entry 5065 (class 2606 OID 33087)
-- Name: dim_account_history dim_account_history_effective_from_date_key_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE public.dim_account_history
    ADD CONSTRAINT dim_account_history_effective_from_date_key_fkey1 FOREIGN KEY (effective_from_date_key) REFERENCES public.dim_date(date_key);


--
-- TOC entry 5066 (class 2606 OID 33092)
-- Name: dim_account_history dim_account_history_effective_to_date_key_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE public.dim_account_history
    ADD CONSTRAINT dim_account_history_effective_to_date_key_fkey1 FOREIGN KEY (effective_to_date_key) REFERENCES public.dim_date(date_key);


--
-- TOC entry 5067 (class 2606 OID 33082)
-- Name: dim_account_history dim_account_history_open_date_key_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE public.dim_account_history
    ADD CONSTRAINT dim_account_history_open_date_key_fkey1 FOREIGN KEY (establishment_date_key) REFERENCES public.dim_date(date_key);


--
-- TOC entry 5068 (class 2606 OID 33077)
-- Name: dim_account_history dim_account_history_provider_key_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE public.dim_account_history
    ADD CONSTRAINT dim_account_history_provider_key_fkey1 FOREIGN KEY (provider_key) REFERENCES public.dim_provider(provider_key);


--
-- TOC entry 5034 (class 2606 OID 32254)
-- Name: dim_account dim_account_open_date_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account
    ADD CONSTRAINT dim_account_open_date_key_fkey FOREIGN KEY (establishment_date_key) REFERENCES public.dim_date(date_key);


--
-- TOC entry 5035 (class 2606 OID 32249)
-- Name: dim_account dim_account_provider_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account
    ADD CONSTRAINT dim_account_provider_key_fkey FOREIGN KEY (provider_key) REFERENCES public.dim_provider(provider_key);


--
-- TOC entry 5037 (class 2606 OID 32331)
-- Name: dim_security dim_security_maturity_date_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_security
    ADD CONSTRAINT dim_security_maturity_date_key_fkey FOREIGN KEY (maturity_date_key) REFERENCES public.dim_date(date_key);


--
-- TOC entry 5038 (class 2606 OID 32326)
-- Name: dim_security dim_security_product_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_security
    ADD CONSTRAINT dim_security_product_code_fkey FOREIGN KEY (product_code) REFERENCES public.dim_product_code(product_code);


--
-- TOC entry 5039 (class 2606 OID 32352)
-- Name: fact_account_balance fact_account_balance_account_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance
    ADD CONSTRAINT fact_account_balance_account_key_fkey FOREIGN KEY (account_key) REFERENCES public.dim_account(account_key);


--
-- TOC entry 5040 (class 2606 OID 32357)
-- Name: fact_account_balance fact_account_balance_date_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance
    ADD CONSTRAINT fact_account_balance_date_key_fkey FOREIGN KEY (date_key) REFERENCES public.dim_date(date_key);


--
-- TOC entry 5070 (class 2606 OID 33140)
-- Name: fact_account_balance_history fact_account_balance_history_account_key_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE public.fact_account_balance_history
    ADD CONSTRAINT fact_account_balance_history_account_key_fkey1 FOREIGN KEY (account_key) REFERENCES public.dim_account(account_key);


--
-- TOC entry 5071 (class 2606 OID 33145)
-- Name: fact_account_balance_history fact_account_balance_history_date_key_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE public.fact_account_balance_history
    ADD CONSTRAINT fact_account_balance_history_date_key_fkey1 FOREIGN KEY (date_key) REFERENCES public.dim_date(date_key);


--
-- TOC entry 5072 (class 2606 OID 33135)
-- Name: fact_account_balance_history fact_account_balance_history_provider_key_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE public.fact_account_balance_history
    ADD CONSTRAINT fact_account_balance_history_provider_key_fkey1 FOREIGN KEY (provider_key) REFERENCES public.dim_provider(provider_key);


--
-- TOC entry 5041 (class 2606 OID 32347)
-- Name: fact_account_balance fact_account_balance_provider_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_account_balance
    ADD CONSTRAINT fact_account_balance_provider_key_fkey FOREIGN KEY (provider_key) REFERENCES public.dim_provider(provider_key);


--
-- TOC entry 5042 (class 2606 OID 32414)
-- Name: fact_cash_flow fact_cash_flow_account_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_cash_flow
    ADD CONSTRAINT fact_cash_flow_account_key_fkey FOREIGN KEY (account_key) REFERENCES public.dim_account(account_key);


--
-- TOC entry 5043 (class 2606 OID 32424)
-- Name: fact_cash_flow fact_cash_flow_date_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_cash_flow
    ADD CONSTRAINT fact_cash_flow_date_key_fkey FOREIGN KEY (date_key) REFERENCES public.dim_date(date_key);


--
-- TOC entry 5044 (class 2606 OID 32409)
-- Name: fact_cash_flow fact_cash_flow_provider_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_cash_flow
    ADD CONSTRAINT fact_cash_flow_provider_key_fkey FOREIGN KEY (provider_key) REFERENCES public.dim_provider(provider_key);


--
-- TOC entry 5045 (class 2606 OID 32419)
-- Name: fact_cash_flow fact_cash_flow_security_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_cash_flow
    ADD CONSTRAINT fact_cash_flow_security_key_fkey FOREIGN KEY (security_key) REFERENCES public.dim_security(security_key);


--
-- TOC entry 5084 (class 2606 OID 65897)
-- Name: fact_icp fact_icp_account_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_icp
    ADD CONSTRAINT fact_icp_account_key_fkey FOREIGN KEY (account_key) REFERENCES public.dim_account(account_key);


--
-- TOC entry 5085 (class 2606 OID 65892)
-- Name: fact_icp fact_icp_provider_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_icp
    ADD CONSTRAINT fact_icp_provider_key_fkey FOREIGN KEY (provider_key) REFERENCES public.dim_provider(provider_key);


--
-- TOC entry 5086 (class 2606 OID 65902)
-- Name: fact_icp fact_icp_transaction_date_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_icp
    ADD CONSTRAINT fact_icp_transaction_date_key_fkey FOREIGN KEY (transaction_date_key) REFERENCES public.dim_date(date_key);


--
-- TOC entry 5046 (class 2606 OID 32445)
-- Name: fact_position_holding fact_position_holding_account_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding
    ADD CONSTRAINT fact_position_holding_account_key_fkey FOREIGN KEY (account_key) REFERENCES public.dim_account(account_key);


--
-- TOC entry 5047 (class 2606 OID 32455)
-- Name: fact_position_holding fact_position_holding_date_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding
    ADD CONSTRAINT fact_position_holding_date_key_fkey FOREIGN KEY (date_key) REFERENCES public.dim_date(date_key);


--
-- TOC entry 5073 (class 2606 OID 33166)
-- Name: fact_position_holding_history fact_position_holding_history_account_key_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE public.fact_position_holding_history
    ADD CONSTRAINT fact_position_holding_history_account_key_fkey1 FOREIGN KEY (account_key) REFERENCES public.dim_account(account_key);


--
-- TOC entry 5074 (class 2606 OID 33176)
-- Name: fact_position_holding_history fact_position_holding_history_date_key_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE public.fact_position_holding_history
    ADD CONSTRAINT fact_position_holding_history_date_key_fkey1 FOREIGN KEY (date_key) REFERENCES public.dim_date(date_key);


--
-- TOC entry 5075 (class 2606 OID 33181)
-- Name: fact_position_holding_history fact_position_holding_history_maturity_date_key_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE public.fact_position_holding_history
    ADD CONSTRAINT fact_position_holding_history_maturity_date_key_fkey1 FOREIGN KEY (maturity_date_key) REFERENCES public.dim_date(date_key);


--
-- TOC entry 5076 (class 2606 OID 33161)
-- Name: fact_position_holding_history fact_position_holding_history_provider_key_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE public.fact_position_holding_history
    ADD CONSTRAINT fact_position_holding_history_provider_key_fkey1 FOREIGN KEY (provider_key) REFERENCES public.dim_provider(provider_key);


--
-- TOC entry 5077 (class 2606 OID 33171)
-- Name: fact_position_holding_history fact_position_holding_history_security_key_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE public.fact_position_holding_history
    ADD CONSTRAINT fact_position_holding_history_security_key_fkey1 FOREIGN KEY (security_key) REFERENCES public.dim_security(security_key);


--
-- TOC entry 5048 (class 2606 OID 32882)
-- Name: fact_position_holding fact_position_holding_maturity_date_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding
    ADD CONSTRAINT fact_position_holding_maturity_date_key_fkey FOREIGN KEY (maturity_date_key) REFERENCES public.dim_date(date_key);


--
-- TOC entry 5049 (class 2606 OID 32440)
-- Name: fact_position_holding fact_position_holding_provider_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding
    ADD CONSTRAINT fact_position_holding_provider_key_fkey FOREIGN KEY (provider_key) REFERENCES public.dim_provider(provider_key);


--
-- TOC entry 5050 (class 2606 OID 32450)
-- Name: fact_position_holding fact_position_holding_security_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_position_holding
    ADD CONSTRAINT fact_position_holding_security_key_fkey FOREIGN KEY (security_key) REFERENCES public.dim_security(security_key);


--
-- TOC entry 5051 (class 2606 OID 32476)
-- Name: fact_realized_gain fact_realized_gain_account_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_realized_gain
    ADD CONSTRAINT fact_realized_gain_account_key_fkey FOREIGN KEY (account_key) REFERENCES public.dim_account(account_key);


--
-- TOC entry 5052 (class 2606 OID 32491)
-- Name: fact_realized_gain fact_realized_gain_acquire_date_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_realized_gain
    ADD CONSTRAINT fact_realized_gain_acquire_date_key_fkey FOREIGN KEY (acquire_date_key) REFERENCES public.dim_date(date_key);


--
-- TOC entry 5053 (class 2606 OID 32486)
-- Name: fact_realized_gain fact_realized_gain_close_date_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_realized_gain
    ADD CONSTRAINT fact_realized_gain_close_date_key_fkey FOREIGN KEY (close_date_key) REFERENCES public.dim_date(date_key);


--
-- TOC entry 5054 (class 2606 OID 32471)
-- Name: fact_realized_gain fact_realized_gain_provider_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_realized_gain
    ADD CONSTRAINT fact_realized_gain_provider_key_fkey FOREIGN KEY (provider_key) REFERENCES public.dim_provider(provider_key);


--
-- TOC entry 5055 (class 2606 OID 32481)
-- Name: fact_realized_gain fact_realized_gain_security_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_realized_gain
    ADD CONSTRAINT fact_realized_gain_security_key_fkey FOREIGN KEY (security_key) REFERENCES public.dim_security(security_key);


--
-- TOC entry 5056 (class 2606 OID 32512)
-- Name: fact_required_minimum_distribution fact_required_minimum_distribution_account_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_required_minimum_distribution
    ADD CONSTRAINT fact_required_minimum_distribution_account_key_fkey FOREIGN KEY (account_key) REFERENCES public.dim_account(account_key);


--
-- TOC entry 5057 (class 2606 OID 32517)
-- Name: fact_required_minimum_distribution fact_required_minimum_distribution_date_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_required_minimum_distribution
    ADD CONSTRAINT fact_required_minimum_distribution_date_key_fkey FOREIGN KEY (date_key) REFERENCES public.dim_date(date_key);


--
-- TOC entry 5058 (class 2606 OID 32507)
-- Name: fact_required_minimum_distribution fact_required_minimum_distribution_provider_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_required_minimum_distribution
    ADD CONSTRAINT fact_required_minimum_distribution_provider_key_fkey FOREIGN KEY (provider_key) REFERENCES public.dim_provider(provider_key);


--
-- TOC entry 5078 (class 2606 OID 50030)
-- Name: fact_transaction fact_transaction_new_account_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_transaction
    ADD CONSTRAINT fact_transaction_new_account_key_fkey FOREIGN KEY (account_key) REFERENCES public.dim_account(account_key);


--
-- TOC entry 5079 (class 2606 OID 50040)
-- Name: fact_transaction fact_transaction_new_entry_date_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_transaction
    ADD CONSTRAINT fact_transaction_new_entry_date_key_fkey FOREIGN KEY (entry_date_key) REFERENCES public.dim_date(date_key);


--
-- TOC entry 5080 (class 2606 OID 50025)
-- Name: fact_transaction fact_transaction_new_provider_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_transaction
    ADD CONSTRAINT fact_transaction_new_provider_key_fkey FOREIGN KEY (provider_key) REFERENCES public.dim_provider(provider_key);


--
-- TOC entry 5081 (class 2606 OID 50035)
-- Name: fact_transaction fact_transaction_new_security_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_transaction
    ADD CONSTRAINT fact_transaction_new_security_key_fkey FOREIGN KEY (security_key) REFERENCES public.dim_security(security_key);


--
-- TOC entry 5082 (class 2606 OID 50050)
-- Name: fact_transaction fact_transaction_new_settlement_date_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_transaction
    ADD CONSTRAINT fact_transaction_new_settlement_date_key_fkey FOREIGN KEY (settlement_date_key) REFERENCES public.dim_date(date_key);


--
-- TOC entry 5083 (class 2606 OID 50045)
-- Name: fact_transaction fact_transaction_new_trade_date_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_transaction
    ADD CONSTRAINT fact_transaction_new_trade_date_key_fkey FOREIGN KEY (trade_date_key) REFERENCES public.dim_date(date_key);


--
-- TOC entry 5059 (class 2606 OID 32540)
-- Name: fact_unrealized_gain fact_unrealized_gain_account_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_unrealized_gain
    ADD CONSTRAINT fact_unrealized_gain_account_key_fkey FOREIGN KEY (account_key) REFERENCES public.dim_account(account_key);


--
-- TOC entry 5060 (class 2606 OID 32555)
-- Name: fact_unrealized_gain fact_unrealized_gain_acquire_date_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_unrealized_gain
    ADD CONSTRAINT fact_unrealized_gain_acquire_date_key_fkey FOREIGN KEY (acquire_date_key) REFERENCES public.dim_date(date_key);


--
-- TOC entry 5061 (class 2606 OID 32550)
-- Name: fact_unrealized_gain fact_unrealized_gain_date_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_unrealized_gain
    ADD CONSTRAINT fact_unrealized_gain_date_key_fkey FOREIGN KEY (date_key) REFERENCES public.dim_date(date_key);


--
-- TOC entry 5062 (class 2606 OID 32535)
-- Name: fact_unrealized_gain fact_unrealized_gain_provider_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_unrealized_gain
    ADD CONSTRAINT fact_unrealized_gain_provider_key_fkey FOREIGN KEY (provider_key) REFERENCES public.dim_provider(provider_key);


--
-- TOC entry 5063 (class 2606 OID 32545)
-- Name: fact_unrealized_gain fact_unrealized_gain_security_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_unrealized_gain
    ADD CONSTRAINT fact_unrealized_gain_security_key_fkey FOREIGN KEY (security_key) REFERENCES public.dim_security(security_key);


--
-- TOC entry 5036 (class 2606 OID 49669)
-- Name: dim_account fk_account_type; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_account
    ADD CONSTRAINT fk_account_type FOREIGN KEY (account_type) REFERENCES public.dim_account_type(account_type_code);


--
-- TOC entry 5069 (class 2606 OID 49674)
-- Name: dim_account_history fk_account_type_history; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE public.dim_account_history
    ADD CONSTRAINT fk_account_type_history FOREIGN KEY (account_type) REFERENCES public.dim_account_type(account_type_code);


-- Completed on 2025-11-03 15:38:43 -05

--
-- PostgreSQL database dump complete
--

\unrestrict hhFI9kiWC6bFYDi6bdcrIKsywgabUHGFGRhU0VU6q4eB7IxYlC5KTJBNtA7V1lt

