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
-- Name: tips; Type: TABLE; Schema: public; Owner: app_dev
--

CREATE TABLE public.tips (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.tips OWNER TO app_dev;

--
-- Name: tips_id_seq; Type: SEQUENCE; Schema: public; Owner: app_dev
--

CREATE SEQUENCE public.tips_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tips_id_seq OWNER TO app_dev;

--
-- Name: tips_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app_dev
--

ALTER SEQUENCE public.tips_id_seq OWNED BY public.tips.id;


--
-- Name: tips id; Type: DEFAULT; Schema: public; Owner: app_dev
--

ALTER TABLE ONLY public.tips ALTER COLUMN id SET DEFAULT nextval('public.tips_id_seq'::regclass);


--
-- Data for Name: tips; Type: TABLE DATA; Schema: public; Owner: app_dev
--

COPY public.tips (id, name, description, "createdAt", "updatedAt") FROM stdin;
1	Buy a Bird Bath	A bird bath is an inexpensive, fun, and easy way to provide birds with water to drink and bathe in. Keep it clean and filled with water	2020-03-28 18:00:49.691-04	2020-03-28 18:00:49.691-04
2	Support Bird Conservations	Support birds by joining a bird conservation organization or making a donation to one.	2020-03-28 18:01:13.304-04	2020-03-28 18:01:13.304-04
3	Provide and Protect Bird Habitat	Migratory birds need safe places to rest and eat, and all birds need safe places to live. Native plants supply food, cover, and nesting sites for birds. Bird feeders and bird houses can also provide food and shelter.	2020-03-28 18:01:45.747-04	2020-03-28 18:01:45.747-04
4	Buy Bird Friendly Products	Farming methods that protect land from erosion and degradation are good for farmers, birds, and other wildlife.	2020-03-28 18:01:59.284-04	2020-03-28 18:01:59.284-04
5	Skip Pesticides, Herbicides, and Fertilizers	Pesticides, herbicides, and some fertilizers are not healthful for birds or humans for that matter. Eliminate these often toxic products and save money too. Insects provide necessary food for birds.	2020-03-28 18:02:12.598-04	2020-03-28 18:02:12.598-04
\.


--
-- Name: tips_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app_dev
--

SELECT pg_catalog.setval('public.tips_id_seq', 5, true);


--
-- Name: tips tips_name_key; Type: CONSTRAINT; Schema: public; Owner: app_dev
--

ALTER TABLE ONLY public.tips
    ADD CONSTRAINT tips_name_key UNIQUE (name);


--
-- Name: tips tips_pkey; Type: CONSTRAINT; Schema: public; Owner: app_dev
--

ALTER TABLE ONLY public.tips
    ADD CONSTRAINT tips_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

