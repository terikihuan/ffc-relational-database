--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years numeric,
    galaxy_types integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    description text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    name character varying(30) NOT NULL,
    planet_types integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: spaceship; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.spaceship (
    spaceship_id integer NOT NULL,
    name character varying(30) NOT NULL,
    mass integer
);


ALTER TABLE public.spaceship OWNER TO freecodecamp;

--
-- Name: spaceship_spaceship_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.spaceship_spaceship_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spaceship_spaceship_id_seq OWNER TO freecodecamp;

--
-- Name: spaceship_spaceship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.spaceship_spaceship_id_seq OWNED BY public.spaceship.spaceship_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: spaceship spaceship_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceship ALTER COLUMN spaceship_id SET DEFAULT nextval('public.spaceship_spaceship_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'A barred spiral galaxy in the Local Group', 13500, 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'A spiral galaxy in the Local Group', 10000, 1);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'A spiral galaxy in the Local Group', 10000, 1);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 'An irregular dwarf galaxy in the Local Group', 10000, 3);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 'An irregular dwarf galaxy in the Local Group', 10000, 3);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 'A grand design spiral galaxy in the constellation Canes Venatici', 5000, 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ariel', false, true, 4500, 'The Fourth Largest Moon of Uranus', 7);
INSERT INTO public.moon VALUES (2, 'Umbriel', false, true, 4500, 'The Third Largest Moon of Uranus', 7);
INSERT INTO public.moon VALUES (3, 'Titania', false, true, 4500, 'The Largest Moon of Uranus', 7);
INSERT INTO public.moon VALUES (4, 'Oberon', false, true, 4500, 'The Second Largest Moon of Uranus', 7);
INSERT INTO public.moon VALUES (5, 'Triton', true, true, 4500, 'The Largest Moon of Neptune', 8);
INSERT INTO public.moon VALUES (6, 'Titan', true, true, 4500, 'The Largest Moon of Saturn', 6);
INSERT INTO public.moon VALUES (7, 'Rhea', false, true, 4500, 'The Second Largest Moon of Saturn', 6);
INSERT INTO public.moon VALUES (8, 'Iapetus', false, true, 4500, 'The Third Largest Moon of Saturn', 6);
INSERT INTO public.moon VALUES (9, 'Dione', false, true, 4500, 'The Fourth Largest Moon of Saturn', 6);
INSERT INTO public.moon VALUES (10, 'Tethys', false, true, 4500, 'The Fifth Largest Moon of Saturn', 6);
INSERT INTO public.moon VALUES (11, 'Enceladus', true, true, 4500, 'The Sixth Largest Moon of Saturn', 6);
INSERT INTO public.moon VALUES (12, 'Luna', true, true, 4500, 'The Moon of Earth', 3);
INSERT INTO public.moon VALUES (13, 'Phobos', false, false, 4600, 'The Inner Moon of Mars', 4);
INSERT INTO public.moon VALUES (14, 'Deimos', false, false, 4600, 'The Outer Moon of Mars', 4);
INSERT INTO public.moon VALUES (15, 'Io', true, true, 4500, 'The Innermost Galilean Moon of Jupiter', 5);
INSERT INTO public.moon VALUES (16, 'Europa', true, true, 4500, 'The Second Galilean Moon of Jupiter', 5);
INSERT INTO public.moon VALUES (17, 'Ganymede', true, true, 4500, 'The Largest Moon in the Solar System', 5);
INSERT INTO public.moon VALUES (18, 'Charon', false, true, 4500, 'The Largest Moon of Pluto', 9);
INSERT INTO public.moon VALUES (19, 'Nix', false, false, 4500, 'A Moon of Pluto', 9);
INSERT INTO public.moon VALUES (20, 'Hydra', false, false, 4500, 'A Moon of Pluto', 9);
INSERT INTO public.moon VALUES (21, 'Styx', false, false, 4500, 'A Moon of Pluto', 9);
INSERT INTO public.moon VALUES (22, 'Kerberos', false, false, 4500, 'A Moon of Pluto', 9);
INSERT INTO public.moon VALUES (23, 'Ceres', true, true, 4500, 'The Largest Object in the Asteroid Belt', 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'The third planet from the Sun and the only known planet to harbor life', true, true, 4543, 'Earth', 1, 3);
INSERT INTO public.planet VALUES (2, 'The fourth planet from the Sun and the second-smallest planet in the Solar System', false, true, 4560, 'Mars', 1, 3);
INSERT INTO public.planet VALUES (3, 'The second planet from the Sun and the sixth-largest planet in the Solar System', false, true, 4600, 'Venus', 1, 3);
INSERT INTO public.planet VALUES (4, 'The smallest and innermost planet in the Solar System', false, true, 4560, 'Mercury', 1, 3);
INSERT INTO public.planet VALUES (5, 'The largest planet in the Solar System', false, true, 4600, 'Jupiter', 2, 3);
INSERT INTO public.planet VALUES (6, 'The sixth planet from the Sun and the second-largest in the Solar System', false, true, 4560, 'Saturn', 2, 3);
INSERT INTO public.planet VALUES (7, 'The seventh planet from the Sun and the third-largest in the Solar System', false, true, 4560, 'Uranus', 2, 3);
INSERT INTO public.planet VALUES (8, 'A rocky planet in the Zeta Reticuli system', false, true, 5000, 'Zorbon', 1, 1);
INSERT INTO public.planet VALUES (9, 'A gas giant in the Alpha Centauri system', false, true, 6000, 'Xenoria', 2, 2);
INSERT INTO public.planet VALUES (10, 'A lush planet in the Chommell sector', true, true, 4000, 'Naboo', 1, 3);
INSERT INTO public.planet VALUES (11, 'An ecumenopolis planet in the Coruscant system', true, true, 7000, 'Coruscant', 1, 4);
INSERT INTO public.planet VALUES (12, 'A desert planet in the Arkanis sector', true, false, 5000, 'Tatooine', 1, 5);
INSERT INTO public.planet VALUES (13, 'An ice planet in the Anoat sector', false, true, 3000, 'Hoth', 1, 6);


