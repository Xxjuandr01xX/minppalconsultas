--
-- PostgreSQL database dump
--

-- Dumped from database version 13.13
-- Dumped by pg_dump version 13.13

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
-- Name: nom_dependencia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nom_dependencia (
    id integer NOT NULL,
    denominacion character varying(30)
);


ALTER TABLE public.nom_dependencia OWNER TO postgres;

--
-- Name: nom_dependencia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nom_dependencia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nom_dependencia_id_seq OWNER TO postgres;

--
-- Name: nom_dependencia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nom_dependencia_id_seq OWNED BY public.nom_dependencia.id;


--
-- Name: nom_estados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nom_estados (
    id integer NOT NULL,
    denominacion character varying(25)
);


ALTER TABLE public.nom_estados OWNER TO postgres;

--
-- Name: nom_estados_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nom_estados_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nom_estados_id_seq OWNER TO postgres;

--
-- Name: nom_estados_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nom_estados_id_seq OWNED BY public.nom_estados.id;


--
-- Name: nom_mov_personal_dependencia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nom_mov_personal_dependencia (
    id integer NOT NULL,
    id_personal_fk integer,
    id_dependencia_fk integer,
    id_subdependencia_fk integer,
    id_operador integer,
    fec_mov date,
    des_motivo text
);


ALTER TABLE public.nom_mov_personal_dependencia OWNER TO postgres;

--
-- Name: nom_mov_personal_dependencia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nom_mov_personal_dependencia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nom_mov_personal_dependencia_id_seq OWNER TO postgres;

--
-- Name: nom_mov_personal_dependencia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nom_mov_personal_dependencia_id_seq OWNED BY public.nom_mov_personal_dependencia.id;


--
-- Name: nom_municipios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nom_municipios (
    id integer NOT NULL,
    id_estado_fk integer,
    denominacion character varying(25)
);


ALTER TABLE public.nom_municipios OWNER TO postgres;

--
-- Name: nom_municipios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nom_municipios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nom_municipios_id_seq OWNER TO postgres;

--
-- Name: nom_municipios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nom_municipios_id_seq OWNED BY public.nom_municipios.id;


--
-- Name: nom_nacionalidades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nom_nacionalidades (
    id integer NOT NULL,
    denominacion character varying(20),
    cod_doc character varying(3),
    cod_telf character varying(3)
);


ALTER TABLE public.nom_nacionalidades OWNER TO postgres;

--
-- Name: nom_nacionalidades_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nom_nacionalidades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nom_nacionalidades_id_seq OWNER TO postgres;

--
-- Name: nom_nacionalidades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nom_nacionalidades_id_seq OWNED BY public.nom_nacionalidades.id;


--
-- Name: nom_personal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nom_personal (
    id integer NOT NULL,
    nombre character varying(100),
    apellido character varying(100),
    cedula integer,
    telefono character varying(10),
    fec_nac date,
    fec_ing date,
    direccion text,
    sexo character varying(1),
    ind_activo character varying(1),
    id_nacionalidad_fk integer,
    id_municipio_fk integer
);


ALTER TABLE public.nom_personal OWNER TO postgres;

--
-- Name: nom_personal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nom_personal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nom_personal_id_seq OWNER TO postgres;

--
-- Name: nom_personal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nom_personal_id_seq OWNED BY public.nom_personal.id;


--
-- Name: nom_rol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nom_rol (
    id integer NOT NULL,
    denominacion character varying(40)
);


ALTER TABLE public.nom_rol OWNER TO postgres;

--
-- Name: nom_rol_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nom_rol_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nom_rol_id_seq OWNER TO postgres;

--
-- Name: nom_rol_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nom_rol_id_seq OWNED BY public.nom_rol.id;


--
-- Name: nom_subdependencia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nom_subdependencia (
    id integer NOT NULL,
    id_dependencia_fk integer,
    denominacion character varying(30)
);


ALTER TABLE public.nom_subdependencia OWNER TO postgres;

--
-- Name: nom_subdependencia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nom_subdependencia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nom_subdependencia_id_seq OWNER TO postgres;

--
-- Name: nom_subdependencia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nom_subdependencia_id_seq OWNED BY public.nom_subdependencia.id;


--
-- Name: nom_usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nom_usuarios (
    id integer NOT NULL,
    nombre character varying(100),
    apellido character varying(100),
    pw character varying(50),
    nomusuario character varying(100),
    id_rol_fk integer
);


ALTER TABLE public.nom_usuarios OWNER TO postgres;

--
-- Name: nom_usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nom_usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nom_usuarios_id_seq OWNER TO postgres;

--
-- Name: nom_usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nom_usuarios_id_seq OWNED BY public.nom_usuarios.id;


--
-- Name: nom_dependencia id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nom_dependencia ALTER COLUMN id SET DEFAULT nextval('public.nom_dependencia_id_seq'::regclass);


--
-- Name: nom_estados id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nom_estados ALTER COLUMN id SET DEFAULT nextval('public.nom_estados_id_seq'::regclass);


