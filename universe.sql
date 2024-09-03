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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    g_name character varying(30),
    "int" integer,
    g_int2 integer,
    g_num numeric(10,2) NOT NULL,
    g_text text NOT NULL,
    g_boo boolean,
    name character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_g_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_g_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_g_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_g_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_g_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    m_name character varying(30),
    "int" integer,
    m_int2 integer,
    m_num numeric(10,2) NOT NULL,
    m_text text NOT NULL,
    m_boo boolean,
    name character varying(30),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_m_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_m_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_m_id_seq OWNER TO freecodecamp;

--
-- Name: moon_m_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_m_id_seq OWNED BY public.moon.moon_id;


--
-- Name: other; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.other (
    other_id integer NOT NULL,
    o_name character varying(30) NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.other OWNER TO freecodecamp;

--
-- Name: other_o_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.other_o_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.other_o_id_seq OWNER TO freecodecamp;

--
-- Name: other_o_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.other_o_id_seq OWNED BY public.other.other_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    p_name character varying(30),
    "int" integer,
    p_int2 integer,
    p_num numeric(10,2) NOT NULL,
    p_text text NOT NULL,
    p_boo boolean,
    name character varying(30),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_p_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_p_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_p_id_seq OWNER TO freecodecamp;

--
-- Name: planet_p_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_p_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    s_name character varying(30),
    "int" integer,
    s_int2 integer,
    s_num numeric(10,2) NOT NULL,
    s_text text NOT NULL,
    s_boo boolean,
    name character varying(30),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_s_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_s_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_s_id_seq OWNER TO freecodecamp;

--
-- Name: star_s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_s_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_g_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_m_id_seq'::regclass);


--
-- Name: other other_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other ALTER COLUMN other_id SET DEFAULT nextval('public.other_o_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_p_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_s_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name');
INSERT INTO public.galaxy VALUES (2, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name1');
INSERT INTO public.galaxy VALUES (3, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name2');
INSERT INTO public.galaxy VALUES (4, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name3');
INSERT INTO public.galaxy VALUES (5, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name4');
INSERT INTO public.galaxy VALUES (6, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name5');
INSERT INTO public.galaxy VALUES (7, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name6');
INSERT INTO public.galaxy VALUES (8, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name7');
INSERT INTO public.galaxy VALUES (9, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name8');
INSERT INTO public.galaxy VALUES (10, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name9');
INSERT INTO public.galaxy VALUES (11, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name10');
INSERT INTO public.galaxy VALUES (12, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name11');
INSERT INTO public.galaxy VALUES (13, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name12');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name', 1);
INSERT INTO public.moon VALUES (2, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name1', 1);
INSERT INTO public.moon VALUES (3, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name2', 1);
INSERT INTO public.moon VALUES (4, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name3', 1);
INSERT INTO public.moon VALUES (5, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name4', 1);
INSERT INTO public.moon VALUES (6, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name5', 1);
INSERT INTO public.moon VALUES (7, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name6', 1);
INSERT INTO public.moon VALUES (8, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name7', 1);
INSERT INTO public.moon VALUES (9, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name8', 1);
INSERT INTO public.moon VALUES (10, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name9', 1);
INSERT INTO public.moon VALUES (11, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name10', 1);
INSERT INTO public.moon VALUES (12, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name11', 1);
INSERT INTO public.moon VALUES (13, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name12', 1);
INSERT INTO public.moon VALUES (14, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name3', 1);
INSERT INTO public.moon VALUES (15, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name4', 1);
INSERT INTO public.moon VALUES (16, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name5', 1);
INSERT INTO public.moon VALUES (17, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name6', 1);
INSERT INTO public.moon VALUES (18, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name7', 1);
INSERT INTO public.moon VALUES (19, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name8', 1);
INSERT INTO public.moon VALUES (20, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name9', 1);
INSERT INTO public.moon VALUES (21, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name10', 1);
INSERT INTO public.moon VALUES (22, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name11', 1);
INSERT INTO public.moon VALUES (23, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name12', 1);


--
-- Data for Name: other; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.other VALUES (1, 'new_value', 'name');
INSERT INTO public.other VALUES (2, 'new_value', 'name1');
INSERT INTO public.other VALUES (3, 'new_value', 'name2');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name', 1);
INSERT INTO public.planet VALUES (2, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name1', 1);
INSERT INTO public.planet VALUES (3, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name2', 1);
INSERT INTO public.planet VALUES (4, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name3', 1);
INSERT INTO public.planet VALUES (5, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name4', 1);
INSERT INTO public.planet VALUES (6, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name5', 1);
INSERT INTO public.planet VALUES (7, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name6', 1);
INSERT INTO public.planet VALUES (8, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name7', 1);
INSERT INTO public.planet VALUES (9, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name8', 1);
INSERT INTO public.planet VALUES (10, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name9', 1);
INSERT INTO public.planet VALUES (11, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name10', 1);
INSERT INTO public.planet VALUES (12, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name11', 1);
INSERT INTO public.planet VALUES (13, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name12', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name1', 1);
INSERT INTO public.star VALUES (3, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name2', 1);
INSERT INTO public.star VALUES (4, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name3', 1);
INSERT INTO public.star VALUES (5, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name4', 1);
INSERT INTO public.star VALUES (6, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name5', 1);
INSERT INTO public.star VALUES (7, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name6', 1);
INSERT INTO public.star VALUES (8, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name7', 1);
INSERT INTO public.star VALUES (9, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name8', 1);
INSERT INTO public.star VALUES (10, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name9', 1);
INSERT INTO public.star VALUES (11, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name10', 1);
INSERT INTO public.star VALUES (12, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name11', 1);
INSERT INTO public.star VALUES (13, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name12', 1);
INSERT INTO public.star VALUES (1, NULL, NULL, NULL, 1.00, 'new_value', NULL, 'name', 1);


--
-- Name: galaxy_g_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_g_id_seq', 13, true);


--
-- Name: moon_m_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_m_id_seq', 23, true);


--
-- Name: other_o_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.other_o_id_seq', 3, true);


--
-- Name: planet_p_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_p_id_seq', 13, true);


--
-- Name: star_s_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_s_id_seq', 13, true);


--
-- Name: other constraint_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other
    ADD CONSTRAINT constraint_name UNIQUE (name);


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
-- Name: other other_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other
    ADD CONSTRAINT other_pkey PRIMARY KEY (other_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_g; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_g UNIQUE ("int");


--
-- Name: moon unique_m; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_m UNIQUE ("int");


--
-- Name: planet unique_p; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_p UNIQUE ("int");


--
-- Name: star unique_s; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_s UNIQUE ("int");


--
-- Name: moon fk_m_p; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_m_p FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_p_s; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_p_s FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_s_g; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_s_g FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

