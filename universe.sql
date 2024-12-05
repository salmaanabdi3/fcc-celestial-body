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
-- Name: astronomical_event; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronomical_event (
    astronomical_event_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    event_type character varying(255) NOT NULL,
    date date NOT NULL,
    star_id integer,
    planet_id integer
);


ALTER TABLE public.astronomical_event OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    galaxy_type character varying(60) NOT NULL,
    distance_from_earth integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galax_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galax_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galax_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galax_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galax_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text NOT NULL,
    distance_from_earth integer NOT NULL,
    is_spherical boolean,
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
    name character varying(60) NOT NULL,
    description text,
    planet_type character varying(100) NOT NULL,
    has_life boolean NOT NULL,
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
    name character varying(60) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years numeric,
    distance_from_earth integer NOT NULL,
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

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galax_id_seq'::regclass);


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
-- Data for Name: astronomical_event; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronomical_event VALUES (1, 'Supernova Explosion', 'A massive star exploded, causing a supernova.', 'Supernova', '2024-10-15', 1, NULL);
INSERT INTO public.astronomical_event VALUES (2, 'Solar Flare', 'A sudden burst of radiation from Star B.', 'Solar Flare', '2023-08-05', 2, NULL);
INSERT INTO public.astronomical_event VALUES (3, 'Asteroid Shower', 'A series of asteroids collided near Planet C.', 'Asteroid Shower', '2022-12-12', NULL, 3);
INSERT INTO public.astronomical_event VALUES (4, 'Meteor Storm', 'A meteor storm occurred, visible from Planet D.', 'Meteor Storm', '2023-06-20', NULL, 4);
INSERT INTO public.astronomical_event VALUES (5, 'Solar Eclipse', 'A solar eclipse visible from Planet E.', 'Solar Eclipse', '2025-05-09', 5, 5);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy A', NULL, 'Spiral', 100000);
INSERT INTO public.galaxy VALUES (2, 'Galaxy B', NULL, 'Elliptical', 200000);
INSERT INTO public.galaxy VALUES (3, 'Galaxy C', NULL, 'Irregular', 300000);
INSERT INTO public.galaxy VALUES (4, 'Galaxy D', NULL, 'Spiral1', 400000);
INSERT INTO public.galaxy VALUES (5, 'Galaxy E', NULL, 'Barred Spiral2', 500000);
INSERT INTO public.galaxy VALUES (6, 'Galaxy F', NULL, 'Lenticular', 600000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon A', 'A small moon with craters, orbiting Planet A.', 384400, true, 1);
INSERT INTO public.moon VALUES (2, 'Moon B', 'A large moon with an icy surface, orbiting Planet B.', 500000, true, 2);
INSERT INTO public.moon VALUES (3, 'Moon C', 'A moon with volcanic activity, orbiting Planet C.', 600000, true, 3);
INSERT INTO public.moon VALUES (4, 'Moon D', 'A moon with a dense atmosphere, orbiting Planet D.', 1000000, true, 4);
INSERT INTO public.moon VALUES (5, 'Moon E', 'A rocky moon with extreme temperatures, orbiting Planet E.', 700000, true, 5);
INSERT INTO public.moon VALUES (6, 'Moon F', 'A moon with a thin atmosphere, orbiting Planet F.', 800000, true, 6);
INSERT INTO public.moon VALUES (7, 'Moon G', 'A small moon with a frozen surface, orbiting Planet G.', 1500000, true, 1);
INSERT INTO public.moon VALUES (8, 'Moon H', 'A moon with large canyons, orbiting Planet H.', 400000, true, 2);
INSERT INTO public.moon VALUES (9, 'Moon I', 'A moon with surface water, orbiting Planet I.', 1200000, true, 3);
INSERT INTO public.moon VALUES (10, 'Moon J', 'A moon with a thick atmosphere, orbiting Planet J.', 500000, true, 4);
INSERT INTO public.moon VALUES (11, 'Moon K', 'A small moon with minimal gravity, orbiting Planet K.', 200000, true, 5);
INSERT INTO public.moon VALUES (12, 'Moon L', 'A moon with a red surface, orbiting Planet L.', 1000000, true, 6);
INSERT INTO public.moon VALUES (13, 'Moon M', 'A dark moon with irregular orbit, orbiting Planet A.', 450000, false, 1);
INSERT INTO public.moon VALUES (14, 'Moon N', 'A moon with an ice ring, orbiting Planet B.', 900000, true, 2);
INSERT INTO public.moon VALUES (15, 'Moon O', 'A moon with a dusty surface, orbiting Planet C.', 1100000, true, 3);
INSERT INTO public.moon VALUES (16, 'Moon P', 'A moon with large polar caps, orbiting Planet D.', 1500000, true, 4);
INSERT INTO public.moon VALUES (17, 'Moon Q', 'A moon with a rocky surface and lava, orbiting Planet E.', 200000, true, 5);
INSERT INTO public.moon VALUES (18, 'Moon R', 'A moon with a crystalline surface, orbiting Planet F.', 1800000, true, 6);
INSERT INTO public.moon VALUES (19, 'Moon S', 'A small rocky moon with craters, orbiting Planet G.', 400000, true, 1);
INSERT INTO public.moon VALUES (20, 'Moon T', 'A moon with icy rings, orbiting Planet H.', 800000, true, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet A', 'A small terrestrial planet in the Star A system.', 'Terrestrial', true, 1);
INSERT INTO public.planet VALUES (2, 'Planet B', 'A gas giant orbiting Star B.', 'Gas Giant', false, 2);
INSERT INTO public.planet VALUES (3, 'Planet C', 'A rocky planet in the Star C system.', 'Terrestrial', false, 3);
INSERT INTO public.planet VALUES (4, 'Planet D', 'An oceanic planet in the Star D system.', 'Terrestrial', true, 4);
INSERT INTO public.planet VALUES (5, 'Planet E', 'A massive gas giant in the Star E system.', 'Gas Giant', false, 5);
INSERT INTO public.planet VALUES (6, 'Planet F', 'A cold, rocky planet in the Star F system.', 'Terrestrial', false, 6);
INSERT INTO public.planet VALUES (7, 'Planet G', 'A desert planet with extreme temperatures, orbiting Star A.', 'Terrestrial', false, 1);
INSERT INTO public.planet VALUES (8, 'Planet H', 'A water-rich planet in the Star B system.', 'Terrestrial', true, 2);
INSERT INTO public.planet VALUES (9, 'Planet I', 'A moon-rich gas giant orbiting Star C.', 'Gas Giant', false, 3);
INSERT INTO public.planet VALUES (10, 'Planet J', 'A mysterious rocky planet orbiting Star D.', 'Terrestrial', false, 4);
INSERT INTO public.planet VALUES (11, 'Planet K', 'A frozen gas giant orbiting Star E.', 'Gas Giant', false, 5);
INSERT INTO public.planet VALUES (12, 'Planet L', 'A planet with high volcanic activity, orbiting Star F.', 'Terrestrial', false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star A', 'A dummy star at the center of the galaxy.', 1000, 50, 1);
INSERT INTO public.star VALUES (2, 'Star B', 'A dummy star in an elliptical galaxy.', 2000, 100, 2);
INSERT INTO public.star VALUES (3, 'Star C', 'A dummy star in an irregular galaxy.', 1500, 200, 3);
INSERT INTO public.star VALUES (4, 'Star D', 'A dummy star in a spiral galaxy.', 1200, 300, 4);
INSERT INTO public.star VALUES (5, 'Star E', 'A dummy star in a barred spiral galaxy.', 1700, 400, 5);
INSERT INTO public.star VALUES (6, 'Star F', 'A dummy star in a lenticular galaxy.', 1100, 500, 6);


--
-- Name: galaxy_galax_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galax_id_seq', 12, true);


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
-- Name: astronomical_event astronomical_event_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomical_event
    ADD CONSTRAINT astronomical_event_pkey PRIMARY KEY (astronomical_event_id);


--
-- Name: galaxy galaxy_galaxy_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_key UNIQUE (galaxy_type);


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
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: astronomical_event unique_event_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomical_event
    ADD CONSTRAINT unique_event_name UNIQUE (name);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: astronomical_event astronomical_event_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomical_event
    ADD CONSTRAINT astronomical_event_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: astronomical_event astronomical_event_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomical_event
    ADD CONSTRAINT astronomical_event_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

