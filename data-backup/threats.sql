--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

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
-- Name: threats; Type: TABLE; Schema: public; Owner: app_dev
--

CREATE TABLE public.threats (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.threats OWNER TO app_dev;

--
-- Name: threats_id_seq; Type: SEQUENCE; Schema: public; Owner: app_dev
--

CREATE SEQUENCE public.threats_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.threats_id_seq OWNER TO app_dev;

--
-- Name: threats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app_dev
--

ALTER SEQUENCE public.threats_id_seq OWNED BY public.threats.id;


--
-- Name: threats id; Type: DEFAULT; Schema: public; Owner: app_dev
--

ALTER TABLE ONLY public.threats ALTER COLUMN id SET DEFAULT nextval('public.threats_id_seq'::regclass);


--
-- Data for Name: threats; Type: TABLE DATA; Schema: public; Owner: app_dev
--

COPY public.threats (id, name, description, "createdAt", "updatedAt") FROM stdin;
1	Collision	Windows, cars, power lines, communication towers, wind turbines, and aircraft.	2020-03-28 18:02:57.017-04	2020-03-28 18:02:57.017-04
2	Light Pollution	Night sky brightness affects the ability of birds to navigate at night and may draw them toward structures.	2020-03-28 18:03:11.88-04	2020-03-28 18:03:11.88-04
3	Contaminants	Pesticides, herbicides, lead, heavy metals, oil, and marine trash.	2020-03-28 18:03:26.443-04	2020-03-28 18:03:26.443-04
4	Fishing	Some birds end up as unintended by-catch from commercial fishing.	2020-03-28 18:03:40.279-04	2020-03-28 18:03:40.279-04
5	Global Warming	Causes loss of habitat and food, disruption of migratory cycles.	2020-03-28 18:03:52.632-04	2020-03-28 18:03:52.632-04
\.


--
-- Name: threats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app_dev
--

SELECT pg_catalog.setval('public.threats_id_seq', 5, true);


--
-- Name: threats threats_name_key; Type: CONSTRAINT; Schema: public; Owner: app_dev
--

ALTER TABLE ONLY public.threats
    ADD CONSTRAINT threats_name_key UNIQUE (name);


--
-- Name: threats threats_pkey; Type: CONSTRAINT; Schema: public; Owner: app_dev
--

ALTER TABLE ONLY public.threats
    ADD CONSTRAINT threats_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

