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
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.threats OWNER TO app_dev;

--
-- Data for Name: threats; Type: TABLE DATA; Schema: public; Owner: app_dev
--

COPY public.threats (id, name, description, "createdAt", "updatedAt") FROM stdin;
climate_change	Climate Change	Nearly a quarter of bird species studied globally have been negatively affected by climate change. Already, breeding and migratory cycles are changing. A recent study found that warmer UK springs are causing caterpillar numbers to spike earlier, meaning that by the time many bird chicks hatch, there are not enough caterpillars to go around.	2020-03-29 13:33:45.269-04	2020-03-29 13:33:45.269-04
deforestation_and_logging	Deforestation and Logging	Since nearly two-thirds of species are found in forests, logging is a huge problem for birds. Many of these species cannot live outside of forests, and are unable to fly between remaining fragments. Logging is driven by a global demand for timber, paper and land on which to grow commodity crops and biofuels.	2020-03-29 13:34:10.301-04	2020-03-29 13:34:10.301-04
hunting_and_trapping	Hunting and Trapping	The illegal hunting and capturing of birds can cause huge population plummets in a short space of time. One of the most harrowing examples is the Helmeted Hornbill Rhinoplax vigil. In 2015, this spectacular bird went from being listed as Near Threatened to Critically Endangered after hunters began targeting it for its highly sought-after solid “Red Ivory” casque.	2020-03-29 13:34:40.708-04	2020-03-29 13:34:40.708-04
industrial_farming	Industrial Farming	More than a third of the earth’s land surface is dedicated to agriculture. The expansion and intensification of farming impacts a massive 74% of globally threatened birds. Not only does it destroy much-needed habitats, but some pesticides are poisonous to birds.	2020-03-29 13:35:54.069-04	2020-03-29 13:35:54.069-04
contaminants	Contaminants	Pesticides, herbicides, lead, heavy metals, oil, and marine trash are harmful to birds and may cause deformities.	2020-03-29 13:36:19.292-04	2020-03-29 13:36:19.292-04
global_warming	Global Warming	Causes loss of habitat and food, disruption of migratory cycles.	2020-03-29 13:36:43.376-04	2020-03-29 13:36:43.376-04
invasive_species	Invasive Species	Over the last half-century, interlopers such as rats and mice have been responsible for more than 70% of bird extinctions. Birds on remote islands are especially susceptible to this threat, as they evolved with few natural predators.	2020-03-29 13:37:41.942-04	2020-03-29 13:37:41.942-04
fishing	Fishing	Some birds end up as unintended by-catch from commercial fishing.	2020-03-29 13:38:01.603-04	2020-03-29 13:38:01.603-04
collision	Collision	Birds may collide with windows, cars, power lines, communication towers, wind turbines, and aircrafts.	2020-03-29 13:38:24.995-04	2020-03-29 13:38:24.995-04
light_pollution	Light Pollution	Night sky brightness affects the ability of birds to navigate at night and may draw them toward structures.	2020-03-29 13:38:51.822-04	2020-03-29 13:38:51.822-04
\.


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

