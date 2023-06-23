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
    name character varying(128) NOT NULL,
    has_life boolean,
    applicable_legislation integer,
    station_jurisdiction_id integer
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
    name character varying(128) NOT NULL,
    country_extension_id character varying,
    color character varying,
    size_in_km integer,
    country_extension_name character varying
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
    name character varying(128) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    description text,
    star_ownership_id integer,
    country_extension_id character varying
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
-- Name: space_station; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_station (
    space_station_id integer NOT NULL,
    name character varying(128) NOT NULL,
    is_earthling_station boolean,
    station_jurisdiction_id integer
);


ALTER TABLE public.space_station OWNER TO freecodecamp;

--
-- Name: space_station_space_station_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_station_space_station_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_station_space_station_id_seq OWNER TO freecodecamp;

--
-- Name: space_station_space_station_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_station_space_station_id_seq OWNED BY public.space_station.space_station_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(128) NOT NULL,
    how_many_times_fits_in_sun numeric(10,1),
    applicable_legislation integer,
    star_ownership_id integer
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
-- Name: space_station space_station_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station ALTER COLUMN space_station_id SET DEFAULT nextval('public.space_station_space_station_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', true, 202301, 2077);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', false, 2023012, 20910);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', false, 202302, 201111);
INSERT INTO public.galaxy VALUES (4, 'Messier 82', false, 20230221, 201511);
INSERT INTO public.galaxy VALUES (5, 'Black Eye Galaxy', false, 20238221, 201911);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel Galaxy', false, 2023116, 202611);
INSERT INTO public.galaxy VALUES (7, 'Izeedt Galaxy', false, 202776, 2027771);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'earth_moon', 'CH_001', 'White', 1737, 'China');
INSERT INTO public.moon VALUES (3, 'Xian_art', 'CH_001', 'Red', NULL, 'China');
INSERT INTO public.moon VALUES (4, 'TRacalosa', 'CH_001', 'White', NULL, 'China');
INSERT INTO public.moon VALUES (5, 'eov', 'CH_001', 'White', NULL, 'China');
INSERT INTO public.moon VALUES (8, 'Raj_moon', 'Waf_001', 'Blue', 2030, 'Zaun');
INSERT INTO public.moon VALUES (9, 'Quetza_moon', 'Oye_001', 'Red', 3031, 'Aztekra');
INSERT INTO public.moon VALUES (10, 'Riug', 'Ix_001', 'White', 1400, 'Zhinza');
INSERT INTO public.moon VALUES (11, 'Ciuga', 'Ix_001', 'White', 1300, 'Zhia');
INSERT INTO public.moon VALUES (12, 'Xeuga', 'Ix_001', 'White', 1350, 'Zhia');
INSERT INTO public.moon VALUES (14, 'Eo_moon', 'Ix_002', 'White', 1250, 'XEoni');
INSERT INTO public.moon VALUES (15, 'Eo_moon_b', 'Ix_002', 'White', 2350, 'XEoni');
INSERT INTO public.moon VALUES (16, 'Cors_a', 'Ix_003', 'Brown', 2132, 'ACatia');
INSERT INTO public.moon VALUES (17, 'mars_ARtmoon', 'US_001', 'Black', 2102, 'United States of America');
INSERT INTO public.moon VALUES (18, 'mars_ARtmoon_II', 'US_002', 'Black', 1532, 'United States of America');
INSERT INTO public.moon VALUES (19, 'mars_ARtmoon_III', 'US_002', 'Black', 1532, 'United States of America');
INSERT INTO public.moon VALUES (20, 'kinto', 'Aseik_001', 'White', 3532, 'Inferior B');
INSERT INTO public.moon VALUES (21, 'koma', 'Aseik_001', 'White', 1261, 'Inferior B');
INSERT INTO public.moon VALUES (23, 'koma_ARtmoon', 'Ix_001', 'White', 1261, 'XEoni');
INSERT INTO public.moon VALUES (24, 'koma_ARtmoon_B', 'Ix_001', 'White', 1261, 'XEoni');
INSERT INTO public.moon VALUES (25, 'Xofar', NULL, 'Black', 63573, 'XEoni');
INSERT INTO public.moon VALUES (26, 'Dakaint', NULL, 'Black', 33573, 'XEoni');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'earth', 4, NULL, 'A kind place to live, with lovely people', 7777, 'CH_001');
INSERT INTO public.planet VALUES (3, 'Mars', 4, 54, 'A land which has been currpted by war', 7238, 'US_001');
INSERT INTO public.planet VALUES (4, 'Jupiter', 4, 484, 'The maximum fuel provider in th e Milky Way', 7237, 'US_002');
INSERT INTO public.planet VALUES (5, 'Arc_XY', 10000, 48421, 'There is no information about this planet, it seems there are goverment secrets', 7233, 'Ix_001');
INSERT INTO public.planet VALUES (7, 'SAbrinota', 1000, 40021, 'There is no information about this planet, high temperatures', 7233, 'Ix_002');
INSERT INTO public.planet VALUES (8, 'Ivarus', 12721, 38021, 'There is no information about this planet, Radiation levels are Dangerous', 7233, 'Ix_003');
INSERT INTO public.planet VALUES (9, 'Xiang_Terra', 500, 100021, 'Xiang people has been living there', 7234, 'Xian_001');
INSERT INTO public.planet VALUES (10, 'Xiang_Meca', 500, 104021, 'Most technological planet', 7234, 'Xian_002');
INSERT INTO public.planet VALUES (11, 'TRIK', 900, 103521, 'A amorph planet with a great amount of resources', 7234, 'Xian_003');
INSERT INTO public.planet VALUES (12, 'Zuma', 900, 13521, 'Planet with dangerous microorganisms', NULL, 'Waf_001');
INSERT INTO public.planet VALUES (13, 'Aseik', 900, 13521, 'The most giant planet', NULL, 'Aseik_001');
INSERT INTO public.planet VALUES (14, 'Oye', 2000, 3521, 'A planet with a lot of gold', NULL, 'Oye_001');


