
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
    name character varying(50) NOT NULL,
    size integer NOT NULL,
    number_of_stars integer,
    shape text
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
    name character varying(50) NOT NULL,
    diameteer integer,
    number_of_aliens integer NOT NULL,
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
    name character varying(50) NOT NULL,
    number_of_moons integer,
    gravity integer NOT NULL,
    description text,
    mass numeric(3,1),
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_id integer,
    diameter integer,
    is_shiny boolean,
    is_pretty boolean
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
-- Name: starships; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.starships (
    starships_id integer NOT NULL,
    name character varying(50) NOT NULL,
    colour character varying(20) NOT NULL,
    galaxy_id integer,
    is_shiny boolean
);


ALTER TABLE public.starships OWNER TO freecodecamp;

--
-- Name: starships_ship_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.starships_ship_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.starships_ship_id_seq OWNER TO freecodecamp;

--
-- Name: starships_ship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.starships_ship_id_seq OWNED BY public.starships.starships_id;


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: starships starships_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starships ALTER COLUMN starships_id SET DEFAULT nextval('public.starships_ship_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milkyway', 100000, 100, 'spiral');
INSERT INTO public.galaxy VALUES (2, 'bounty', 200000, 500, 'pillow');
INSERT INTO public.galaxy VALUES (3, 'starburst', 50000, 10, 'parcel');
INSERT INTO public.galaxy VALUES (4, 'scorpion', 1000, 5, 'bug');
INSERT INTO public.galaxy VALUES (5, 'Helix', 1000000, 500, 'spiral');
INSERT INTO public.galaxy VALUES (6, 'Ant', 3000000, 1000, 'bug');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ronald', 51, 200, 1);
INSERT INTO public.moon VALUES (2, 'Jeff', 14, 1600, 2);
INSERT INTO public.moon VALUES (3, 'Steve', 76, 2000, 3);
INSERT INTO public.moon VALUES (4, 'Rhonda', 35, 2000000, 4);
INSERT INTO public.moon VALUES (5, 'Brenda', 44, 260000, 5);
INSERT INTO public.moon VALUES (6, 'Brent', 26, 480000, 6);
INSERT INTO public.moon VALUES (7, 'Hillary', 57, 990000, 7);
INSERT INTO public.moon VALUES (8, 'Jameson', 22, 50300, 8);
INSERT INTO public.moon VALUES (9, 'Woody', 88, 66600, 9);
INSERT INTO public.moon VALUES (10, 'Harold', 96, 3, 10);
INSERT INTO public.moon VALUES (11, 'Judy', 21, 700, 11);
INSERT INTO public.moon VALUES (12, 'Winston', 33, 7100, 12);
INSERT INTO public.moon VALUES (13, 'Stacy', 19, 2000, 1);
INSERT INTO public.moon VALUES (14, 'Ken', 10, 10000, 2);
INSERT INTO public.moon VALUES (15, 'Jonathan', 4, 100000, 3);
INSERT INTO public.moon VALUES (16, 'Lindsay', 41, 9000, 4);
INSERT INTO public.moon VALUES (17, 'Veronica', 39, 5000, 5);
INSERT INTO public.moon VALUES (18, 'Hugh Grant', 62, 1000000, 6);
INSERT INTO public.moon VALUES (19, 'Jessica', 15, 10000000, 7);
INSERT INTO public.moon VALUES (20, 'Richard', 50, 0, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'happy', 2, -10, 'yellow', 6.0, 1);
INSERT INTO public.planet VALUES (2, 'sad', 1, 1, 'blue', 86.8, 4);
INSERT INTO public.planet VALUES (3, 'angry', 6, 2, 'red and steamy', 62.9, 6);
INSERT INTO public.planet VALUES (4, 'aloof', 1, 11, 'blue and green', 0.6, 1);
INSERT INTO public.planet VALUES (5, 'scared', 4, 23, 'yellow and white', 59.0, 3);
INSERT INTO public.planet VALUES (6, 'sick', 5, 22, 'bright green', 6.7, 2);
INSERT INTO public.planet VALUES (7, 'sloppy', 0, 7, 'spoltchy', 6.7, 5);
INSERT INTO public.planet VALUES (8, 'sleepy', 16, 0, 'flat and fluffy', 0.0, 1);
INSERT INTO public.planet VALUES (9, 'strong', 5, 109, 'square and bulging', 10.7, 2);
INSERT INTO public.planet VALUES (10, 'hungover', 3, 0, 'sweaty and yellow', 77.7, 6);
INSERT INTO public.planet VALUES (11, 'mayhem', 99, 100, 'constantly shifting', 1.0, 3);
INSERT INTO public.planet VALUES (12, 'cool', 69, 69, 'green leaf', 0.7, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'gold', 1, 1, true, NULL);
INSERT INTO public.star VALUES (2, 'silver', 1, 20, true, NULL);
INSERT INTO public.star VALUES (3, 'bronze', 2, 10, false, NULL);
INSERT INTO public.star VALUES (4, 'steel', 3, 100, false, NULL);
INSERT INTO public.star VALUES (5, 'diamond', 4, 100000, true, NULL);
INSERT INTO public.star VALUES (6, 'rock', 5, 40000, false, NULL);


--
-- Data for Name: starships; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.starships VALUES (1, 'Battlestar Galactica', 'white', 1, NULL);
INSERT INTO public.starships VALUES (2, 'Thunderbird 2', 'green', 4, NULL);
INSERT INTO public.starships VALUES (3, 'Red Dwarf', 'red', 2, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: starships_ship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.starships_ship_id_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (name);


--
-- Name: starships starships_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starships
    ADD CONSTRAINT starships_pkey PRIMARY KEY (starships_id);


--
-- Name: starships starships_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starships
    ADD CONSTRAINT starships_unique UNIQUE (name);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: starships galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starships
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--
