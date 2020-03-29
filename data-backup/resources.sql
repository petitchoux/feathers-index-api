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
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    url text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.resources OWNER TO app_dev;

--
-- Data for Name: resources; Type: TABLE DATA; Schema: public; Owner: app_dev
--

COPY public.resources (id, name, url, "createdAt", "updatedAt") FROM stdin;
american_bird_conservancy	American Bird Conservancy	https://abcbirds.org/	2020-03-29 13:57:52.455-04	2020-03-29 13:57:52.455-04
birdlife_international	Birdlife International	http://www.birdlife.org/	2020-03-29 13:58:27.581-04	2020-03-29 13:58:27.581-04
us_fish_and_wildlife_service_migratory_bird_program	U.S. Fish & Wildlife Service Migratory Bird Program	https://www.fws.gov/birds/index.php	2020-03-29 13:59:09.161-04	2020-03-29 13:59:09.161-04
cornell_lab_of_ornithology	Cornell Lab of Ornithology	https://www.birds.cornell.edu/home	2020-03-29 13:59:41.57-04	2020-03-29 13:59:41.57-04
national_audubon_society	National Audubon Society	https://www.audubon.org/	2020-03-29 14:00:10.095-04	2020-03-29 14:00:10.095-04
\.


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