--
-- Data for Name: space_station; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_station VALUES (1, 'UNEarth', true, 2077);
INSERT INTO public.space_station VALUES (2, 'MArs_warth', true, 2077);
INSERT INTO public.space_station VALUES (3, 'Terricola_amigable', true, 2027771);
INSERT INTO public.space_station VALUES (4, 'XiangII', false, 20910);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Ixedt', 12.5, 202301, 7233);
INSERT INTO public.star VALUES (3, 'xiang', 43.5, 202301, 7234);
INSERT INTO public.star VALUES (4, 'zozu', 23.5, 202301, 7237);
INSERT INTO public.star VALUES (5, 'zhiaxa', 3.5, 2023012, 7737);
INSERT INTO public.star VALUES (6, 'kittenx', 232.5, 202302, 7238);
INSERT INTO public.star VALUES (7, 'mbr', 2.5, 202776, 7777);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 26, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: space_station_space_station_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_station_space_station_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy applicable_legislation; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT applicable_legislation UNIQUE (applicable_legislation);


--
-- Name: planet country_extension_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT country_extension_id UNIQUE (country_extension_id);


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
-- Name: moon moonid; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moonid UNIQUE (moon_id);


--
-- Name: space_station name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: moon namemoon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT namemoon UNIQUE (name);


--
-- Name: planet nameplanet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT nameplanet UNIQUE (name);


--
-- Name: star namestar; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT namestar UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: space_station space_station_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station
    ADD CONSTRAINT space_station_pkey PRIMARY KEY (space_station_id);


--
-- Name: space_station spacestationid; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station
    ADD CONSTRAINT spacestationid UNIQUE (space_station_id);


--
-- Name: star star_ownership_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_ownership_id UNIQUE (star_ownership_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy station_juristiction_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT station_juristiction_id UNIQUE (station_jurisdiction_id);


--
-- Name: star applicable_legislation; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT applicable_legislation FOREIGN KEY (applicable_legislation) REFERENCES public.galaxy(applicable_legislation);


--
-- Name: moon country_extension_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT country_extension_id FOREIGN KEY (country_extension_id) REFERENCES public.planet(country_extension_id);


--
-- Name: planet star_ownership_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_ownership_id FOREIGN KEY (star_ownership_id) REFERENCES public.star(star_ownership_id);


--
-- Name: space_station station_jurisdiction_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station
    ADD CONSTRAINT station_jurisdiction_id FOREIGN KEY (station_jurisdiction_id) REFERENCES public.galaxy(station_jurisdiction_id);


--
-- PostgreSQL database dump complete
--

