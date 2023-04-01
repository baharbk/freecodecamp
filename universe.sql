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
-- Name: extra; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra (
    name character varying(30),
    a integer NOT NULL,
    b integer NOT NULL,
    extra_id integer NOT NULL
);


ALTER TABLE public.extra OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_extra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_extra_id_seq OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_extra_id_seq OWNED BY public.extra.extra_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    desription text,
    name character varying(30),
    weight integer,
    height integer,
    distance numeric(4,1),
    a integer NOT NULL,
    b integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_is_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_is_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_is_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_is_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_is_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    weight integer,
    height integer,
    distance numeric(4,1),
    planet_id integer,
    a integer NOT NULL,
    b integer NOT NULL
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
    name character varying(30),
    height integer,
    weight integer,
    distance numeric(4,1),
    is_close boolean,
    star_id integer,
    a integer NOT NULL,
    b integer NOT NULL
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
    name character varying(30),
    weight integer,
    height integer,
    distance numeric(4,1),
    is_close boolean,
    galaxy_id integer,
    a integer NOT NULL,
    b integer NOT NULL
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
-- Name: extra extra_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra ALTER COLUMN extra_id SET DEFAULT nextval('public.extra_extra_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_is_seq'::regclass);


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
-- Data for Name: extra; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra VALUES (NULL, 1, 1, 1);
INSERT INTO public.extra VALUES (NULL, 2, 2, 2);
INSERT INTO public.extra VALUES (NULL, 3, 3, 3);
INSERT INTO public.extra VALUES (NULL, 4, 4, 4);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, 't', 20, 30, 30.1, 1, 1);
INSERT INTO public.galaxy VALUES (2, NULL, 'a', 20, 30, 30.1, 1, 1);
INSERT INTO public.galaxy VALUES (3, NULL, 'b', 20, 30, 30.1, 1, 1);
INSERT INTO public.galaxy VALUES (4, NULL, 'c', 20, 30, 30.1, 1, 1);
INSERT INTO public.galaxy VALUES (5, NULL, 'd', 20, 30, 30.1, 1, 1);
INSERT INTO public.galaxy VALUES (6, NULL, 'e', 20, 30, 30.1, 1, 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'a', 20, 30, 30.1, NULL, 1, 1);
INSERT INTO public.moon VALUES (3, 'b', 20, 30, 30.1, NULL, 1, 1);
INSERT INTO public.moon VALUES (4, 'c', 20, 30, 30.1, NULL, 1, 1);
INSERT INTO public.moon VALUES (5, 'd', 20, 30, 30.1, NULL, 1, 1);
INSERT INTO public.moon VALUES (6, 'e', 20, 30, 30.1, NULL, 1, 1);
INSERT INTO public.moon VALUES (7, 'f', 20, 30, 30.1, NULL, 1, 1);
INSERT INTO public.moon VALUES (8, 'g', 20, 30, 30.1, NULL, 1, 1);
INSERT INTO public.moon VALUES (9, 'h', 20, 30, 30.1, NULL, 1, 1);
INSERT INTO public.moon VALUES (10, 'i', 20, 30, 30.1, NULL, 1, 1);
INSERT INTO public.moon VALUES (11, 'j', 20, 30, 30.1, NULL, 1, 1);
INSERT INTO public.moon VALUES (12, 'k', 20, 30, 30.1, NULL, 1, 1);
INSERT INTO public.moon VALUES (13, 'l', 20, 30, 30.1, NULL, 1, 1);
INSERT INTO public.moon VALUES (14, 'm', 20, 30, 30.1, NULL, 1, 1);
INSERT INTO public.moon VALUES (15, 'n', 20, 30, 30.1, NULL, 1, 1);
INSERT INTO public.moon VALUES (16, 'o', 20, 30, 30.1, NULL, 1, 1);
INSERT INTO public.moon VALUES (17, 'p', 20, 30, 30.1, NULL, 1, 1);
INSERT INTO public.moon VALUES (18, 'q', 20, 30, 30.1, NULL, 1, 1);
INSERT INTO public.moon VALUES (19, 'r', 20, 30, 30.1, NULL, 1, 1);
INSERT INTO public.moon VALUES (20, 's', 20, 30, 30.1, NULL, 1, 1);
INSERT INTO public.moon VALUES (21, 't', 20, 30, 30.1, NULL, 1, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 't', 30, 20, 30.1, true, NULL, 1, 1);
INSERT INTO public.planet VALUES (2, 'a', 30, 20, 30.1, true, NULL, 1, 1);
INSERT INTO public.planet VALUES (3, 'b', 30, 20, 30.1, true, NULL, 1, 1);
INSERT INTO public.planet VALUES (4, 'c', 30, 20, 30.1, true, NULL, 1, 1);
INSERT INTO public.planet VALUES (5, 'd', 30, 20, 30.1, true, NULL, 1, 1);
INSERT INTO public.planet VALUES (6, 'e', 30, 20, 30.1, true, NULL, 1, 1);
INSERT INTO public.planet VALUES (7, 'f', 30, 20, 30.1, true, NULL, 1, 1);
INSERT INTO public.planet VALUES (8, 'g', 30, 20, 30.1, true, NULL, 1, 1);
INSERT INTO public.planet VALUES (9, 'h', 30, 20, 30.1, true, NULL, 1, 1);
INSERT INTO public.planet VALUES (10, 'i', 30, 20, 30.1, true, NULL, 1, 1);
INSERT INTO public.planet VALUES (11, 'j', 30, 20, 30.1, true, NULL, 1, 1);
INSERT INTO public.planet VALUES (12, 'k', 30, 20, 30.1, true, NULL, 1, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'e', 20, 30, 30.1, NULL, NULL, 1, 1);
INSERT INTO public.star VALUES (2, 'a', 20, 30, 30.1, NULL, NULL, 1, 1);
INSERT INTO public.star VALUES (3, 'b', 20, 30, 30.1, NULL, NULL, 1, 1);
INSERT INTO public.star VALUES (4, 'c', 20, 30, 30.1, NULL, NULL, 1, 1);
INSERT INTO public.star VALUES (5, 'd', 20, 30, 30.1, NULL, NULL, 1, 1);
INSERT INTO public.star VALUES (6, 'f', 20, 30, 30.1, NULL, NULL, 1, 1);


--
-- Name: extra_extra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_extra_id_seq', 4, true);


--
-- Name: galaxy_galaxy_is_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_is_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: extra extra_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_name_key UNIQUE (name);


--
-- Name: extra extra_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_pkey PRIMARY KEY (extra_id);


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

