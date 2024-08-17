--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(100) NOT NULL,
    mass_in_solar_masses numeric,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    is_expanding boolean,
    age_in_billion_years numeric,
    type character varying(50)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    planet_id integer NOT NULL,
    description text,
    orbital_period_days numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    star_id integer NOT NULL,
    weight_in_kg numeric,
    description text,
    has_life boolean,
    has_atm boolean,
    num_moons integer,
    diameter_in_km integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    galaxy_id integer NOT NULL,
    spectral_type character varying(10),
    distance_light_years numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'Sagittarius A*', 4.1, 1);
INSERT INTO public.blackhole VALUES (2, 'M87*,', 6500000000, 9);
INSERT INTO public.blackhole VALUES (3, 'TON 618', 66, 8);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Centaurus A', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'Messier 81', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'Messier 87', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'Large Magellanic Cloud', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 'The only natural satellite of Earth.', NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 'The larger and closer of the two moons of Mars.', NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 'The smaller and farther moon of Mars.', NULL);
INSERT INTO public.moon VALUES (4, 'Rigel b I', 4, 'One of the many moons of the gas giant Rigel b.', NULL);
INSERT INTO public.moon VALUES (5, 'Alpha Centauri Bb I', 5, 'A hypothetical moon orbiting the rocky planet Alpha Centauri Bb.', NULL);
INSERT INTO public.moon VALUES (6, 'Europa', 6, 'One of Jupiter’s moons, known for its icy surface and potential subsurface ocean.', NULL);
INSERT INTO public.moon VALUES (7, 'Ganymede', 6, 'The largest moon in the Solar System, orbiting Jupiter.', NULL);
INSERT INTO public.moon VALUES (8, 'Callisto', 6, 'A heavily cratered moon of Jupiter, one of the Galilean moons.', NULL);
INSERT INTO public.moon VALUES (9, 'Io', 6, 'A volcanically active moon of Jupiter, the most geologically active object in the Solar System.', NULL);
INSERT INTO public.moon VALUES (10, 'Triton', 8, 'The largest moon of Neptune, known for its retrograde orbit.', NULL);
INSERT INTO public.moon VALUES (11, 'Nereid', 8, 'A distant, irregular moon of Neptune with an eccentric orbit.', NULL);
INSERT INTO public.moon VALUES (12, 'Proteus', 8, 'A large, irregularly shaped moon of Neptune, discovered by Voyager 2.', NULL);
INSERT INTO public.moon VALUES (13, 'Charon', 3, 'A potential moon of Proxima c, hypothetical in nature.', NULL);
INSERT INTO public.moon VALUES (14, 'Luna b I', 4, 'One of the many moons of Rigel b, similar to Saturn’s moons.', NULL);
INSERT INTO public.moon VALUES (15, 'Luna b II', 4, 'Another moon of Rigel b, with an icy surface and a possible subsurface ocean.', NULL);
INSERT INTO public.moon VALUES (16, 'Luna b III', 4, 'A smaller moon of Rigel b, possibly geologically active.', NULL);
INSERT INTO public.moon VALUES (17, 'Sirius b I', 10, 'A hypothetical moon orbiting the rocky planet Sirius b.', NULL);
INSERT INTO public.moon VALUES (18, 'Gliese 581g I', 11, 'A small moon of the exoplanet Gliese 581g, located in the habitable zone.', NULL);
INSERT INTO public.moon VALUES (19, 'Gliese 581g II', 11, 'A possible second moon of Gliese 581g, with a thin atmosphere.', NULL);
INSERT INTO public.moon VALUES (20, 'Rigel c I', 12, 'A moon of Rigel c, possibly captured from another system.', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 5972000000000000000000000, 'The only planet known to support life.', true, true, 1, 12742);
INSERT INTO public.planet VALUES (2, 'Mars', 1, 639000000000000000000000, 'Known as the Red Planet.', false, true, 2, 6779);
INSERT INTO public.planet VALUES (3, 'Proxima b', 2, 1270000000000000000000000, 'An exoplanet orbiting Proxima Centauri, potentially habitable.', false, true, 0, 12000);
INSERT INTO public.planet VALUES (4, 'Rigel b', 4, 894000000000000000000000000, 'A gas giant orbiting Rigel, very massive.', false, false, 16, 60000);
INSERT INTO public.planet VALUES (5, 'Alpha Centauri Bb', 5, 4500000000000000000000000, 'A rocky planet in the Alpha Centauri system.', false, true, 0, 11400);
INSERT INTO public.planet VALUES (6, 'Jupiter', 1, 1898000000000000000000000000, 'The largest planet in the Solar System, a gas giant.', false, true, 79, 139820);
INSERT INTO public.planet VALUES (7, 'Venus', 1, 4867000000000000000000000, 'The second planet from the Sun, known for its thick atmosphere.', false, true, 0, 12104);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 102400000000000000000000000, 'The farthest planet from the Sun, a gas giant with strong winds.', false, true, 14, 49244);
INSERT INTO public.planet VALUES (9, 'Proxima c', 2, 2650000000000000000000000, 'A hypothetical exoplanet orbiting Proxima Centauri, larger than Earth.', false, true, 0, 15000);
INSERT INTO public.planet VALUES (10, 'Sirius b', 6, 3970000000000000000000000, 'A hypothetical rocky planet orbiting Sirius.', false, true, 0, 13000);
INSERT INTO public.planet VALUES (11, 'Gliese 581g', 3, 4200000000000000000000000, 'An exoplanet potentially habitable orbiting the star Gliese 581.', false, true, 0, 15000);
INSERT INTO public.planet VALUES (12, 'Rigel c', 4, 780000000000000000000000000, 'Another gas giant orbiting Rigel, with a large system of moons.', false, false, 13, 55000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 4, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Rigel', 6, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Alpha Centauri A', 2, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Sirius', 1, NULL, NULL);


--
-- Name: blackhole blackholes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackholes_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: blackhole name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: blackhole blackholes_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackholes_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

