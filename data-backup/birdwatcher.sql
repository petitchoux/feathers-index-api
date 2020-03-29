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

--
-- Name: enum_birds_habitat; Type: TYPE; Schema: public; Owner: app_dev
--

CREATE TYPE public.enum_birds_habitat AS ENUM (
    'tundra',
    'desert',
    'aquatic',
    'forest',
    'grassland'
);


ALTER TYPE public.enum_birds_habitat OWNER TO app_dev;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: birds; Type: TABLE; Schema: public; Owner: app_dev
--

CREATE TABLE public.birds (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    sageid integer,
    habitat text,
    plumage text,
    nest text,
    diet text,
    lifespan character varying(255),
    "conservationStatus" character varying(255),
    "funFacts" text[],
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.birds OWNER TO app_dev;

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
-- Data for Name: birds; Type: TABLE DATA; Schema: public; Owner: app_dev
--

COPY public.birds (id, name, sageid, habitat, plumage, nest, diet, lifespan, "conservationStatus", "funFacts", "createdAt", "updatedAt") FROM stdin;
blue_jay	Blue Jay	73	Forest edges, urban and suburban areas where oak trees or bird feeders are found.	White or light gray underneath, various shades of blue, black, and white above.	Usually in between thick outer branches of a deciduous or coniferous tree, usually 10-25 ft above the ground.	Insects, nuts, and seeds in trees, shrubs, and on the ground. Grains and dead or injured small vertebrates. Blue Jays sometimes raid nests for eggs and nestlings, and sometimes pick up dead or dying adult birds.	26 years	Low concern	{"Blue Jays collect nuts and store them for later retrieval. They can carry up to 5 acorns at a time; 3 acorns can be stored in the gular pouch (throat sac), 1 in the mouth and 1 in the bill.","In a study by the University of Massachusetts, they found that these smart birds were able to make and use tools to reach food items that would otherwise be unattainable. The researchers provided a plastic bag tie, paper clip, straw grass and feather to eight different Blue Jays and found that 6 out of these 8 Blue Jays were able to select and use a tool to retrieve out-of-reach food pellets."}	2020-03-29 12:59:44.005-04	2020-03-29 12:59:44.005-04
ruby_throated_hummingbird	Ruby Throated Hummingbird	68	Deciduous woodlands of eastern North America and across the Canadian prairies. On their tropical wintering grounds, Ruby-throated Hummingbirds live in dry forests, citrus groves, hedgerows, and scrub.	Bright emerald or golden-green on the back and crown, with gray-white underparts. Males have a brilliant iridescent red throat.	Usually on a slender, often descending branch,  of deciduous trees like oak, hornbeam, birch, poplar, hackberry, or pine. Nests are usually 10-40 ft above the ground, but have also been found on loops of chain, wire, and extension cords.	Nectar of red or orange tubular flowers such as trumpet creeper, cardinal flower, honeysuckle, jewelweed, bee-balm, red buckeye, red morning glory, and tree sap. Hummingbirds also catch insects in midair or pull them out of spider webs. Main insect prey includes mosquitoes, gnats, fruit flies, and small bees; also eats spiders.	3-5 years	Low concern	{"The Ruby-throated Hummingbird, one of the smallest hummingbird species, can only grow to a length of 3 to 3.5 inches and weight of about 3 grams. Due to its small size, the bird is sometimes mistaken for a large insect.","The thin, asymmetrical, and slightly curved primary feather of the Ruby-throated Hummingbird allows it to achieve an optimal speed when flying. It can fly straight to a speed of 25 miles per hour, and 40 miles per hour during courtship dives."}	2020-03-29 13:01:56.573-04	2020-03-29 13:01:56.573-04
american_goldfinch	American Goldfinch	47	Woodland, forest, weedy fields, floodplains, suburbs, parks, and backyards.	Adult males in spring and early summer are bright yellow with black forehead, black wings with white markings, and white patches both above and beneath the tail. Adult females are duller yellow beneath, olive above. Winter birds are unstreaked brown, with blackish wings and two pale wingbars.	Usually in a shrub or sapling in a fairly open setting rather than in forest interior. The nest is often built high in a shrub where two or three vertical branches join.	Seeds from composite plants (sunflowers, thistle, asters), grasses, and trees such as alder, birch, western red cedar, and elm.	3-6 years	Low concern	{"During courtship, one can detect the female because of its zigzag flying motion while being chased by males.","These birds are also acrobatic in that they can eat upside down from a sunflower one moment and then eat standing upright the next. This dexterity trait with their foot and bill allows these birds to benefit from other food sources which are otherwise not accessible to other birds."}	2020-03-29 13:03:51.167-04	2020-03-29 13:03:51.167-04
northern_flicker	Northern Flicker	36	Woodlands, mountain forest edges, yards, and parks.	Brownish with a white rump patch patterned with black spots, bars, and crescents. The undersides of the wing and tail feathers are bright yellow, for eastern birds, or red, in western birds.	Excavated nest holes in dead or diseased tree trunks or large branches generally placed 6-15 ft off the ground, but on rare occasions can be over 100 feet high.	Mainly insects, especially ants and beetles. They also eat fruits and seeds, especially in winter.	6 years 8 months	Low concern	{"Flickers often go after ants underground (where the nutritious larvae live), hammering at the soil the way other woodpeckers drill into wood. They’ve been seen breaking into cow patties to eat insects living within. Their tongues can dart out 2 inches beyond the end of the bill to snare prey.","If you want to attract a flicker to your backyard keep a fresh birdbath, don't kill the ants in the yard and lay out apples, peanut butter, or raisins."}	2020-03-29 13:05:47.066-04	2020-03-29 13:05:47.066-04
cardinal	Cardinal	17	Temperate-zone woodlands, tropical rain forests, thickets, arid scrub, plantations, gardens, fields.	Brilliant and varied, or olive, gray, blue-black.	Massive or loosely-built open cups in trees and shrubs, rarely on ground.	Seeds, grains, fruits, flowerbuds, blossoms, and insects.	3 years	Low concern	{"Northern Cardinals are classified as granivorous animals because they live on a diet consisting of mostly seeds. Their short, stout, cone-shaped beaks are specially designed to crack open the hulls on seeds and shells on nuts. Due to their love of seeds, you can easily attract cardinals to your feeders by using either sunflower seeds (their favorite!), safflower seeds, cracked corn, or shelled peanuts.","Occasionally, a lack of the typical red pigment in the plumage occurs and is replaced by vibrant yellow or orangish pigments, which results in a yellow cardinal. The appearance of vibrant yellow Northern Cardinals is typically caused by a genetic plumage variation called xanthochroism.It’s incredibly rare to see a yellow cardinal, but when it happens, it becomes a national news story for bird lovers!"}	2020-03-29 13:11:44.359-04	2020-03-29 13:11:44.359-04
\.


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
-- Name: birds birds_name_key; Type: CONSTRAINT; Schema: public; Owner: app_dev
--

ALTER TABLE ONLY public.birds
    ADD CONSTRAINT birds_name_key UNIQUE (name);


--
-- Name: birds birds_pkey; Type: CONSTRAINT; Schema: public; Owner: app_dev
--

ALTER TABLE ONLY public.birds
    ADD CONSTRAINT birds_pkey PRIMARY KEY (id);


--
-- Name: birds birds_sageid_key; Type: CONSTRAINT; Schema: public; Owner: app_dev
--

ALTER TABLE ONLY public.birds
    ADD CONSTRAINT birds_sageid_key UNIQUE (sageid);


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

