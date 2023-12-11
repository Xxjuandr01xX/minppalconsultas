--
-- PostgreSQL database dump
--

-- Dumped from database version 15.5
-- Dumped by pg_dump version 15.5

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: nomsys_cuentas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nomsys_cuentas (
    id integer NOT NULL,
    "nombreUsuario" text NOT NULL,
    pwd "char" NOT NULL,
    id_rol_fk integer NOT NULL,
    id_persona_fk integer
);


ALTER TABLE public.nomsys_cuentas OWNER TO postgres;

--
-- Name: nomsys_cuentas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nomsys_cuentas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nomsys_cuentas_id_seq OWNER TO postgres;

--
-- Name: nomsys_cuentas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nomsys_cuentas_id_seq OWNED BY public.nomsys_cuentas.id;


--
-- Name: nomsys_personas_cuenta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nomsys_personas_cuenta (
    id integer NOT NULL,
    nombres text NOT NULL,
    apellido text NOT NULL,
    correo "char" NOT NULL,
    telefono "char" NOT NULL,
    fec_nac date NOT NULL,
    dir_hab text NOT NULL
);


ALTER TABLE public.nomsys_personas_cuenta OWNER TO postgres;

--
-- Name: nomsys_personas_cuenta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nomsys_personas_cuenta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nomsys_personas_cuenta_id_seq OWNER TO postgres;

--
-- Name: nomsys_personas_cuenta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nomsys_personas_cuenta_id_seq OWNED BY public.nomsys_personas_cuenta.id;


--
-- Name: nomsys_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nomsys_roles (
    id integer NOT NULL,
    denominacion text NOT NULL
);


ALTER TABLE public.nomsys_roles OWNER TO postgres;

--
-- Name: nomsys_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nomsys_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nomsys_roles_id_seq OWNER TO postgres;

--
-- Name: nomsys_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nomsys_roles_id_seq OWNED BY public.nomsys_roles.id;


--
-- Name: nomsys_cuentas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nomsys_cuentas ALTER COLUMN id SET DEFAULT nextval('public.nomsys_cuentas_id_seq'::regclass);


--
-- Name: nomsys_personas_cuenta id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nomsys_personas_cuenta ALTER COLUMN id SET DEFAULT nextval('public.nomsys_personas_cuenta_id_seq'::regclass);


--
-- Name: nomsys_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nomsys_roles ALTER COLUMN id SET DEFAULT nextval('public.nomsys_roles_id_seq'::regclass);


--
-- Data for Name: nomsys_cuentas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nomsys_cuentas (id, "nombreUsuario", pwd, id_rol_fk, id_persona_fk) FROM stdin;
1	jdrincon@sysnomina.com	M	1	1
\.


--
-- Data for Name: nomsys_personas_cuenta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nomsys_personas_cuenta (id, nombres, apellido, correo, telefono, fec_nac, dir_hab) FROM stdin;
1	JUAN D.	RINCON U.	j	0	1994-12-13	AV LAS DELICIAS CON CALLE 14A
\.


--
-- Data for Name: nomsys_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nomsys_roles (id, denominacion) FROM stdin;
1	ADMINISTRADOR
\.


--
-- Name: nomsys_cuentas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nomsys_cuentas_id_seq', 1, true);


--
-- Name: nomsys_personas_cuenta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nomsys_personas_cuenta_id_seq', 1, true);


--
-- Name: nomsys_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nomsys_roles_id_seq', 1, true);


--
-- Name: nomsys_cuentas nomsys_cuentas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nomsys_cuentas
    ADD CONSTRAINT nomsys_cuentas_pkey PRIMARY KEY (id_rol_fk);


--
-- Name: nomsys_personas_cuenta nomsys_personas_cuenta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nomsys_personas_cuenta
    ADD CONSTRAINT nomsys_personas_cuenta_pkey PRIMARY KEY (id);


--
-- Name: nomsys_roles nomsys_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nomsys_roles
    ADD CONSTRAINT nomsys_roles_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