--
-- Name: nom_mov_personal_dependencia id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nom_mov_personal_dependencia ALTER COLUMN id SET DEFAULT nextval('public.nom_mov_personal_dependencia_id_seq'::regclass);


--
-- Name: nom_municipios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nom_municipios ALTER COLUMN id SET DEFAULT nextval('public.nom_municipios_id_seq'::regclass);


--
-- Name: nom_nacionalidades id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nom_nacionalidades ALTER COLUMN id SET DEFAULT nextval('public.nom_nacionalidades_id_seq'::regclass);


--
-- Name: nom_personal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nom_personal ALTER COLUMN id SET DEFAULT nextval('public.nom_personal_id_seq'::regclass);


--
-- Name: nom_rol id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nom_rol ALTER COLUMN id SET DEFAULT nextval('public.nom_rol_id_seq'::regclass);


--
-- Name: nom_subdependencia id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nom_subdependencia ALTER COLUMN id SET DEFAULT nextval('public.nom_subdependencia_id_seq'::regclass);


--
-- Name: nom_usuarios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nom_usuarios ALTER COLUMN id SET DEFAULT nextval('public.nom_usuarios_id_seq'::regclass);


--
-- Data for Name: nom_dependencia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nom_dependencia (id, denominacion) FROM stdin;
\.


--
-- Data for Name: nom_estados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nom_estados (id, denominacion) FROM stdin;
\.


--
-- Data for Name: nom_mov_personal_dependencia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nom_mov_personal_dependencia (id, id_personal_fk, id_dependencia_fk, id_subdependencia_fk, id_operador, fec_mov, des_motivo) FROM stdin;
\.


--
-- Data for Name: nom_municipios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nom_municipios (id, id_estado_fk, denominacion) FROM stdin;
\.


--
-- Data for Name: nom_nacionalidades; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nom_nacionalidades (id, denominacion, cod_doc, cod_telf) FROM stdin;
\.


--
-- Data for Name: nom_personal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nom_personal (id, nombre, apellido, cedula, telefono, fec_nac, fec_ing, direccion, sexo, ind_activo, id_nacionalidad_fk, id_municipio_fk) FROM stdin;
\.


--
-- Data for Name: nom_rol; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nom_rol (id, denominacion) FROM stdin;
1	ADMINISTRADOR
2	ANALISTA
3	AYUDANTE
\.


--
-- Data for Name: nom_subdependencia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nom_subdependencia (id, id_dependencia_fk, denominacion) FROM stdin;
\.


--
-- Data for Name: nom_usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nom_usuarios (id, nombre, apellido, pw, nomusuario, id_rol_fk) FROM stdin;
1	JUAN	RINCON	12345678	adm@sisnom.com	1
\.


--
-- Name: nom_dependencia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nom_dependencia_id_seq', 1, false);


--
-- Name: nom_estados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nom_estados_id_seq', 1, false);


--
-- Name: nom_mov_personal_dependencia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nom_mov_personal_dependencia_id_seq', 1, false);


--
-- Name: nom_municipios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nom_municipios_id_seq', 1, false);


--
-- Name: nom_nacionalidades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nom_nacionalidades_id_seq', 1, false);


--
-- Name: nom_personal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nom_personal_id_seq', 1, false);


--
-- Name: nom_rol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nom_rol_id_seq', 3, true);


--
-- Name: nom_subdependencia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nom_subdependencia_id_seq', 1, false);


--
-- Name: nom_usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nom_usuarios_id_seq', 1, true);


--
-- Name: nom_dependencia nom_dependencia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nom_dependencia
    ADD CONSTRAINT nom_dependencia_pkey PRIMARY KEY (id);


--
-- Name: nom_estados nom_estados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nom_estados
    ADD CONSTRAINT nom_estados_pkey PRIMARY KEY (id);


--
-- Name: nom_mov_personal_dependencia nom_mov_personal_dependencia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nom_mov_personal_dependencia
    ADD CONSTRAINT nom_mov_personal_dependencia_pkey PRIMARY KEY (id);


--
-- Name: nom_municipios nom_municipios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nom_municipios
    ADD CONSTRAINT nom_municipios_pkey PRIMARY KEY (id);


--
-- Name: nom_nacionalidades nom_nacionalidades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nom_nacionalidades
    ADD CONSTRAINT nom_nacionalidades_pkey PRIMARY KEY (id);


--
-- Name: nom_personal nom_personal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nom_personal
    ADD CONSTRAINT nom_personal_pkey PRIMARY KEY (id);


--
-- Name: nom_rol nom_rol_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nom_rol
    ADD CONSTRAINT nom_rol_pkey PRIMARY KEY (id);


--
-- Name: nom_subdependencia nom_subdependencia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nom_subdependencia
    ADD CONSTRAINT nom_subdependencia_pkey PRIMARY KEY (id);


--
-- Name: nom_usuarios nom_usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nom_usuarios
    ADD CONSTRAINT nom_usuarios_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