--
-- Data for Name: spaceship; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.spaceship VALUES (1, 'Enterprise', 100000);
INSERT INTO public.spaceship VALUES (2, 'Millennium Falcon', 50000);
INSERT INTO public.spaceship VALUES (3, 'Serenity', 75000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 'The brightest star in the night sky', 250, 9, 1);
INSERT INTO public.star VALUES (2, 'Canopus', 'A bright giant star in the constellation Carina', 10000, 310, 2);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 'A star system in the constellation Centaurus', 6000, 4, 3);
INSERT INTO public.star VALUES (4, 'Arcturus', 'A red giant star in the constellation Boötes', 7000, 37, 4);
INSERT INTO public.star VALUES (5, 'Vega', 'A main-sequence star in the constellation Lyra', 455, 25, 5);
INSERT INTO public.star VALUES (6, 'Capella', 'A binary star system in the constellation Auriga', 5900, 42, 6);
INSERT INTO public.star VALUES (7, 'Rigel', 'A blue supergiant star in the constellation Orion', 8000, 860, 1);
INSERT INTO public.star VALUES (8, 'Procyon', 'A binary star system in the constellation Canis Minor', 2000, 11, 2);
INSERT INTO public.star VALUES (9, 'Betelgeuse', 'A red supergiant star in the constellation Orion', 10000, 643, 3);
INSERT INTO public.star VALUES (10, 'Achernar', 'The primary component of a binary star system in the constellation Eridanus', 4000, 139, 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: spaceship_spaceship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.spaceship_spaceship_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: galaxy constraint_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT constraint_name UNIQUE (name);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: spaceship spaceship_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceship
    ADD CONSTRAINT spaceship_name_key UNIQUE (name);


--
-- Name: spaceship spaceship_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceship
    ADD CONSTRAINT spaceship_pkey PRIMARY KEY (spaceship_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (name);


--
-- Name: star unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name_planet UNIQUE (name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

