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
-- PostgreSQL database dump complete
--

