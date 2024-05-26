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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: number_guess; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.number_guess (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    trial_number integer,
    game_id integer NOT NULL
);


ALTER TABLE public.number_guess OWNER TO freecodecamp;

--
-- Name: number_guess_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.number_guess_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.number_guess_game_id_seq OWNER TO freecodecamp;

--
-- Name: number_guess_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.number_guess_game_id_seq OWNED BY public.number_guess.game_id;


--
-- Name: number_guess_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.number_guess_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.number_guess_user_id_seq OWNER TO freecodecamp;

--
-- Name: number_guess_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.number_guess_user_id_seq OWNED BY public.number_guess.user_id;


--
-- Name: number_guess user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.number_guess ALTER COLUMN user_id SET DEFAULT nextval('public.number_guess_user_id_seq'::regclass);


--
-- Name: number_guess game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.number_guess ALTER COLUMN game_id SET DEFAULT nextval('public.number_guess_game_id_seq'::regclass);


--
-- Data for Name: number_guess; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.number_guess VALUES (1, 'user_1716744417086', 812, 1);
INSERT INTO public.number_guess VALUES (2, 'user_1716744417086', 515, 2);
INSERT INTO public.number_guess VALUES (3, 'user_1716744417085', 337, 3);
INSERT INTO public.number_guess VALUES (4, 'user_1716744417085', 710, 4);
INSERT INTO public.number_guess VALUES (5, 'user_1716744417086', 234, 5);
INSERT INTO public.number_guess VALUES (6, 'user_1716744417086', 828, 6);
INSERT INTO public.number_guess VALUES (7, 'Johan', 9, 7);
INSERT INTO public.number_guess VALUES (8, 'Johan', 13, 8);
INSERT INTO public.number_guess VALUES (9, 'Johan', 10, 9);
INSERT INTO public.number_guess VALUES (10, 'Johan', 11, 10);
INSERT INTO public.number_guess VALUES (11, 'user_1716745435170', 623, 11);
INSERT INTO public.number_guess VALUES (12, 'user_1716745435170', 740, 12);
INSERT INTO public.number_guess VALUES (13, 'user_1716745435169', 301, 13);
INSERT INTO public.number_guess VALUES (14, 'user_1716745435169', 698, 14);
INSERT INTO public.number_guess VALUES (15, 'user_1716745435170', 913, 15);
INSERT INTO public.number_guess VALUES (16, 'user_1716745435170', 528, 16);
INSERT INTO public.number_guess VALUES (17, 'user_1716745515964', 926, 17);
INSERT INTO public.number_guess VALUES (18, 'user_1716745515964', 310, 18);
INSERT INTO public.number_guess VALUES (19, 'user_1716745515963', 834, 19);
INSERT INTO public.number_guess VALUES (20, 'user_1716745515963', 406, 20);
INSERT INTO public.number_guess VALUES (21, 'user_1716745515964', 81, 21);
INSERT INTO public.number_guess VALUES (22, 'user_1716745515964', 550, 22);
INSERT INTO public.number_guess VALUES (23, 'Johan', 7, 23);
INSERT INTO public.number_guess VALUES (24, 'user_1716745644759', 137, 24);
INSERT INTO public.number_guess VALUES (25, 'user_1716745644759', 619, 25);
INSERT INTO public.number_guess VALUES (26, 'user_1716745644758', 501, 26);
INSERT INTO public.number_guess VALUES (27, 'user_1716745644758', 92, 27);
INSERT INTO public.number_guess VALUES (28, 'user_1716745644759', 87, 28);
INSERT INTO public.number_guess VALUES (29, 'user_1716745644759', 693, 29);
INSERT INTO public.number_guess VALUES (30, 'user_1716745911700', 107, 30);
INSERT INTO public.number_guess VALUES (31, 'user_1716745911700', 601, 31);
INSERT INTO public.number_guess VALUES (32, 'user_1716745911699', 349, 32);
INSERT INTO public.number_guess VALUES (33, 'user_1716745911699', 576, 33);
INSERT INTO public.number_guess VALUES (34, 'user_1716745911700', 876, 34);
INSERT INTO public.number_guess VALUES (35, 'user_1716745911700', 866, 35);


--
-- Name: number_guess_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.number_guess_game_id_seq', 35, true);


--
-- Name: number_guess_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.number_guess_user_id_seq', 35, true);


--
-- Name: number_guess number_guess_game_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.number_guess
    ADD CONSTRAINT number_guess_game_id_key UNIQUE (game_id);


--
-- Name: number_guess number_guess_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.number_guess
    ADD CONSTRAINT number_guess_pkey PRIMARY KEY (user_id);


--
-- Name: number_guess number_guess_user_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.number_guess
    ADD CONSTRAINT number_guess_user_id_key UNIQUE (user_id);


--
-- PostgreSQL database dump complete
--

