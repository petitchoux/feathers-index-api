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
-- Name: resources; Type: TABLE; Schema: public; Owner: app_dev
--

CREATE TABLE public.resources (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    url text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.resources OWNER TO app_dev;

--
-- Name: resources_id_seq; Type: SEQUENCE; Schema: public; Owner: app_dev
--

CREATE SEQUENCE public.resources_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resources_id_seq OWNER TO app_dev;

--
-- Name: resources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app_dev
--

ALTER SEQUENCE public.resources_id_seq OWNED BY public.resources.id;


--
-- Name: resources id; Type: DEFAULT; Schema: public; Owner: app_dev
--

ALTER TABLE ONLY public.resources ALTER COLUMN id SET DEFAULT nextval('public.resources_id_seq'::regclass);


--
-- Data for Name: resources; Type: TABLE DATA; Schema: public; Owner: app_dev
--

COPY public.resources (id, name, url, "createdAt", "updatedAt") FROM stdin;
1	American Bird Conservancy	https://abcbirds.org/	2020-03-28 17:58:50.812-04	2020-03-28 17:58:50.812-04
2	Birdlife International	http://www.birdlife.org/	2020-03-28 17:59:07.306-04	2020-03-28 17:59:07.306-04
3	U.S. Fish & Wildlife Service Migratory Bird Program	https://www.fws.gov/birds/index.php/	2020-03-28 17:59:20.941-04	2020-03-28 17:59:20.941-04
4	Cornell Lab of Ornithology	https://www.birds.cornell.edu/home	2020-03-28 17:59:37.196-04	2020-03-28 17:59:37.196-04
5	National Audubon Society	https://www.audubon.org/	2020-03-28 17:59:51.168-04	2020-03-28 17:59:51.168-04
\.


--
-- Name: resources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app_dev
--

SELECT pg_catalog.setval('public.resources_id_seq', 5, true);


--
-- Name: resources resources_name_key; Type: CONSTRAINT; Schema: public; Owner: app_dev
--

ALTER TABLE ONLY public.resources
    ADD CONSTRAINT resources_name_key UNIQUE (name);


--
-- Name: resources resources_pkey; Type: CONSTRAINT; Schema: public; Owner: app_dev
--

ALTER TABLE ONLY public.resources
    ADD CONSTRAINT resources_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

