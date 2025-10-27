--
-- PostgreSQL database dump
--

\restrict erl8Rsnbk5bg1HN2zpxXzOXbp3y3w8XqmtfrKZFiFA5FxTZ8hMKjlAU7Al30sLp

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-10-27 18:18:46

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 224 (class 1259 OID 33006)
-- Name: statystyki_zawodnikow; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.statystyki_zawodnikow (
    id integer NOT NULL,
    zawodnik_id integer,
    gole integer,
    asysty integer,
    minuty integer
);


ALTER TABLE public.statystyki_zawodnikow OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 33005)
-- Name: statystyki_zawodnikow_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.statystyki_zawodnikow_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.statystyki_zawodnikow_id_seq OWNER TO postgres;

--
-- TOC entry 4928 (class 0 OID 0)
-- Dependencies: 223
-- Name: statystyki_zawodnikow_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.statystyki_zawodnikow_id_seq OWNED BY public.statystyki_zawodnikow.id;


--
-- TOC entry 222 (class 1259 OID 32972)
-- Name: zawodnicy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.zawodnicy (
    id integer NOT NULL,
    imie character varying(50),
    nazwisko character varying(50),
    "drużyna" character varying(50),
    pozycja character varying(30),
    zawodnik_uid integer NOT NULL
);


ALTER TABLE public.zawodnicy OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 32971)
-- Name: zawodnicy_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.zawodnicy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.zawodnicy_id_seq OWNER TO postgres;

--
-- TOC entry 4929 (class 0 OID 0)
-- Dependencies: 221
-- Name: zawodnicy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.zawodnicy_id_seq OWNED BY public.zawodnicy.id;


--
-- TOC entry 225 (class 1259 OID 41200)
-- Name: zawodnicy_zawodnik_uid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.zawodnicy_zawodnik_uid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.zawodnicy_zawodnik_uid_seq OWNER TO postgres;

--
-- TOC entry 4930 (class 0 OID 0)
-- Dependencies: 225
-- Name: zawodnicy_zawodnik_uid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.zawodnicy_zawodnik_uid_seq OWNED BY public.zawodnicy.zawodnik_uid;


--
-- TOC entry 4765 (class 2604 OID 33009)
-- Name: statystyki_zawodnikow id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.statystyki_zawodnikow ALTER COLUMN id SET DEFAULT nextval('public.statystyki_zawodnikow_id_seq'::regclass);


--
-- TOC entry 4763 (class 2604 OID 32975)
-- Name: zawodnicy id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zawodnicy ALTER COLUMN id SET DEFAULT nextval('public.zawodnicy_id_seq'::regclass);


--
-- TOC entry 4764 (class 2604 OID 41201)
-- Name: zawodnicy zawodnik_uid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zawodnicy ALTER COLUMN zawodnik_uid SET DEFAULT nextval('public.zawodnicy_zawodnik_uid_seq'::regclass);


--
-- TOC entry 4921 (class 0 OID 33006)
-- Dependencies: 224
-- Data for Name: statystyki_zawodnikow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.statystyki_zawodnikow (id, zawodnik_id, gole, asysty, minuty) FROM stdin;
1	1	18	10	2534
2	2	27	5	2552
3	3	22	11	2607
4	4	19	13	3217
5	5	17	10	2934
6	6	19	3	3325
7	7	21	2	2255
8	8	16	9	2919
10	10	14	5	2799
9	10	19	8	2857
\.


--
-- TOC entry 4919 (class 0 OID 32972)
-- Dependencies: 222
-- Data for Name: zawodnicy; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.zawodnicy (id, imie, nazwisko, "drużyna", pozycja, zawodnik_uid) FROM stdin;
1	Mohamed	Salah	Liverpool	skrzydłowy	1
3	Cole	Palmer	Chelsea	ofensywny pomocnik	2
4	Ollie	Watkins	Aston Villa	napastnik	3
5	Heung-Min	Son	Tottenham	skrzydłowy	4
6	Dominic	Solanke	AFC Bournemouth	napastnik	5
7	Alexander	Isak	Newcastle United	napastnik	6
8	Bukayo	Saka	Arsenal	skrzydłowy	7
9	Phil	Foden	Manchester City	skrzydłowy	8
10	Nicolas	Jackson	Chelsea	napastnik	9
2	Erling	Haaland	Manchester City	napastnik	10
\.


--
-- TOC entry 4931 (class 0 OID 0)
-- Dependencies: 223
-- Name: statystyki_zawodnikow_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.statystyki_zawodnikow_id_seq', 10, true);


--
-- TOC entry 4932 (class 0 OID 0)
-- Dependencies: 221
-- Name: zawodnicy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.zawodnicy_id_seq', 10, true);


--
-- TOC entry 4933 (class 0 OID 0)
-- Dependencies: 225
-- Name: zawodnicy_zawodnik_uid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.zawodnicy_zawodnik_uid_seq', 10, true);


--
-- TOC entry 4769 (class 2606 OID 33012)
-- Name: statystyki_zawodnikow statystyki_zawodnikow_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.statystyki_zawodnikow
    ADD CONSTRAINT statystyki_zawodnikow_pkey PRIMARY KEY (id);


--
-- TOC entry 4767 (class 2606 OID 32978)
-- Name: zawodnicy zawodnicy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zawodnicy
    ADD CONSTRAINT zawodnicy_pkey PRIMARY KEY (id);


--
-- TOC entry 4770 (class 2606 OID 33013)
-- Name: statystyki_zawodnikow statystyki_zawodnikow_zawodnik_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.statystyki_zawodnikow
    ADD CONSTRAINT statystyki_zawodnikow_zawodnik_id_fkey FOREIGN KEY (zawodnik_id) REFERENCES public.zawodnicy(id);


-- Completed on 2025-10-27 18:18:46

--
-- PostgreSQL database dump complete
--

\unrestrict erl8Rsnbk5bg1HN2zpxXzOXbp3y3w8XqmtfrKZFiFA5FxTZ8hMKjlAU7Al30sLp

