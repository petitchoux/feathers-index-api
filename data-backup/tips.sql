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
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.tips OWNER TO app_dev;

--
-- Data for Name: tips; Type: TABLE DATA; Schema: public; Owner: app_dev
--

COPY public.tips (id, name, description, "createdAt", "updatedAt") FROM stdin;
restore_natural_habitat_in_your_community	Restore Natural Habitat in Your Community	Birds need a place to live and many bird habitats are disappearing. City parks and open spaces are natural places for birds. Work with your community to recreate the habitat that once existed in your area.	2020-03-29 13:46:02.736-04	2020-03-29 13:46:02.736-04
recycle	Recycle	Anything you recycle reduces litter and saves resources. Get creative! You can make a bag from used juice containers and bird feeders from old dishes and plastic bottles.	2020-03-29 13:46:34.408-04	2020-03-29 13:46:34.408-04
use_cloth_grocery_bags_and_reusable_bottles	Use Cloth Grocery Bags and Reusable Bottles	Birds that mistakenly eat plastic trash can become ill or even die. Avoiding plastic bags and bottles reduces plastic pollution and conserves resources.	2020-03-29 13:47:15.877-04	2020-03-29 13:47:15.877-04
reduce_energy_use	Reduce Energy Use	Riding your bike or walking reduces your carbon footprint and prevents pollution of bird habitats. Switching off the lights in your house not only shrinks your energy bill, but can also help prevent birds from colliding with your windows.	2020-03-29 13:47:44.586-04	2020-03-29 13:47:44.586-04
support_bird_conservation	Support Bird Conservation	Support birds by joining a bird conservation organization, making a donation, or volunteering at one.	2020-03-29 13:48:20.82-04	2020-03-29 13:48:20.82-04
get_outdoors_and_enjoy_nature	Get Outdoors and Enjoy Nature	You can appreciate the bird habitat near your home. Find a local park and go for a walk or just stroll around your neighborhood. Invite a buddy and see if you can spot more birds together.	2020-03-29 13:48:59.281-04	2020-03-29 13:48:59.281-04
teach_others_about_birds	Teach Others About Birds	Talk to your friends about birds and start a club in your community to teach people about the challenges birds face. The more people know, the more they can do to help.	2020-03-29 13:49:24.258-04	2020-03-29 13:49:24.258-04
plant_native	Plant Native	Native plants provide food, nest sites, and cover for birds.	2020-03-29 13:49:43.26-04	2020-03-29 13:49:43.26-04
skip_pesticides_herbicides_and_fertiliziers	Skip Pesticides, Herbicides, and Fertilizers	Pesticides, herbicides, and some fertilizers are not healthful for birds or humans for that matter. Eliminate these often toxic products and save money too. Insects provide necessary food for birds.	2020-03-29 13:50:16.847-04	2020-03-29 13:50:16.847-04
buy_bird_friendly_products	Buy Bird Friendly Products	Farming methods that protect land from erosion and degradation are good for farmers, birds, and other wildlife.	2020-03-29 13:50:45.649-04	2020-03-29 13:50:45.649-04
slow_down_when_driving	Slow Down When Driving	Cars kill millions of birds each year. Driving slowly gives you more time to respond if there is an animal in the road and gives the animal plenty of time to get out of the way.	2020-03-29 13:51:33.109-04	2020-03-29 13:51:33.109-04
buy_a_bird_bath	Buy a Bird Bath	A bird bath is an inexpensive, fun, and easy way to provide birds with water to drink and bathe in. Keep it clean and filled with water	2020-03-29 13:51:54.221-04	2020-03-29 13:51:54.221-04
\.


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

