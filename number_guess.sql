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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    best_guess integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    frequent_games integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (249, 78, 10);
INSERT INTO public.games VALUES (250, 79, 664);
INSERT INTO public.games VALUES (251, 79, 903);
INSERT INTO public.games VALUES (252, 80, 85);
INSERT INTO public.games VALUES (253, 80, 58);
INSERT INTO public.games VALUES (254, 79, 918);
INSERT INTO public.games VALUES (255, 79, 83);
INSERT INTO public.games VALUES (256, 79, 419);
INSERT INTO public.games VALUES (257, 78, 11);
INSERT INTO public.games VALUES (258, 81, 217);
INSERT INTO public.games VALUES (259, 81, 561);
INSERT INTO public.games VALUES (260, 82, 604);
INSERT INTO public.games VALUES (261, 82, 262);
INSERT INTO public.games VALUES (262, 81, 461);
INSERT INTO public.games VALUES (263, 81, 670);
INSERT INTO public.games VALUES (264, 81, 493);
INSERT INTO public.games VALUES (265, 83, 246);
INSERT INTO public.games VALUES (266, 83, 124);
INSERT INTO public.games VALUES (267, 84, 877);
INSERT INTO public.games VALUES (268, 84, 1001);
INSERT INTO public.games VALUES (269, 83, 711);
INSERT INTO public.games VALUES (270, 83, 37);
INSERT INTO public.games VALUES (271, 83, 220);
INSERT INTO public.games VALUES (272, 85, 225);
INSERT INTO public.games VALUES (273, 85, 358);
INSERT INTO public.games VALUES (274, 86, 316);
INSERT INTO public.games VALUES (275, 86, 264);
INSERT INTO public.games VALUES (276, 85, 78);
INSERT INTO public.games VALUES (277, 85, 674);
INSERT INTO public.games VALUES (278, 85, 835);
INSERT INTO public.games VALUES (279, 87, 316);
INSERT INTO public.games VALUES (280, 87, 578);
INSERT INTO public.games VALUES (281, 88, 841);
INSERT INTO public.games VALUES (282, 88, 459);
INSERT INTO public.games VALUES (283, 87, 695);
INSERT INTO public.games VALUES (284, 87, 518);
INSERT INTO public.games VALUES (285, 87, 671);
INSERT INTO public.games VALUES (286, 89, 16);
INSERT INTO public.games VALUES (287, 89, 416);
INSERT INTO public.games VALUES (288, 90, 833);
INSERT INTO public.games VALUES (289, 90, 820);
INSERT INTO public.games VALUES (290, 89, 276);
INSERT INTO public.games VALUES (291, 89, 703);
INSERT INTO public.games VALUES (292, 89, 183);
INSERT INTO public.games VALUES (293, 91, 297);
INSERT INTO public.games VALUES (294, 91, 653);
INSERT INTO public.games VALUES (295, 92, 602);
INSERT INTO public.games VALUES (296, 92, 574);
INSERT INTO public.games VALUES (297, 91, 353);
INSERT INTO public.games VALUES (298, 91, 405);
INSERT INTO public.games VALUES (299, 91, 874);
INSERT INTO public.games VALUES (300, 93, 53);
INSERT INTO public.games VALUES (301, 93, 683);
INSERT INTO public.games VALUES (302, 94, 964);
INSERT INTO public.games VALUES (303, 94, 415);
INSERT INTO public.games VALUES (304, 93, 1002);
INSERT INTO public.games VALUES (305, 93, 462);
INSERT INTO public.games VALUES (306, 93, 552);
INSERT INTO public.games VALUES (307, 95, 6);
INSERT INTO public.games VALUES (308, 95, 633);
INSERT INTO public.games VALUES (309, 96, 331);
INSERT INTO public.games VALUES (310, 96, 713);
INSERT INTO public.games VALUES (311, 95, 601);
INSERT INTO public.games VALUES (312, 95, 733);
INSERT INTO public.games VALUES (313, 95, 976);
INSERT INTO public.games VALUES (314, 97, 813);
INSERT INTO public.games VALUES (315, 97, 251);
INSERT INTO public.games VALUES (316, 98, 101);
INSERT INTO public.games VALUES (317, 98, 856);
INSERT INTO public.games VALUES (318, 97, 506);
INSERT INTO public.games VALUES (319, 97, 994);
INSERT INTO public.games VALUES (320, 97, 285);
INSERT INTO public.games VALUES (321, 99, 92);
INSERT INTO public.games VALUES (322, 99, 731);
INSERT INTO public.games VALUES (323, 100, 419);
INSERT INTO public.games VALUES (324, 100, 514);
INSERT INTO public.games VALUES (325, 99, 677);
INSERT INTO public.games VALUES (326, 99, 74);
INSERT INTO public.games VALUES (327, 99, 239);
INSERT INTO public.games VALUES (328, 101, 854);
INSERT INTO public.games VALUES (329, 101, 481);
INSERT INTO public.games VALUES (330, 102, 417);
INSERT INTO public.games VALUES (331, 102, 199);
INSERT INTO public.games VALUES (332, 101, 355);
INSERT INTO public.games VALUES (333, 101, 73);
INSERT INTO public.games VALUES (334, 101, 191);
INSERT INTO public.games VALUES (335, 103, 758);
INSERT INTO public.games VALUES (336, 103, 332);
INSERT INTO public.games VALUES (337, 104, 866);
INSERT INTO public.games VALUES (338, 104, 959);
INSERT INTO public.games VALUES (339, 103, 688);
INSERT INTO public.games VALUES (340, 103, 906);
INSERT INTO public.games VALUES (341, 103, 270);
INSERT INTO public.games VALUES (342, 105, 528);
INSERT INTO public.games VALUES (343, 105, 273);
INSERT INTO public.games VALUES (344, 106, 966);
INSERT INTO public.games VALUES (345, 106, 431);
INSERT INTO public.games VALUES (346, 105, 681);
INSERT INTO public.games VALUES (347, 105, 22);
INSERT INTO public.games VALUES (348, 105, 560);
INSERT INTO public.games VALUES (349, 78, 10);
INSERT INTO public.games VALUES (350, 107, 746);
INSERT INTO public.games VALUES (351, 107, 731);
INSERT INTO public.games VALUES (352, 108, 876);
INSERT INTO public.games VALUES (353, 108, 567);
INSERT INTO public.games VALUES (354, 107, 325);
INSERT INTO public.games VALUES (355, 107, 276);
INSERT INTO public.games VALUES (356, 107, 590);
INSERT INTO public.games VALUES (357, 109, 603);
INSERT INTO public.games VALUES (358, 109, 174);
INSERT INTO public.games VALUES (359, 110, 899);
INSERT INTO public.games VALUES (360, 110, 779);
INSERT INTO public.games VALUES (361, 109, 163);
INSERT INTO public.games VALUES (362, 109, 408);
INSERT INTO public.games VALUES (363, 109, 520);
INSERT INTO public.games VALUES (364, 111, 553);
INSERT INTO public.games VALUES (365, 111, 142);
INSERT INTO public.games VALUES (366, 112, 386);
INSERT INTO public.games VALUES (367, 112, 173);
INSERT INTO public.games VALUES (368, 111, 704);
INSERT INTO public.games VALUES (369, 111, 849);
INSERT INTO public.games VALUES (370, 111, 525);
INSERT INTO public.games VALUES (371, 113, 616);
INSERT INTO public.games VALUES (372, 113, 383);
INSERT INTO public.games VALUES (373, 114, 13);
INSERT INTO public.games VALUES (374, 114, 715);
INSERT INTO public.games VALUES (375, 113, 248);
INSERT INTO public.games VALUES (376, 113, 505);
INSERT INTO public.games VALUES (377, 113, 761);
INSERT INTO public.games VALUES (378, 78, 4);
INSERT INTO public.games VALUES (379, 78, 2);
INSERT INTO public.games VALUES (380, 115, 9);
INSERT INTO public.games VALUES (381, 115, 7);
INSERT INTO public.games VALUES (382, 116, 5);
INSERT INTO public.games VALUES (383, 116, 10);
INSERT INTO public.games VALUES (384, 115, 11);
INSERT INTO public.games VALUES (385, 115, 10);
INSERT INTO public.games VALUES (386, 115, 2);
INSERT INTO public.games VALUES (387, 117, 10);
INSERT INTO public.games VALUES (388, 117, 5);
INSERT INTO public.games VALUES (389, 118, 10);
INSERT INTO public.games VALUES (390, 118, 6);
INSERT INTO public.games VALUES (391, 117, 11);
INSERT INTO public.games VALUES (392, 117, 11);
INSERT INTO public.games VALUES (393, 117, 6);
INSERT INTO public.games VALUES (394, 78, 2);
INSERT INTO public.games VALUES (395, 119, 3);
INSERT INTO public.games VALUES (396, 119, 3);
INSERT INTO public.games VALUES (397, 120, 9);
INSERT INTO public.games VALUES (398, 120, 4);
INSERT INTO public.games VALUES (399, 119, 1);
INSERT INTO public.games VALUES (400, 119, 11);
INSERT INTO public.games VALUES (401, 119, 11);
INSERT INTO public.games VALUES (402, 78, 4);
INSERT INTO public.games VALUES (403, 121, 10);
INSERT INTO public.games VALUES (404, 121, 3);
INSERT INTO public.games VALUES (405, 122, 2);
INSERT INTO public.games VALUES (406, 122, 11);
INSERT INTO public.games VALUES (407, 121, 7);
INSERT INTO public.games VALUES (408, 121, 6);
INSERT INTO public.games VALUES (409, 121, 8);
INSERT INTO public.games VALUES (410, 123, 11);
INSERT INTO public.games VALUES (411, 123, 2);
INSERT INTO public.games VALUES (412, 124, 11);
INSERT INTO public.games VALUES (413, 124, 5);
INSERT INTO public.games VALUES (414, 123, 7);
INSERT INTO public.games VALUES (415, 123, 10);
INSERT INTO public.games VALUES (416, 123, 6);
INSERT INTO public.games VALUES (417, 125, 2);
INSERT INTO public.games VALUES (418, 125, 7);
INSERT INTO public.games VALUES (419, 126, 8);
INSERT INTO public.games VALUES (420, 126, 9);
INSERT INTO public.games VALUES (421, 125, 9);
INSERT INTO public.games VALUES (422, 125, 10);
INSERT INTO public.games VALUES (423, 125, 3);
INSERT INTO public.games VALUES (424, 127, 2);
INSERT INTO public.games VALUES (425, 127, 10);
INSERT INTO public.games VALUES (426, 128, 9);
INSERT INTO public.games VALUES (427, 128, 8);
INSERT INTO public.games VALUES (428, 127, 7);
INSERT INTO public.games VALUES (429, 127, 7);
INSERT INTO public.games VALUES (430, 127, 8);
INSERT INTO public.games VALUES (431, 129, 4);
INSERT INTO public.games VALUES (432, 129, 5);
INSERT INTO public.games VALUES (433, 130, 9);
INSERT INTO public.games VALUES (434, 130, 3);
INSERT INTO public.games VALUES (435, 129, 10);
INSERT INTO public.games VALUES (436, 129, 2);
INSERT INTO public.games VALUES (437, 129, 6);
INSERT INTO public.games VALUES (438, 131, 3);
INSERT INTO public.games VALUES (439, 131, 9);
INSERT INTO public.games VALUES (440, 132, 5);
INSERT INTO public.games VALUES (441, 132, 6);
INSERT INTO public.games VALUES (442, 131, 12);
INSERT INTO public.games VALUES (443, 131, 9);
INSERT INTO public.games VALUES (444, 131, 11);
INSERT INTO public.games VALUES (445, 78, 2);
INSERT INTO public.games VALUES (446, 133, 5);
INSERT INTO public.games VALUES (447, 133, 10);
INSERT INTO public.games VALUES (448, 134, 7);
INSERT INTO public.games VALUES (449, 134, 7);
INSERT INTO public.games VALUES (450, 133, 10);
INSERT INTO public.games VALUES (451, 133, 5);
INSERT INTO public.games VALUES (452, 133, 7);
INSERT INTO public.games VALUES (453, 135, 10);
INSERT INTO public.games VALUES (454, 135, 10);
INSERT INTO public.games VALUES (455, 136, 3);
INSERT INTO public.games VALUES (456, 136, 7);
INSERT INTO public.games VALUES (457, 135, 6);
INSERT INTO public.games VALUES (458, 135, 11);
INSERT INTO public.games VALUES (459, 135, 5);
INSERT INTO public.games VALUES (460, 137, 280);
INSERT INTO public.games VALUES (461, 137, 462);
INSERT INTO public.games VALUES (462, 138, 40);
INSERT INTO public.games VALUES (463, 138, 609);
INSERT INTO public.games VALUES (464, 137, 741);
INSERT INTO public.games VALUES (465, 137, 287);
INSERT INTO public.games VALUES (466, 137, 13);
INSERT INTO public.games VALUES (467, 139, 823);
INSERT INTO public.games VALUES (468, 139, 413);
INSERT INTO public.games VALUES (469, 140, 208);
INSERT INTO public.games VALUES (470, 140, 993);
INSERT INTO public.games VALUES (471, 139, 178);
INSERT INTO public.games VALUES (472, 139, 973);
INSERT INTO public.games VALUES (473, 139, 832);
INSERT INTO public.games VALUES (474, 141, 340);
INSERT INTO public.games VALUES (475, 141, 426);
INSERT INTO public.games VALUES (476, 142, 662);
INSERT INTO public.games VALUES (477, 142, 125);
INSERT INTO public.games VALUES (478, 141, 372);
INSERT INTO public.games VALUES (479, 141, 2);
INSERT INTO public.games VALUES (480, 141, 216);
INSERT INTO public.games VALUES (481, 143, 497);
INSERT INTO public.games VALUES (482, 143, 616);
INSERT INTO public.games VALUES (483, 144, 155);
INSERT INTO public.games VALUES (484, 144, 392);
INSERT INTO public.games VALUES (485, 143, 172);
INSERT INTO public.games VALUES (486, 143, 176);
INSERT INTO public.games VALUES (487, 143, 363);
INSERT INTO public.games VALUES (488, 145, 480);
INSERT INTO public.games VALUES (489, 145, 632);
INSERT INTO public.games VALUES (490, 146, 784);
INSERT INTO public.games VALUES (491, 146, 226);
INSERT INTO public.games VALUES (492, 145, 874);
INSERT INTO public.games VALUES (493, 145, 630);
INSERT INTO public.games VALUES (494, 145, 249);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (78, 'Test1', 8);
INSERT INTO public.users VALUES (80, 'user_1734986229374', 2);
INSERT INTO public.users VALUES (100, 'user_1734986576846', 2);
INSERT INTO public.users VALUES (79, 'user_1734986229375', 5);
INSERT INTO public.users VALUES (99, 'user_1734986576847', 5);
INSERT INTO public.users VALUES (82, 'user_1734986354315', 2);
INSERT INTO public.users VALUES (81, 'user_1734986354316', 5);
INSERT INTO public.users VALUES (116, 'user_1734988515539', 2);
INSERT INTO public.users VALUES (84, 'user_1734986364573', 2);
INSERT INTO public.users VALUES (102, 'user_1734986607738', 2);
INSERT INTO public.users VALUES (134, 'user_1734989132348', 2);
INSERT INTO public.users VALUES (83, 'user_1734986364574', 5);
INSERT INTO public.users VALUES (115, 'user_1734988515540', 5);
INSERT INTO public.users VALUES (101, 'user_1734986607739', 5);
INSERT INTO public.users VALUES (86, 'user_1734986519209', 2);
INSERT INTO public.users VALUES (85, 'user_1734986519210', 5);
INSERT INTO public.users VALUES (104, 'user_1734986611841', 2);
INSERT INTO public.users VALUES (88, 'user_1734986523236', 2);
INSERT INTO public.users VALUES (133, 'user_1734989132349', 5);
INSERT INTO public.users VALUES (87, 'user_1734986523237', 5);
INSERT INTO public.users VALUES (103, 'user_1734986611842', 5);
INSERT INTO public.users VALUES (118, 'user_1734988550496', 2);
INSERT INTO public.users VALUES (90, 'user_1734986553040', 2);
INSERT INTO public.users VALUES (89, 'user_1734986553041', 5);
INSERT INTO public.users VALUES (106, 'user_1734986684045', 2);
INSERT INTO public.users VALUES (117, 'user_1734988550497', 5);
INSERT INTO public.users VALUES (92, 'user_1734986558472', 2);
INSERT INTO public.users VALUES (105, 'user_1734986684046', 5);
INSERT INTO public.users VALUES (91, 'user_1734986558473', 5);
INSERT INTO public.users VALUES (94, 'user_1734986562858', 2);
INSERT INTO public.users VALUES (93, 'user_1734986562859', 5);
INSERT INTO public.users VALUES (136, 'user_1734989190296', 2);
INSERT INTO public.users VALUES (108, 'user_1734987353592', 2);
INSERT INTO public.users VALUES (96, 'user_1734986566784', 2);
INSERT INTO public.users VALUES (107, 'user_1734987353593', 5);
INSERT INTO public.users VALUES (95, 'user_1734986566785', 5);
INSERT INTO public.users VALUES (120, 'user_1734988565243', 2);
INSERT INTO public.users VALUES (98, 'user_1734986569830', 2);
INSERT INTO public.users VALUES (135, 'user_1734989190297', 5);
INSERT INTO public.users VALUES (97, 'user_1734986569831', 5);
INSERT INTO public.users VALUES (110, 'user_1734987897691', 2);
INSERT INTO public.users VALUES (119, 'user_1734988565244', 5);
INSERT INTO public.users VALUES (109, 'user_1734987897692', 5);
INSERT INTO public.users VALUES (112, 'user_1734988024776', 2);
INSERT INTO public.users VALUES (111, 'user_1734988024777', 5);
INSERT INTO public.users VALUES (122, 'user_1734989058409', 2);
INSERT INTO public.users VALUES (114, 'user_1734988039152', 2);
INSERT INTO public.users VALUES (121, 'user_1734989058410', 5);
INSERT INTO public.users VALUES (113, 'user_1734988039153', 5);
INSERT INTO public.users VALUES (138, 'user_1734989214999', 2);
INSERT INTO public.users VALUES (124, 'user_1734989092006', 2);
INSERT INTO public.users VALUES (137, 'user_1734989215000', 5);
INSERT INTO public.users VALUES (123, 'user_1734989092007', 5);
INSERT INTO public.users VALUES (126, 'user_1734989097678', 2);
INSERT INTO public.users VALUES (140, 'user_1734989217886', 2);
INSERT INTO public.users VALUES (125, 'user_1734989097679', 5);
INSERT INTO public.users VALUES (139, 'user_1734989217887', 5);
INSERT INTO public.users VALUES (128, 'user_1734989102120', 2);
INSERT INTO public.users VALUES (127, 'user_1734989102121', 5);
INSERT INTO public.users VALUES (130, 'user_1734989108698', 2);
INSERT INTO public.users VALUES (142, 'user_1734989232349', 2);
INSERT INTO public.users VALUES (129, 'user_1734989108699', 5);
INSERT INTO public.users VALUES (141, 'user_1734989232350', 5);
INSERT INTO public.users VALUES (132, 'user_1734989114411', 2);
INSERT INTO public.users VALUES (131, 'user_1734989114412', 5);
INSERT INTO public.users VALUES (144, 'user_1734989322345', 2);
INSERT INTO public.users VALUES (143, 'user_1734989322346', 5);
INSERT INTO public.users VALUES (146, 'user_1734989361823', 2);
INSERT INTO public.users VALUES (145, 'user_1734989361824', 5);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 494, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 146, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

