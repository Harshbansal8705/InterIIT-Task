--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0 (Debian 17.0-1.pgdg120+1)
-- Dumped by pg_dump version 17.0 (Debian 17.0-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS '';


SET default_tablespace = '';

SET default_table_access_method = heap;

CREATE DATABASE warehouse;
\connect warehouse postgres

--
-- Name: Godown; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Godown" (
    id text NOT NULL,
    name text NOT NULL,
    "parentId" text
);


ALTER TABLE public."Godown" OWNER TO postgres;

--
-- Name: Item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Item" (
    id text NOT NULL,
    name text NOT NULL,
    quantity integer DEFAULT 0 NOT NULL,
    price double precision NOT NULL,
    category text NOT NULL,
    "inStock" boolean NOT NULL,
    "godownId" text NOT NULL,
    brand text NOT NULL,
    attributes jsonb,
    "imageUrl" text NOT NULL
);


ALTER TABLE public."Item" OWNER TO postgres;

--
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public._prisma_migrations OWNER TO postgres;

--
-- Data for Name: Godown; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Godown" (id, name, "parentId") FROM stdin;
d72518e97c3f4a68979153f2b8e9308e	Torres, Rowland and Peters Warehouse	\N
a6565c19ccbb4bb8a2a04130a14988db	Western Center House	d72518e97c3f4a68979153f2b8e9308e
4ce59062eadd4d4ca5e105f30a9f7256	Sector 60	a6565c19ccbb4bb8a2a04130a14988db
e06d51d013ab47d791d90f0ea097cc66	Sector 77	a6565c19ccbb4bb8a2a04130a14988db
7579aa5649484332ab86c0b52f2b3222	Western Stockpile House	d72518e97c3f4a68979153f2b8e9308e
2d129e1979bc456380d878f8c47fe66b	Sector 59	7579aa5649484332ab86c0b52f2b3222
01707d239a6b40f08d250d4530893437	Sector 11	7579aa5649484332ab86c0b52f2b3222
8887264e574149158faa17eb28cc53db	Sector 36	7579aa5649484332ab86c0b52f2b3222
c02f1afa1fc34084b0c455169d236853	Northern Center House	d72518e97c3f4a68979153f2b8e9308e
bddc0aca02ac4798b152ecbf360220c7	Sector 98	c02f1afa1fc34084b0c455169d236853
8d1805f606904aaebc2bbcee8f78ce09	Sector 75	c02f1afa1fc34084b0c455169d236853
025cc28ebb804967b56b946a41942f86	Walls, Leblanc and Williams Warehouse	\N
e984be8cf74740568d4a706500b4ed8d	Northern Center House	025cc28ebb804967b56b946a41942f86
cfb1f6e8b67c48609b427a422dc06a38	Sector 57	e984be8cf74740568d4a706500b4ed8d
f37e12cc6bbf437aba6672628f54efa5	Sector 53	e984be8cf74740568d4a706500b4ed8d
b3f0e83bb8ee4e308d759c95e2c3507d	Sector 90	e984be8cf74740568d4a706500b4ed8d
fb66049cf3d24aed8c49b1681bf175f1	Central Depot House	025cc28ebb804967b56b946a41942f86
de1dc9fc06ea485f93c794f9ba3a8c60	Sector 85	fb66049cf3d24aed8c49b1681bf175f1
df1aa790e4cc4d46bc2f110b37920fb4	Sector 71	fb66049cf3d24aed8c49b1681bf175f1
2f029fea4e2441b39e37ec01b934d4bc	Western Distribution House	025cc28ebb804967b56b946a41942f86
f39e5bfcfda445e5a548f655007f586e	Sector 67	2f029fea4e2441b39e37ec01b934d4bc
24708269c8c34b2dbde5573891abf5a5	Sector 36	2f029fea4e2441b39e37ec01b934d4bc
30056a4ef78e43f184481c570e226398	Sector 66	2f029fea4e2441b39e37ec01b934d4bc
86c058a215cb448b961af2faccd48c05	Watts and Sons Warehouse	\N
5c053bb429144393b99ee146a9ea615b	Northern Storage House	86c058a215cb448b961af2faccd48c05
252b5d97ec044dfe8fcad7c9323a3dbb	Eastern Distribution House	86c058a215cb448b961af2faccd48c05
6ee3a8b9da16409c9867290420d8c0bb	Taylor PLC Warehouse	\N
f06647c48f514d9d88527212642995dc	Central Stockpile House	6ee3a8b9da16409c9867290420d8c0bb
0ad9930d7159490597d79507114e1760	Eastern Stockpile House	6ee3a8b9da16409c9867290420d8c0bb
35b06fb8357f43d08d97da05331228ed	Jones PLC Warehouse	\N
1a9254da1a894dd6bd4a894f2029f264	Western Stockpile House	35b06fb8357f43d08d97da05331228ed
cbe2673c224642dcb5268785a24dfcfd	Northern Depot House	35b06fb8357f43d08d97da05331228ed
e7f0b3f980994405a7cdd48ad4ea9107	Sanders, Mitchell and Fields Warehouse	\N
73b5bbd7d7614e26be0b22c19f6e23ab	Central Center House	e7f0b3f980994405a7cdd48ad4ea9107
902301aa653b4eb881a436b51c792df3	Sector 36	73b5bbd7d7614e26be0b22c19f6e23ab
acbe5d616f9447e4877256ebc9befc2c	Sector 55	73b5bbd7d7614e26be0b22c19f6e23ab
907f910366a44b22a5e3c776c93d0fb3	Sector 65	73b5bbd7d7614e26be0b22c19f6e23ab
32be07fef3354f77b98d542d1bc635d5	Southern Storage House	e7f0b3f980994405a7cdd48ad4ea9107
9e41d8d0b96c4b2dab59a505a889824c	Sector 1	32be07fef3354f77b98d542d1bc635d5
23ee8cdaacfb4e0db986dc7938cfe5cc	Sector 72	32be07fef3354f77b98d542d1bc635d5
9752ed3062ee4f84bf41844d9e4e1548	Sector 98	32be07fef3354f77b98d542d1bc635d5
a3c22992cbb446688e2e9e71ad171dcc	Caldwell-Thomas Warehouse	\N
3312d3542b454e749b173b28bf27f02a	Northern Center House	a3c22992cbb446688e2e9e71ad171dcc
f26b70d0b0ee4c249f9f675105ebb9b4	Sector 90	3312d3542b454e749b173b28bf27f02a
a47001c345f043278465a6be6fcaaf4c	Zone 71	f26b70d0b0ee4c249f9f675105ebb9b4
fcdc230f9f43400387b4e892c6a789b3	Zone 71	f26b70d0b0ee4c249f9f675105ebb9b4
b578a2be2f9f4418bf8b1acd89a915da	Sector 43	3312d3542b454e749b173b28bf27f02a
81c7d673ef4e46a68358efd982bc3c86	Zone 31	b578a2be2f9f4418bf8b1acd89a915da
690059f3d2d4441a98638d4557dd9ab6	Zone 29	b578a2be2f9f4418bf8b1acd89a915da
a0cd3c749fa04bc09933c804bc12fdfd	Zone 5	b578a2be2f9f4418bf8b1acd89a915da
e498eb4302bd4f55970fde67b5d7c275	Northern Storage House	a3c22992cbb446688e2e9e71ad171dcc
05871c8ec88642e581d5615f067347ef	Sector 50	e498eb4302bd4f55970fde67b5d7c275
8e39943c765c41d2bde19f5dabb49c96	Zone 76	05871c8ec88642e581d5615f067347ef
a005447265414455a504674905627e86	Zone 73	05871c8ec88642e581d5615f067347ef
ce967fca5780421184760edde5ac7a6d	Zone 50	05871c8ec88642e581d5615f067347ef
47ca2a2be637433782df0d83b69fb561	Sector 94	e498eb4302bd4f55970fde67b5d7c275
6cc61011ecdd48cf8cd002c13087006c	Zone 82	47ca2a2be637433782df0d83b69fb561
f0afd04fe56544309b12334be3221a23	Zone 79	47ca2a2be637433782df0d83b69fb561
58bdc21f6d094d80964410d8fc8979c2	Zone 9	47ca2a2be637433782df0d83b69fb561
93f1b7ca9b2946fdbff2d814a4cad501	Central Storage House	a3c22992cbb446688e2e9e71ad171dcc
84d7ac2bab5d4f0c83bd00ca44400d0c	Sector 9	93f1b7ca9b2946fdbff2d814a4cad501
d37798211dd04f6eb2879f9e64c41bd7	Zone 51	84d7ac2bab5d4f0c83bd00ca44400d0c
f671c4c05efc4fcd93d9ad6723f1205b	Zone 96	84d7ac2bab5d4f0c83bd00ca44400d0c
b27350c72c48461496a0f7b6d0f21d18	Zone 71	84d7ac2bab5d4f0c83bd00ca44400d0c
8140eaa4916743d6bed4cbb22d44da53	Sector 93	93f1b7ca9b2946fdbff2d814a4cad501
cab82bed2ceb4339b3b2b7c48ffcf4ed	Zone 47	8140eaa4916743d6bed4cbb22d44da53
91fad1d8e2cd40adacd932dc6610dc45	Zone 41	8140eaa4916743d6bed4cbb22d44da53
0b753b1bba354f6084a717e1f5970a51	Zone 7	8140eaa4916743d6bed4cbb22d44da53
1645d63c4dbb4e77b5d699fac39498a0	Sector 34	93f1b7ca9b2946fdbff2d814a4cad501
c148f2bff8e3473b99e07d0bb1c0b91a	Zone 7	1645d63c4dbb4e77b5d699fac39498a0
e9c3a552493e4c0995937029b4fe1ce7	Zone 21	1645d63c4dbb4e77b5d699fac39498a0
a34756e01e944efbb779574ee5dd7586	Zone 14	1645d63c4dbb4e77b5d699fac39498a0
20a653b68fd34523a80ed3d3314d35ed	Sanchez and Sons Warehouse	\N
86d333fd5b75419aa1879e8e5e2cf931	Eastern Distribution House	20a653b68fd34523a80ed3d3314d35ed
7a6add821b0d47ed9631765f6d619b74	Southern Center House	20a653b68fd34523a80ed3d3314d35ed
9b4b09c0870340e2848a73d23bbe0e66	Eastern Storage House	20a653b68fd34523a80ed3d3314d35ed
c532106b862a4e9f9c8e47b4a83031ae	Foster Inc Warehouse	\N
18898f510ab147f4b58d5ca8e1ca67fd	Central Depot House	c532106b862a4e9f9c8e47b4a83031ae
b0af8f593a754dad8887886067b5574f	Sector 35	18898f510ab147f4b58d5ca8e1ca67fd
06dde5d120d64b8b9987bfba130248f4	Sector 51	18898f510ab147f4b58d5ca8e1ca67fd
41d346e742d34430bc48487d87b0065e	Sector 65	18898f510ab147f4b58d5ca8e1ca67fd
438a31fabfb64bc0b81dc6e6fd720df8	Eastern Storage House	c532106b862a4e9f9c8e47b4a83031ae
2f87d79a535b44bc9eb94ed8f6e4b4e7	Sector 46	438a31fabfb64bc0b81dc6e6fd720df8
15592687e3e542ec8461ebb3f5adce72	Sector 28	438a31fabfb64bc0b81dc6e6fd720df8
053f7952bd374ff09704fccd11ca3949	Sector 99	438a31fabfb64bc0b81dc6e6fd720df8
cf46ac14da30428694619096ce991a2b	Davis-Stewart Warehouse	\N
50e36e83546f4530b6c8c6819ff2bf87	Northern Storage House	cf46ac14da30428694619096ce991a2b
457f8d1571e6465f85dd3ade042f8722	Sector 39	50e36e83546f4530b6c8c6819ff2bf87
1ce4d6ce325345e9bea49a53c92e3fa6	Zone 71	457f8d1571e6465f85dd3ade042f8722
8b6bf4c85239494ab6dc54c59811fe62	Zone 40	457f8d1571e6465f85dd3ade042f8722
5926e0a3711a49c991c4ac5b532c76ef	Zone 77	457f8d1571e6465f85dd3ade042f8722
68c3e94502ef43bc95714738e42d3aff	Sector 17	50e36e83546f4530b6c8c6819ff2bf87
c4862f97ac614f36b84a3111cbf6a967	Zone 87	68c3e94502ef43bc95714738e42d3aff
03d602ed57bb42469c8edf97d1cfd4dd	Zone 97	68c3e94502ef43bc95714738e42d3aff
9d1e1669da81441e9e2ac5b24b5c18b2	Zone 19	68c3e94502ef43bc95714738e42d3aff
798249531b8b47d2b713454413cf3853	Central Storage House	cf46ac14da30428694619096ce991a2b
99454ac5070744b28c086e559cd052c2	Sector 8	798249531b8b47d2b713454413cf3853
ca31f00a75dc454b9a7512554eafef50	Zone 49	99454ac5070744b28c086e559cd052c2
c5cf3b329d3347c68c6c26fbb04fce84	Zone 43	99454ac5070744b28c086e559cd052c2
2d1323530fbb421896645f498ea809e2	Zone 91	99454ac5070744b28c086e559cd052c2
ced73ead27eb46f0affe3d744e3d3012	Sector 30	798249531b8b47d2b713454413cf3853
1309a3b4ab1d493ba034e78ba9a50979	Zone 61	ced73ead27eb46f0affe3d744e3d3012
9d88ea2f40b0446e9ec0bafaa1ec7aa5	Zone 49	ced73ead27eb46f0affe3d744e3d3012
2515ec535a814ec086a0286a2009b2a0	Zone 59	ced73ead27eb46f0affe3d744e3d3012
\.


--
-- Data for Name: Item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Item" (id, name, quantity, price, category, "inStock", "godownId", brand, attributes, "imageUrl") FROM stdin;
e02d6a496a054edc96cfd197943cdd07	Black & Decker Saw Series C	31	351.15	Tools	f	4ce59062eadd4d4ca5e105f30a9f7256	Black & Decker	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/S/aplus-media-library-service-media/01206301-d7e5-481c-8211-dbede72bde9a.__CR0,0,970,600_PT0_SX970_V1___.jpg
24b9565beefc4b04a51c8e7990e53b23	Drill by Bosch	997	454.88	Tools	t	4ce59062eadd4d4ca5e105f30a9f7256	Bosch	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://images-cdn.ubuy.co.in/633a9c4e409c54628f570de5-bosch-hd18-2-two-speed-hammer-drill-1-2.jpg
1026d447463a4f23826598d82db146bc	Drill by Black & Decker	275	460.14	Tools	t	4ce59062eadd4d4ca5e105f30a9f7256	Black & Decker	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://atozshop.co.in/wp-content/uploads/2023/08/71ZCAu0w41L._SY550_.jpg
1039158c7d5c4c48bad1875e66e825e1	DeWalt Screwdriver Special Edition	19	261.22	Tools	t	4ce59062eadd4d4ca5e105f30a9f7256	DeWalt	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/812VFxLxxvL._AC_UF894,1000_QL80_.jpg
439bb23113e94a328211b4ae44238d33	Hammer by Bosch	979	295.68	Tools	t	4ce59062eadd4d4ca5e105f30a9f7256	Bosch	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://www.bosch-professional.com/gb/en/ocsmedia/299270-54/application-image/1434x828/rotary-hammer-with-sds-plus-gbh-2-20-d-061125a460.png
509079a0428d4a908629022872b3d645	Black & Decker Saw 43	981	395.06	Tools	t	4ce59062eadd4d4ca5e105f30a9f7256	Black & Decker	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://i.ytimg.com/vi/3r_nvibyy90/maxresdefault.jpg
8311c320e12347b4afacd70c899fb2fb	Adidas Dress Gainsboro	115	347.68	Clothing	t	e06d51d013ab47d791d90f0ea097cc66	Adidas	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://assets.ajio.com/medias/sys_master/root/20240514/DG8W/66435ba705ac7d77bb59bf2a/-473Wx593H-469597125-purple-MODEL.jpg
a5eaa7baf03a46009eed1ec97701105e	Zara Dress Pro	310	154.41	Clothing	t	e06d51d013ab47d791d90f0ea097cc66	Zara	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://i.pinimg.com/736x/19/87/9c/19879cf2648b9e7d6885ec7151e6477b.jpg
d6d73b3359de4af89a8678969c2058b1	Adidas T-Shirt Special Edition	171	57.32	Clothing	f	e06d51d013ab47d791d90f0ea097cc66	Adidas	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/29b19794fa92419dbc6caf3b008ddf11_9366/Adicolor_Classics_3-Stripes_Tee_Black_IA4845_21_model.jpg
c88ab94e975b42d2b5739200b7d3e38f	Levi's Jeans Series B	956	457	Clothing	f	e06d51d013ab47d791d90f0ea097cc66	Levi's	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://limalimavintage.co.uk/wp-content/uploads/2021/02/IMG_3825-scaled-1280x1280.jpg
d6216a84ddc14ccd928a8660e3bcad63	Adidas T-Shirt 87	976	63.98	Clothing	t	e06d51d013ab47d791d90f0ea097cc66	Adidas	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://assets.myntassets.com/h_1440,q_100,w_1080/v1/assets/images/23718420/2023/9/14/87bc2e0a-8a04-4e31-8389-2485b292188d1694672814525-ADIDAS-Originals-Men-Tshirts-6651694672814019-1.jpg
9163914d1f1f46a5a5b6cc7f7c22a045	Jeans by H&M	510	302.4	Clothing	f	e06d51d013ab47d791d90f0ea097cc66	H&M	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://cdn.mos.cms.futurecdn.net/whowhatwear/posts/298188/best-hm-jeans-298188-1645898880775-square.jpg
997e312f9d43414c91633ac779d4c3d3	Levi's T-Shirt Pro	916	48.87	Clothing	t	e06d51d013ab47d791d90f0ea097cc66	Levi's	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://cdna.lystit.com/200/250/tr/photos/macys/33e6b8c4/levis-Amplify-It-Levis-Low-Pro-Straight-Leg-Jeans-Plaid-Cotton-Button-Down-Tunic-Shirt-Solid-Perfect-T-Shirt.jpeg
caeefbfbb9a54b1a85ffdcac852a2c23	Hasbro Action Figure 5	263	65.84	Toys	t	2d129e1979bc456380d878f8c47fe66b	Hasbro	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://www.skoodleplay.com/media/catalog/product/cache/3c9bfbac5e0bed0f7a2854cf5d920c0d/f/1/f13945l00_5010993777419_pkg_20_1.jpg
a4cb6758cd6e4adc875dd20cde7283a8	Hasbro Action Figure Green	634	301.14	Toys	f	2d129e1979bc456380d878f8c47fe66b	Hasbro	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://images-cdn.ubuy.co.in/6637fbfa0146c13dac7e7dac-hasbro-marvel-legends-6-inch-green.jpg
063caa16109542619fda36586c585421	LEGO Puzzle Pro	173	321.09	Toys	t	2d129e1979bc456380d878f8c47fe66b	LEGO	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://i.ytimg.com/vi/PxzogT2B5Ac/maxresdefault.jpg
d26ed38596974bbaa9c5c19a0499d4f3	Doll by Playmobil	529	421.67	Toys	f	2d129e1979bc456380d878f8c47fe66b	Playmobil	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://images-cdn.ubuy.co.in/6353fcb94766fa2d0454fd82-playmobil-take-along-dollhouse.jpg
de2ee621a25148c19a2c859e786a6a38	Hasbro Puzzle Special Edition	571	178.25	Toys	t	2d129e1979bc456380d878f8c47fe66b	Hasbro	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://thepopinsider.com/wp-content/uploads/sites/6/2021/12/HasbroxChampion_Twister.jpg
e723b6828bfa460fa33083c868bfbec4	Hasbro Action Figure Special Edition	162	15.03	Toys	t	2d129e1979bc456380d878f8c47fe66b	Hasbro	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://images-cdn.ubuy.co.in/6368e3cb6728ad1f911f9ce6-star-wars-cave-of-evil-special-action.jpg
05f0e0e8b71e4abca28385f9788d9127	LEGO Puzzle 35	597	246.11	Toys	f	01707d239a6b40f08d250d4530893437	LEGO	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://www.lego.com/cdn/cs/set/assets/blt2f44f1e2b7b71bc6/11035_boxprod_v39.png
161505eebce4497f96c37e3c1b3cdabd	Fisher-Price Board Game Pro	652	378.76	Toys	t	01707d239a6b40f08d250d4530893437	Fisher-Price	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/91dUa96cWIL._AC_UF350,350_QL80_.jpg
77c6ec86801e4076a96651a0c734e3ae	Puzzle by Mattel	448	454.61	Toys	f	01707d239a6b40f08d250d4530893437	Mattel	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/A10KqfgHb9L.jpg
d2a94b1d591e44dd8d435e91f015c947	Playmobil Action Figure Special Edition	726	86.42	Toys	f	01707d239a6b40f08d250d4530893437	Playmobil	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://www.popcultcha.com.au/media/catalog/product/cache/207e23213cf636ccdef205098cf3c8a3/p/l/plmb70172-ghostbusters-peter-venkman-35-year-anniversary-limited-edition-6_-playmobil-action-figure-_70172_-02.jpg
003570b552ad47ce8d9c74b8edc3fb76	LEGO Action Figure Series D	943	309.12	Toys	t	01707d239a6b40f08d250d4530893437	LEGO	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/818dRN8HTXL._AC_UF350,350_QL80_.jpg
2a0795ae60634b7dad4696a772337dff	Playmobil Board Game 76	630	168.69	Toys	f	01707d239a6b40f08d250d4530893437	Playmobil	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://i.ebayimg.com/images/g/Zg4AAOSw51xl-Lsw/s-l1200.png
e39a4d5c49284b37a31707f9a49feae5	Makita Screwdriver 68	237	452.12	Tools	f	8887264e574149158faa17eb28cc53db	Makita	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://cdn.shakedeal.com/images/detailed/358/SDMKT0004400.jpg
b7c8799456e94330baf94d0a8d33f7b1	Makita Drill 75	440	425.33	Tools	f	8887264e574149158faa17eb28cc53db	Makita	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://images-cdn.ubuy.co.in/6504492997e45900a763dd9f-makita-dmp180zx-18v-lxt-lithium-ion.jpg
feb1735e9e1c449e9d2c178b7ddacd60	Stanley Drill Series C	202	200.98	Tools	f	8887264e574149158faa17eb28cc53db	Stanley	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/71lyeGq7PgL._AC_UF1000,1000_QL80_.jpg
fad558ccac584c3caccbb91c59871bbc	Black & Decker Screwdriver Pro	733	191.19	Tools	f	8887264e574149158faa17eb28cc53db	Black & Decker	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/418lEcDjgbL._AC_SS250_.jpg
a2ad60616bdf45ea97bb09a4b2f0a5e7	Black & Decker Screwdriver Special Edition	594	426.04	Tools	t	8887264e574149158faa17eb28cc53db	Black & Decker	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/71drGYDMYqL._AC_UF350,350_QL80_.jpg
10646067467448f7804c09ba58728ad6	DeWalt Hammer Special Edition	554	321.25	Tools	t	8887264e574149158faa17eb28cc53db	DeWalt	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://www.dm-tools.co.uk/extraimages/Ecomm_Large-DCD100P2T_A1.jpg
ddf5eaabf4d845f4a27a4e7fef5f7505	Black & Decker Saw DarkOrchid	767	322.3	Tools	t	8887264e574149158faa17eb28cc53db	Black & Decker	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://cdn.shakedeal.com/images/detailed/328/71I2uOI12IL._SL1500_.jpg
d0012de7ab1d4033bba6d68237668d51	Ikea Cabinet Pro	345	161.55	Furniture	f	bddc0aca02ac4798b152ecbf360220c7	Ikea	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://www.ikea.com/in/en/images/products/runmaroe-cabinet-with-doors-dark-grey-indoor-outdoor__1180738_pe896446_s5.jpg
03789f0d2593427c896a7213cbe25b72	La-Z-Boy Sofa 34	96	452.2	Furniture	f	bddc0aca02ac4798b152ecbf360220c7	La-Z-Boy	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://content.la-z-boy.com/Images/product/categoryalt/large/U44757.png
290807416f5544b2815c330405d0bb78	Ikea Chair Pro	569	432.3	Furniture	t	bddc0aca02ac4798b152ecbf360220c7	Ikea	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://www.ikea.com/in/en/images/products/markus-office-chair-vissle-light-grey__1101440_pe866425_s5.jpg
1389440fca55460284ab516b257b732c	Ashley Table Pro	995	8.34	Furniture	f	bddc0aca02ac4798b152ecbf360220c7	Ashley	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://www.cplights.com/news/wp-content/uploads/2023/04/laura-ashley-garrat-dark-chestnut-4-drawer-console-table-p19669-55047_medium1.jpg
3dbd3611405b4c0ab6920a5fed0c2f12	Haverty's Sofa Series D	661	208.15	Furniture	t	bddc0aca02ac4798b152ecbf360220c7	Haverty's	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://i.pinimg.com/474x/c4/6c/6c/c46c6caeb9600626d3af62a44fd8865e.jpg
acfcbb6fbe9e47cbad0ab4edf4d157d0	Haverty's Table SlateGray	562	87.96	Furniture	t	bddc0aca02ac4798b152ecbf360220c7	Haverty's	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://grandview-mercantile.storage.googleapis.com/wp-content/uploads/2023/10/04140033/ZGYB_102-7.jpg
95997dba66ee448a8d0f1d95a809a027	Chair by La-Z-Boy	254	251.46	Furniture	f	bddc0aca02ac4798b152ecbf360220c7	La-Z-Boy	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://m.media-amazon.com/images/I/71nFHgtAR0L._AC_UF894,1000_QL80_.jpg
578b2273baab4f8e89c3571b3e3d918b	Fisher-Price Action Figure FireBrick	276	192.46	Toys	t	8d1805f606904aaebc2bbcee8f78ce09	Fisher-Price	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/71a4EbI8OrL._AC_UF1000,1000_QL80_.jpg
547f7be22a034517b61080be052a5cd8	Playmobil Action Figure Special Edition	428	287.9	Toys	f	8d1805f606904aaebc2bbcee8f78ce09	Playmobil	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/81WMM4yWyPL._AC_UF894,1000_QL80_.jpg
62b81cf47ddc42bba36547edc93aa8eb	Hasbro Doll Pro	446	127.98	Toys	f	8d1805f606904aaebc2bbcee8f78ce09	Hasbro	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://thumbs.dreamstime.com/b/hasbro-doll-have-versions-queen-amaidara-154057557.jpg
44e2a65dc1bc4f94b538994dc8d59228	LEGO Doll Pro	537	201.54	Toys	t	8d1805f606904aaebc2bbcee8f78ce09	LEGO	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://i.ebayimg.com/images/g/TY4AAOSw43llG8HR/s-l1200.png
1337076daaf34845b5b2ad96490524a7	Mattel Action Figure Pro	119	268.42	Toys	t	8d1805f606904aaebc2bbcee8f78ce09	Mattel	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://i.ebayimg.com/images/g/we8AAOSwvEZgHcv6/s-l1200.jpg
9216c250fc474a889a1dc03176f0fae9	Puzzle by Hasbro	14	445.83	Toys	f	8d1805f606904aaebc2bbcee8f78ce09	Hasbro	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://assets.ajio.com/medias/sys_master/root/20240403/mcrJ/660d7e1905ac7d77bbf432c9/-1117Wx1400H-4936644100-multi-MODEL5.jpg
666e693852e546a2b42ed7b0afdd313b	Hasbro Puzzle Pro	913	86.71	Toys	t	8d1805f606904aaebc2bbcee8f78ce09	Hasbro	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/61t6Myhfl6L._AC_UF350,350_QL80_.jpg
df484d35dced472abf94f85b6c3e2d30	Hasbro Board Game Series A	595	304.65	Toys	t	8d1805f606904aaebc2bbcee8f78ce09	Hasbro	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/81eZZv-d1HL._AC_UF1000,1000_QL80_.jpg
b8e76b265b8248f9ac54d51182ee1a62	Mattel Action Figure Pro	374	126.67	Toys	f	8d1805f606904aaebc2bbcee8f78ce09	Mattel	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/71wFNyTUc+L.jpg
74c1e90c842b4bd6a25e4a78d479144d	Mattel Doll Pro	284	119.8	Toys	f	8d1805f606904aaebc2bbcee8f78ce09	Mattel	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://media.self.com/photos/597120cd8fa2be1f430743d7/4:3/w_2560%2Cc_limit/wwe%2520barbie.jpeg
0478095bdf034dd390aa8172aa515207	H&M T-Shirt 42	570	354.31	Clothing	f	cfb1f6e8b67c48609b427a422dc06a38	H&M	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://i.pinimg.com/736x/c1/3c/55/c13c55011a2c3ae95c7b7a1abd45d66e.jpg
fdd78432c0684f39af9795effc83c430	Nike Jeans Pro	614	461.58	Clothing	f	cfb1f6e8b67c48609b427a422dc06a38	Nike	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://assets.myntassets.com/h_1440,q_100,w_1080/v1/assets/images/29934567/2024/6/10/4f54b6ff-5a84-46c8-afc3-6e8bfe6c58f31718030171072NikeProMensFleeceFitnessPants1.jpg
bd2a0e7c3b91432688139b475b3d4cc0	Adidas T-Shirt Series B	672	228.62	Clothing	t	cfb1f6e8b67c48609b427a422dc06a38	Adidas	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://www.cosmossport.gr/2196704/adidas-b-lin-t.jpg
97d54105266846a8973a26a75be49a51	Jeans by H&M	231	221.45	Clothing	f	cfb1f6e8b67c48609b427a422dc06a38	H&M	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://cdn.mos.cms.futurecdn.net/whowhatwear/posts/298188/best-hm-jeans-298188-1645898880775-square.jpg
8c9d3c2e9af643d9becee46758b9ae4c	Zara Jeans Series D	948	154.85	Clothing	f	cfb1f6e8b67c48609b427a422dc06a38	Zara	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://images.jdmagicbox.com/quickquotes/images_main/zara-jeans-1273-239536786-pfiun.jpg
3c8545d4aedf443d965fe0dd19e91449	Zara Jeans Pro	7	365.34	Clothing	t	cfb1f6e8b67c48609b427a422dc06a38	Zara	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://stylecaster.com/wp-content/uploads/2021/06/zara-jeans.jpg
3e1d78cb04164afabdd253e683881e81	Nike Dress PaleGoldenRod	793	367.09	Clothing	t	cfb1f6e8b67c48609b427a422dc06a38	Nike	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://www.mistertennis.com/media/products/2023-media-06/dx5420-113_A-600x600.jpg
1ccebccaafef412eb0286a65c345e8ef	Jeans by Zara	99	394.09	Clothing	f	cfb1f6e8b67c48609b427a422dc06a38	Zara	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://i.pinimg.com/736x/52/20/aa/5220aa1a325407044818d97aa4c60e8c.jpg
efe5556f703e4cbeb0744b8c61e82609	Zara T-Shirt Pro	164	70.82	Clothing	f	cfb1f6e8b67c48609b427a422dc06a38	Zara	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://images-na.ssl-images-amazon.com/images/I/41HQFsQa%2BaL.jpg
8cdbbc8eeda9470999015aee89b5a6bc	HP Laptop 68	398	77.76	Electronics	t	f37e12cc6bbf437aba6672628f54efa5	HP	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://in-media.apjonlinecdn.com/catalog/product/cache/b3b166914d87ce343d4dc5ec5117b502/c/0/c08182657_1.png
11cd88f2de28423cb575e876ac95b38c	HP Smartphone Pro	533	249.54	Electronics	t	f37e12cc6bbf437aba6672628f54efa5	HP	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://www.devicespecifications.com/images/model/37bd4597/320/main.jpg
cd2f006fb22041cca3c2eccc4006620d	Sony Tablet Special Edition	504	385.12	Electronics	f	f37e12cc6bbf437aba6672628f54efa5	Sony	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://fs.npstatic.com/userfiles/7021684/image/sony-xperia-z4-tablet_3-w1400h1050.jpg
f1f611ec4669403cbb3d8ab1715b3dc5	Apple Smartphone 28	764	158.83	Electronics	t	f37e12cc6bbf437aba6672628f54efa5	Apple	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://etvbharatimages.akamaized.net/etvbharat/prod-images/07-10-2024/448-252-22627190-thumbnail-16x9-appleintelligence.jpg
e0f2825d3ab640e08567a6d2c8b8bf4b	Samsung Camera SlateGray	521	158.09	Electronics	f	f37e12cc6bbf437aba6672628f54efa5	Samsung	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://images.jdmagicbox.com/quickquotes/images_main/samsung-galaxy-camera-with-android-jelly-bean-v4-1-2-os-16-3mp-cmos-with-21x-optical-zoom-and-4-8-touch-screen-lcd-wifi-white-old-model-145598110-vsyfr.jpg
0ca182c4cdaf40c683bf6e9e58eeb043	HP Tablet Pro	429	286.69	Electronics	t	f37e12cc6bbf437aba6672628f54efa5	HP	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://m.media-amazon.com/images/I/81+sC1rtZkL.jpg
663a9d18f1894f6e874f7cedd135e248	Samsung Smartphone 62	111	102.4	Electronics	t	f37e12cc6bbf437aba6672628f54efa5	Samsung	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://fdn2.gsmarena.com/vv/bigpic/samsung-galaxy-f62.jpg
0450589f8135425d98d12eaef1a734c7	Apple Laptop PowderBlue	373	161.59	Electronics	f	f37e12cc6bbf437aba6672628f54efa5	Apple	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://teja8.kuikr.com/i4/20240924/MacbookPro-M1-PRO-14-16gb-RAM-512gb-SSD---Apple-care-warranty-till-Aug-2025---Bill-box-charger-available-VB201705171774173-ak_LWBP1776458589-1727183158.jpeg
14fe18695ab44c579432945f8ec57ba6	HP Laptop Pro	163	398.12	Electronics	t	f37e12cc6bbf437aba6672628f54efa5	HP	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://www.hp.com/content/dam/sites/worldwide/personal-computers/commercial/laptops/business/probook-new/HP-Pro-x360-435-G10-v3@2x.jpg
faf35360a321493994e0e3ed78b9cf06	Makita Hammer DarkSeaGreen	548	395.75	Tools	f	b3f0e83bb8ee4e308d759c95e2c3507d	Makita	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://cdn.makitatools.com/apps/cms/img/grh/b6eb64b8-ce13-4876-9fc4-803fa14e3fb7_grh06pm_k_1500px.png
9b7b6b4a543c4bb090de37870a49d70b	Black & Decker Screwdriver Series B	339	448.43	Tools	t	b3f0e83bb8ee4e308d759c95e2c3507d	Black & Decker	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/41-T3GBGYUL.jpg
0d1f11afeaf249478ce9e9af7fd9deb6	Makita Saw Pro	146	101.03	Tools	t	b3f0e83bb8ee4e308d759c95e2c3507d	Makita	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://toptools.in/media/catalog/product/cache/1/thumbnail/600x600/9df78eab33525d08d6e5fb8d27136e95/j/d/jd.jpg
d7c3bee6fe29404e920476b6e25ed501	DeWalt Screwdriver Pro	907	322.5	Tools	t	b3f0e83bb8ee4e308d759c95e2c3507d	DeWalt	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://cdn.shakedeal.com/images/detailed/320/SDDWT0007700.jpg
b93a8fa8aaa64afc871d571a750ed27e	Stanley Hammer 69	534	52.44	Tools	t	b3f0e83bb8ee4e308d759c95e2c3507d	Stanley	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/41ROO-joQ9L._AC_UF1000,1000_QL80_.jpg
b30dca741799416f8a333a3e9ff14c5b	Haverty's Chair 81	592	61.35	Furniture	f	de1dc9fc06ea485f93c794f9ba3a8c60	Haverty's	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://res.cloudinary.com/dkqtxtobb/image/upload/f_auto,q_auto:best,w_1000/product-assets/479080/havertys/chairs/dining-chairs/havertys-owen-dining-chairs-used.jpeg
8b0d8f98973b442491a6ec9700c060a8	Haverty's Table SandyBrown	577	384.21	Furniture	f	de1dc9fc06ea485f93c794f9ba3a8c60	Haverty's	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://images.furnituredealer.net/img/collections%2Flexington_home_brands%2Ftommy%20bahama%20home%20ocean%20club_536-dcp-b2.jpg
54876b5424ab4fa8ab2ae8e29e4c2c45	Saw by Makita	879	114.55	Tools	f	0ad9930d7159490597d79507114e1760	Makita	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://makita.in/wp-content/uploads/2023/01/DUC101_act_2.jpg
cba0ee5c8d7c474ab40c9ee5d79854b9	La-Z-Boy Cabinet Series B	37	211.7	Furniture	t	de1dc9fc06ea485f93c794f9ba3a8c60	La-Z-Boy	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://www.la-z-boyindia.com/media/cache/resolve/img_300x300/uploads/userfiles/images/product/Pinnacle%252C%252010T-512%252C%2520Reclina-Rocker%252C%2520_WINE.jpg
39b067cad41f4f5a83e6df38f9c34b13	Haverty's Cabinet 65	469	94.06	Furniture	f	de1dc9fc06ea485f93c794f9ba3a8c60	Haverty's	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://i.pinimg.com/564x/1c/be/65/1cbe6591a6eded8ed7cc06423ffc81a7.jpg
af4475bde8fd453694b9454b6cd25e59	La-Z-Boy Cabinet Series D	659	127.15	Furniture	t	de1dc9fc06ea485f93c794f9ba3a8c60	La-Z-Boy	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://content.la-z-boy.com/Images/home/2023-12-05/desktop/nld-post.png
2832fde2d0674a168ca314403daf5d64	Haverty's Table Series B	92	260.68	Furniture	f	de1dc9fc06ea485f93c794f9ba3a8c60	Haverty's	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://res.cloudinary.com/dkqtxtobb/image/upload/f_auto,q_auto:best,w_1000/product-assets/191273/havertys/tables/dinner-tables/havertys-oval-extendable-dining-table.jpeg
344c1663b52f4e8da71dc0011abd1483	Board Game by Hasbro	759	425.46	Toys	t	df1aa790e4cc4d46bc2f110b37920fb4	Hasbro	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://images-eu.ssl-images-amazon.com/images/I/71R4FjutOGL._AC_UL210_SR210,210_.jpg
953066b8259b40a4b31bc86f47a349ec	Mattel Board Game Series B	532	466.02	Toys	t	df1aa790e4cc4d46bc2f110b37920fb4	Mattel	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/71qgyCDq+dL.jpg
9cd639026b8a47bb813292bfc6c238ba	Mattel Puzzle Special Edition	862	159.99	Toys	t	df1aa790e4cc4d46bc2f110b37920fb4	Mattel	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://en.barbiepedia.com/img/barbie/800/20164_0.jpg
facda92d283049059ff999da023e1e9f	LEGO Puzzle 79	937	293.48	Toys	t	df1aa790e4cc4d46bc2f110b37920fb4	LEGO	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://www.collectible.no/wp-content/uploads/2021/06/LEGO-Minifigure-Faces-Puzzle.jpg
52b0761aa849426bbc8364dea1849bc6	Mattel Doll PaleTurquoise	641	224.9	Toys	t	df1aa790e4cc4d46bc2f110b37920fb4	Mattel	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/81Nll3-TV+L._AC_UF350,350_QL80_.jpg
30fe3594927247f39c8dbfb4835cf171	H&M Shoes Special Edition	233	470.64	Clothing	f	f39e5bfcfda445e5a548f655007f586e	H&M	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://www.highsnobiety.com/static-assets/dato/1682635176-hm-good-news-release-date-price-13.jpg
4655443751d74bea8e33587dbe9c8c1a	Jeans by Adidas	334	297.87	Clothing	f	f39e5bfcfda445e5a548f655007f586e	Adidas	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/808a08690f824dd8b2a77579ddb98900_9366/adidas_Originals_x_KSENIASCHNAIDER_3-Stripes_Jeans_Black_IJ8338_21_model.jpg
50f1fef8b237470e9f93536c58263efc	Nike Dress 89	867	267.36	Clothing	t	f39e5bfcfda445e5a548f655007f586e	Nike	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://i.pinimg.com/736x/32/bb/b0/32bbb01429209986098bf575b684f84d.jpg
b3d80d97c4464422a09db356a669f5ef	Levi's Dress PaleTurquoise	171	495.76	Clothing	f	f39e5bfcfda445e5a548f655007f586e	Levi's	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://images.jdmagicbox.com/quickquotes/images_main/levis-dresses-27-08-2021-387-240320998-vex37.jpg
037187e3d1d347539fba4b4b243a3366	T-Shirt by Levi's	959	413.45	Clothing	t	f39e5bfcfda445e5a548f655007f586e	Levi's	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://www.cosmossport.gr/607409-product_large/levis-perfect-tee-mineral.jpg
de6a0e36fc5446ab89538ebdf9e679d3	Adidas Shoes 27	803	303	Clothing	t	f39e5bfcfda445e5a548f655007f586e	Adidas	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://kxadmin.metroshoes.com/product/27-3028-17-10/1200/27-3028M17.jpg
11eb88ed5b8b4d798efd56d272c24a23	Adidas Jeans Series D	901	172.88	Clothing	f	24708269c8c34b2dbde5573891abf5a5	Adidas	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://www.shooos.com/media/catalog/product/cache/2/image/1350x778/9df78eab33525d08d6e5fb8d27136e95/a/d/adidas-jeans-city-series-bern-bb5275-7.jpg
07a68be77e344ae49bb1989bd334651c	Zara T-Shirt Pro	614	114.52	Clothing	t	24708269c8c34b2dbde5573891abf5a5	Zara	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://m.media-amazon.com/images/I/61kysT2TAEL.jpg
8f8e128ee2ec4abebe4147918bf3003d	Levi's T-Shirt Special Edition	363	498.62	Clothing	f	24708269c8c34b2dbde5573891abf5a5	Levi's	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://m.media-amazon.com/images/I/51uPcJEjsYL._AC_UY1100_.jpg
8fa1bc6fbcad4f14867d90dc6af8f51c	Adidas Shoes Pro	970	166.68	Clothing	f	24708269c8c34b2dbde5573891abf5a5	Adidas	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://assets.adidas.com/images/w_600,f_auto,q_auto/59a55ff784cb44d984d9d74547239ec4_9366/90S_CUT_PRO_SHOES_Blue_IU5084_01_standard.jpg
c4167f89accb4d9c96d289ba6b027cfb	Nike Jeans Series D	936	466.69	Clothing	t	24708269c8c34b2dbde5573891abf5a5	Nike	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/4a097f8b-2f37-4371-a157-130f49c508f4/ASMNK+CLUB+WVN+UL+UTILITY+PANT.png
1cc0cb9305c54d5a8bbf4a24cb08446c	Zara T-Shirt DarkOrange	707	380.4	Clothing	t	24708269c8c34b2dbde5573891abf5a5	Zara	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://i.pinimg.com/736x/63/09/84/63098459c0cee6af3702da6ed0000071.jpg
2249cdeb69fa454bae0ea069bd5f35c5	Dress by Levi's	468	322.32	Clothing	t	24708269c8c34b2dbde5573891abf5a5	Levi's	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://assets.myntassets.com/w_412,q_60,dpr_2,fl_progressive/assets/images/23687104/2023/9/27/89d0f64e-a6a1-4179-bd8e-47ea2caebf8d1695810113616-Levis-Women-Dresses-9441695810113182-1.jpg
0495d46b43b84b1497d63b0fb2bb262e	H&M Shoes Special Edition	462	210.06	Clothing	t	24708269c8c34b2dbde5573891abf5a5	H&M	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://dappered.com/wp-content/uploads/2017/04/price-discrepency.jpg
ffa8b6c0dba54084a94366293971ecb8	Adidas T-Shirt 82	614	278.1	Clothing	f	24708269c8c34b2dbde5573891abf5a5	Adidas	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://i.ebayimg.com/images/g/~gMAAOSwDV5dAd8F/s-l1200.jpg
3a9312c53da64c7caffc71dc31e65456	La-Z-Boy Table Series D	51	296.45	Furniture	t	30056a4ef78e43f184481c570e226398	La-Z-Boy	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://www.la-z-boyindia.com/media/cache/img_300x300/uploads/userfiles/files/SLIDERS/RECLINERS.jpg
8ce9bf9b86f4458bb462122a6f1133c8	Ikea Table Special Edition	920	202.69	Furniture	f	30056a4ef78e43f184481c570e226398	Ikea	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://www.ikea.com/in/en/images/products/linnmon-table-top-white__1097492_pe864988_s5.jpg
cbe7ca1c4eb54300bfb9a216df79a974	Haverty's Chair Series B	48	450.16	Furniture	t	30056a4ef78e43f184481c570e226398	Haverty's	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://www.slumbersearch.com/img/havertys-diningset.jpg
db1bc4048c594b8a91e07468475cfc40	Sofa by La-Z-Boy	203	352.78	Furniture	t	30056a4ef78e43f184481c570e226398	La-Z-Boy	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://content.la-z-boy.com/Images/product/category/white/large/430722.jpg
6390488c4f514b8f9fe0e1b9f26f1722	Sofa by Ashley	495	261	Furniture	f	30056a4ef78e43f184481c570e226398	Ashley	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://cdn.rencdn.com/ashley/high/31901-38-SW-P1-KO.jpg
015bcacf18f14bd3b5154ffa0ab08630	Wayfair Cabinet 13	44	459.87	Furniture	t	30056a4ef78e43f184481c570e226398	Wayfair	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://assets.wfcdn.com/im/52652753/resize-h755-w755%5Ecompr-r85/2467/246793630/Lakissia+13.75%27%27+Wide+4+-+Shelf+Storage+Cabinet.jpg
113efbceaf6b480793a50fcb20b45da4	Ikea Sofa Series B	826	110.95	Furniture	f	5c053bb429144393b99ee146a9ea615b	Ikea	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://www.ikea.com/in/en/images/products/jaettebo-mod-crnr-sofa-2-5-seat-w-chaise-lng-right-samsala-grey-beige__1139903_pe880555_s5.jpg
71ef5910746147ed929a6386147279f6	La-Z-Boy Table 3	678	25.18	Furniture	t	5c053bb429144393b99ee146a9ea615b	La-Z-Boy	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://content.la-z-boy.com/Images/product/category/tables/big/59023_662935942383.jpg
d967bbee77e64c4094dd015124dfeb85	La-Z-Boy Cabinet Pro	558	432	Furniture	t	5c053bb429144393b99ee146a9ea615b	La-Z-Boy	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://content.la-z-boy.com/Images/home/2021-09-14/loveseats@2x.jpg
616d8c6968734886804a43b45e3522d9	Wayfair Table Pro	165	67.44	Furniture	f	5c053bb429144393b99ee146a9ea615b	Wayfair	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://oiwww.s3.us-east-2.amazonaws.com/wp-content/uploads/2020/02/31092058/Wayfair-Professional.Upper-Square-2-730x502.jpg
af1b0cd134374778a18e958f0255c2f2	Ikea Cabinet DarkBlue	637	314.77	Furniture	t	5c053bb429144393b99ee146a9ea615b	Ikea	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://www.ikea.com/kr/en/images/products/lommarp-cabinet-dark-blue-green__0739327_pe741692_s5.jpg
aa1d25f7aaa64e62913ba9f0168490ba	LEGO Board Game Pro	833	221.11	Toys	t	252b5d97ec044dfe8fcad7c9323a3dbb	LEGO	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/71GNM0Ye-LL.jpg
58309bbd04534a77923b54432590732f	Doll by Playmobil	652	387.68	Toys	f	252b5d97ec044dfe8fcad7c9323a3dbb	Playmobil	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://www.shutterstock.com/image-photo/group-diverse-school-age-girls-260nw-2306597391.jpg
edc30bca68724edbbe4acf3ddc46af67	Action Figure by LEGO	171	420.17	Toys	t	252b5d97ec044dfe8fcad7c9323a3dbb	LEGO	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://www.lego.com/cdn/cs/set/assets/blt4d3df38e982e8c6a/71047_boxprod_v140.png
7a197c7adcc543778fed19e957fbcc42	Hasbro Doll Lavender	642	234.06	Toys	t	252b5d97ec044dfe8fcad7c9323a3dbb	Hasbro	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://i.ebayimg.com/images/g/HuoAAOSwXx5gezyI/s-l400.jpg
6a7f099fb1964aafac16007ea9644658	Mattel Doll Pro	383	113.57	Toys	t	252b5d97ec044dfe8fcad7c9323a3dbb	Mattel	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/710caCGK0AL._AC_UF1000,1000_QL80_.jpg
6aeed8f756154abe83b7ff45fa8fb9e3	Mattel Puzzle 69	232	440.32	Toys	t	252b5d97ec044dfe8fcad7c9323a3dbb	Mattel	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/51InASoCV1L._AC_UF1000,1000_QL80_.jpg
da1e4ae844614284a01ab4cf6ff7408c	LEGO Action Figure Special Edition	165	460.08	Toys	f	252b5d97ec044dfe8fcad7c9323a3dbb	LEGO	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/711FWfvCWvL.jpg
a25965438e6c466da20accc80e5dc8b3	DeWalt Saw Special Edition	175	230.07	Tools	f	f06647c48f514d9d88527212642995dc	DeWalt	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/71Wd98uQQYL._AC_UF350,350_QL80_.jpg
c2833fc0d3414c6784cd25089897b91b	Stanley Screwdriver PaleGreen	863	320.46	Tools	t	f06647c48f514d9d88527212642995dc	Stanley	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://upload.wikimedia.org/wikipedia/commons/c/cd/Stanley_high-visibility_green_screwdrivers.jpg
a3e4f5026e204ffa814e0856f3eb790a	Hammer by Black & Decker	926	219.37	Tools	t	f06647c48f514d9d88527212642995dc	Black & Decker	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/61GD3I8ZBYL._AC_UF1000,1000_QL80_.jpg
c30906b70b8145ccaebdd98d0912e61e	Stanley Drill Series D	342	42.29	Tools	f	f06647c48f514d9d88527212642995dc	Stanley	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/81kEXGwXiGL._AC_UF1000,1000_QL80_.jpg
700fe65fd7034a3b86872b2ee2a77860	Stanley Screwdriver Special Edition	505	168.23	Tools	t	f06647c48f514d9d88527212642995dc	Stanley	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/6195gKOWg3L.jpg
8d667f21c989441eb25f04694a3e0037	Black & Decker Hammer WhiteSmoke	23	496.3	Tools	f	f06647c48f514d9d88527212642995dc	Black & Decker	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/71O70kkyjOL.jpg
89e8bcc418b04093b46feeb9cbc4893a	Stanley Drill Special Edition	837	244.03	Tools	t	f06647c48f514d9d88527212642995dc	Stanley	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/81kEXGwXiGL._AC_UF1000,1000_QL80_.jpg
39ad28e2fd6f4d14aed5b3f9d2c912ba	Bosch Hammer 51	932	385.73	Tools	f	f06647c48f514d9d88527212642995dc	Bosch	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://www.toolworld.in/storage/media/product/Bosch51-1.jpg
d0f73ae8a72d46b2b5d83f9f637c4232	Black & Decker Hammer MidnightBlue	864	414.85	Tools	t	f06647c48f514d9d88527212642995dc	Black & Decker	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/61yVy1F8wYL._AC_UF1000,1000_QL80_.jpg
68eaaef88c304524a3aa8be35ebc73ab	Makita Screwdriver 90	841	160.53	Tools	t	0ad9930d7159490597d79507114e1760	Makita	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://ae01.alicdn.com/kf/S73b34d23b7014515b4f1b18ce7754b9cV/Makita-10-8V-Cordless-Impact-Driver-TD090DW-Z-Rechargable-Electric-Drill-Screwdriver-90-N-m-Household.jpg
166fca319ac64af28701f9f9d173e75b	Stanley Screwdriver 73	487	380.78	Tools	t	0ad9930d7159490597d79507114e1760	Stanley	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/81F7861dwgL._AC_UF350,350_QL80_.jpg
c5dfd467815441d688cf3f45463a02c6	DeWalt Saw AntiqueWhite	539	165.05	Tools	t	0ad9930d7159490597d79507114e1760	DeWalt	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/51Rgj5H6AeL._AC_UF1000,1000_QL80_.jpg
901a31af036f42e79c13c9ca5d0dff73	Black & Decker Drill Series C	964	424.59	Tools	f	0ad9930d7159490597d79507114e1760	Black & Decker	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/71HLplpgl5L._AC_UF1000,1000_QL80_.jpg
dac22406296040ca8dffde78d8e0ed55	Mattel Action Figure Special Edition	525	274.16	Toys	t	1a9254da1a894dd6bd4a894f2029f264	Mattel	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/613x5r51LGL._CR3,0,1914,1080_SR684,386_.jpg
495ac84cc75c452ba160fef1f0d29acb	Playmobil Doll Wheat	304	322.22	Toys	f	1a9254da1a894dd6bd4a894f2029f264	Playmobil	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://www.kids-world.com/images/417px/EW701-1.jpg
461f023cc83747ea9e3903dc58fab014	Fisher-Price Puzzle Series D	225	354.13	Toys	t	1a9254da1a894dd6bd4a894f2029f264	Fisher-Price	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/811FnLDP9BL._AC_UF1000,1000_QL80_.jpg
d95d47c77ed34755a62d0ac825197f41	Mattel Action Figure 57	347	120.83	Toys	f	1a9254da1a894dd6bd4a894f2029f264	Mattel	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://images-cdn.ubuy.co.in/6354b6df57fd0b2a5f0af713-wwe-mattel-series-57-erick-rowan-basic.jpg
a0d4c3ea490d466baf4632934c39e2da	LEGO Board Game Pro	235	64.2	Toys	f	1a9254da1a894dd6bd4a894f2029f264	LEGO	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://miro.medium.com/v2/resize:fit:1400/1*ZjSLEy3ExtvoRzJTCQZdLg.jpeg
78e6cd3b66964831adb590255a0d984b	Puzzle by Mattel	39	118.52	Toys	t	1a9254da1a894dd6bd4a894f2029f264	Mattel	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://i.etsystatic.com/13093731/r/il/0bc6fe/4242487559/il_fullxfull.4242487559_gxhi.jpg
c9e64d492e184563abd751ea316eb8be	Tablet by Apple	589	159.51	Electronics	f	cbe2673c224642dcb5268785a24dfcfd	Apple	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://images.jdmagicbox.com/quickquotes/images_main/apple-mk772hn-a-ipad-mini-4-tablet-128-gb-20-06-cm-7-9-inch-wi-fi-silver-106619794-al6vp.jpg
a20de9f4752a4decbede3d56e2e581ba	HP Tablet Special Edition	708	70.25	Electronics	t	cbe2673c224642dcb5268785a24dfcfd	HP	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://i.ytimg.com/vi/P_t-K_T9ols/maxresdefault.jpg
57d107c409224cf4938a5fa6bb153a82	Samsung Smartphone Pro	333	361.38	Electronics	t	cbe2673c224642dcb5268785a24dfcfd	Samsung	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://m.media-amazon.com/images/I/41y51rEjDuL.jpg
e3ce7f4d414841d8b8d0a6cbecdcde9c	Sony Smartphone Cyan	646	378.89	Electronics	f	cbe2673c224642dcb5268785a24dfcfd	Sony	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://i.gadgets360cdn.com/large/Sony_Xperia_5V_sony_1693559865776.jpg
89504ae55df94755b4c312763a4cdefe	Camera by Dell	597	425.66	Electronics	f	cbe2673c224642dcb5268785a24dfcfd	Dell	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://m.media-amazon.com/images/I/31GUfgxS6eL._AC_UF1000,1000_QL80_.jpg
45d3dd4c3eca449781b791178681674c	Sony Tablet PaleTurquoise	395	225.99	Electronics	t	cbe2673c224642dcb5268785a24dfcfd	Sony	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://www.sony.co.in/microsite/sonytablet/common/images/product.jpg
f6b9ddbb925a497db85177d0c3e9ec8a	Laptop by Apple	14	146.96	Electronics	t	cbe2673c224642dcb5268785a24dfcfd	Apple	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://m.media-amazon.com/images/I/61B1rYhCGzL._SY350_PKmb-play-button-overlay_.jpg
13d556ac0d4c481c891cc15198f7b1e4	HP Laptop Series C	700	366.67	Electronics	f	cbe2673c224642dcb5268785a24dfcfd	HP	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://m.media-amazon.com/images/I/71eBzyVTnfL.jpg
1d1dfc22ffd74680bde8b5be74d9ede3	Table by La-Z-Boy	512	363.99	Furniture	t	902301aa653b4eb881a436b51c792df3	La-Z-Boy	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://www.la-z-boyindia.com/media/cache/img_1960x840/uploads/userfiles/files/Images/Banner.jpg
076f476a10de4f098b7c0b91ed6b20d6	Wayfair Cabinet 29	882	77.69	Furniture	t	902301aa653b4eb881a436b51c792df3	Wayfair	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://assets.wfcdn.com/im/48741721/resize-h755-w755%5Ecompr-r85/8161/81615414/Waco+Single+Storage+Cabinet+%28+72%27%27+H+x+29.25%27%27+W+x+18.75%27%27+D%29.jpg
2fa2797409c74b1e812b64bbc413b0c6	Ikea Cabinet DimGray	195	222.5	Furniture	f	902301aa653b4eb881a436b51c792df3	Ikea	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://www.ikea.com/in/en/images/products/metod-wall-cabinet-with-shelves-2-doors-white-nickebo-matt-anthracite__1145310_pe882438_s5.jpg
7d95928182b44098852ca3d7991a308c	Cabinet by La-Z-Boy	15	399.7	Furniture	t	902301aa653b4eb881a436b51c792df3	La-Z-Boy	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://content.la-z-boy.com/Images/product/category/tables/large/706_830SP.jpg
bfc83ce1005840d3af7cb93325aed6f2	Haverty's Cabinet 93	29	112.76	Furniture	f	902301aa653b4eb881a436b51c792df3	Haverty's	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://www.tmpstores.com/images/gophotos/524422a_057.jpg
f84683efbf924436a352942d2cf609da	Ashley Sofa Series A	268	170.21	Furniture	t	902301aa653b4eb881a436b51c792df3	Ashley	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://cdn.rencdn.com/ashley/high/12020-38-SW-P1-KO.jpg
86cb36fbf0484da3a7f33840f4c62106	Ashley Cabinet Special Edition	468	488.05	Furniture	t	902301aa653b4eb881a436b51c792df3	Ashley	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://m.media-amazon.com/images/I/81-vhZ85KaL.jpg
a9cf5858749e499cbc0f7e15b26dab13	Sony Laptop Special Edition	216	86.14	Electronics	t	6cc61011ecdd48cf8cd002c13087006c	Sony	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://m.media-amazon.com/images/I/81tgmGa5S3L.jpg
c83382cc140145a9926385898ea0db0c	Wayfair Cabinet Special Edition	141	358.21	Furniture	f	acbe5d616f9447e4877256ebc9befc2c	Wayfair	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://assets.wfcdn.com/im/42236486/resize-h755-w755%5Ecompr-r85/1428/142809179/Jakeira+Dining+Cabinet.jpg
6ac1d580a1bb44509475c2da051bb7c3	Haverty's Chair Pro	280	104.64	Furniture	t	acbe5d616f9447e4877256ebc9befc2c	Haverty's	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://www.furnituretoday.com/wp-content/uploads/2024/04/HPU-2-Havertys-Cup.jpg
2e4acee413f44eef9c49a8a5737a4cc3	La-Z-Boy Sofa Series A	161	328.09	Furniture	f	acbe5d616f9447e4877256ebc9befc2c	La-Z-Boy	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://i.ytimg.com/vi/DoeANhr3VzE/maxresdefault.jpg
a69b21a75d954dda927489ce5b96ae26	Ashley Sofa SteelBlue	543	493.8	Furniture	t	acbe5d616f9447e4877256ebc9befc2c	Ashley	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://ii1.pepperfry.com/media/catalog/product/a/s/1250x625/ashley-rhs-2-seater-sofa-with-lounger-in-blue-colour-by-furnitech-ashley-rhs-2-seater-sofa-with-loun-glar7d.jpg
7735f1d8fd1d4acaa497c2578f64ffdc	Sofa by Ashley	264	51.47	Furniture	f	acbe5d616f9447e4877256ebc9befc2c	Ashley	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://images-cdn.ubuy.co.in/6357b639f9e68b2e982d3bd5-ashley-furniture-signature-design.jpg
8bb19ac5a76642d68b25619db2afe402	Haverty's Sofa RosyBrown	666	155.47	Furniture	f	acbe5d616f9447e4877256ebc9befc2c	Haverty's	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://m.media-amazon.com/images/S/mms-media-storage-prod/final/BrandPosts/brandPosts/31e58b06-b61b-4503-aa34-187846ebcfdf/c1e21b67-1fd5-434d-a4c3-b10b36905135/media._SL480_.jpeg
5d048691cd74435bb37d0e117d05fdd6	La-Z-Boy Chair Special Edition	225	283.28	Furniture	f	acbe5d616f9447e4877256ebc9befc2c	La-Z-Boy	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://www.la-z-boyindia.com/media/cache/resolve/img_300x300/uploads/userfiles/files/Enzo%2520I%2520Sun%2520Dance/IMG_0081%2520%281%29.jpg
1e6714ad5b27457aa5c64a5d07a7f410	Stanley Hammer 37	697	338.12	Tools	f	907f910366a44b22a5e3c776c93d0fb3	Stanley	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://images-eu.ssl-images-amazon.com/images/I/51Al0NDY+DL._AC_UL600_SR600,600_.jpg
b745cc8f80d54cc0913f3782fca264b7	Black & Decker Hammer Series A	404	156.09	Tools	t	907f910366a44b22a5e3c776c93d0fb3	Black & Decker	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://industrywaala.com/wp-content/uploads/2023/04/BLACKDECKER-BCD003C1-QW-Hammer-Drill-10-mm-Chuck-Size-500-W-2.png
5cc6b53a4eb749369b062d823df2ec53	DeWalt Saw LightYellow	546	324.85	Tools	t	907f910366a44b22a5e3c776c93d0fb3	DeWalt	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://images.thdstatic.com/productImages/bb45444e-0988-45a3-9a4f-dee05709d075/svn/dewalt-dck2100w573334-64_600.jpg
c4b05cdd371a41a495af5833b5e9ceaa	Black & Decker Saw 90	524	76.65	Tools	t	907f910366a44b22a5e3c776c93d0fb3	Black & Decker	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://i.ebayimg.com/images/g/5RUAAOSwmhtf6dHS/s-l500.jpg
2c00e13ab5844529b4777d3ad4caaabc	Makita Drill Series A	310	182.3	Tools	f	907f910366a44b22a5e3c776c93d0fb3	Makita	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://makita.in/wp-content/uploads/2021/04/DDF487_act_1-1.jpg
8d20eff4ec29450a828a961e3aabb26c	Saw by Stanley	574	453.54	Tools	f	907f910366a44b22a5e3c776c93d0fb3	Stanley	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://goodwill.in/pub/media/catalog/product/cache/baa91a0f6a6727b96548e46cfc4ffa34/s/t/stht20373-la_1.jpg
b1f58460c4b3400b93205f75ce621777	DeWalt Drill Series D	901	444.37	Tools	t	907f910366a44b22a5e3c776c93d0fb3	DeWalt	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/71ZNEsBwUxL._AC_UF350,350_QL80_.jpg
323979dbde10431b828d142c7712db2f	Bosch Hammer Bisque	546	263.92	Tools	t	907f910366a44b22a5e3c776c93d0fb3	Bosch	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/616Hgwf8w-L.jpg
f4f0ff21aff7455897fbe58b0d765081	DeWalt Drill Wheat	566	315.98	Tools	f	907f910366a44b22a5e3c776c93d0fb3	DeWalt	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://images.jdmagicbox.com/quickquotes/images_main/dewalt-rotary-hammer-drill-machine-377074947-yhxnd.jpg
a25f1000afce4264be2687a5e6134c1e	LEGO Board Game Brown	94	363.14	Toys	t	9e41d8d0b96c4b2dab59a505a889824c	LEGO	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://www.lego.com/cdn/cs/set/assets/blt3a83606875d8dca3/40719_Box1_v39.png
153e93cfcf634493b6dd5a1d834b94e0	Hasbro Action Figure Series D	433	112.39	Toys	t	9e41d8d0b96c4b2dab59a505a889824c	Hasbro	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://images-cdn.ubuy.co.in/634e7423cbf083101521dd56-marvel-hasbro-legends-series-6-inch.jpg
3f7b31a1bac84a559f65434ade40d7d7	LEGO Action Figure Pro	237	212.35	Toys	f	9e41d8d0b96c4b2dab59a505a889824c	LEGO	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://images-na.ssl-images-amazon.com/images/I/41jqbYiUmUL.jpg
17ab8643749c4fe39fbfab3a6cef08c1	LEGO Board Game Series A	91	348.26	Toys	t	9e41d8d0b96c4b2dab59a505a889824c	LEGO	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://static1.cbrimages.com/wordpress/wp-content/uploads/2022/08/Best-Lego-Board-Games-Title-1.jpg
e4106922870347b7accc56d014129539	LEGO Doll Pro	185	398.58	Toys	t	9e41d8d0b96c4b2dab59a505a889824c	LEGO	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://i.ytimg.com/vi/e72bw_0b224/maxresdefault.jpg
d6bb60cf594043f490086d141a32ef40	Mattel Board Game Peru	666	19.92	Toys	f	9e41d8d0b96c4b2dab59a505a889824c	Mattel	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://i.ebayimg.com/images/g/nSMAAOSwpgpg3rHE/s-l640.jpg
832ae547436748c4a9d8e2d2808999f4	Fisher-Price Puzzle Special Edition	385	360.35	Toys	f	23ee8cdaacfb4e0db986dc7938cfe5cc	Fisher-Price	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/81zoEIQ+RiL.jpg
e20e1e5312b34f5b8f0ac33cbfaffcce	Hasbro Board Game Pro	45	470.95	Toys	f	23ee8cdaacfb4e0db986dc7938cfe5cc	Hasbro	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/81xPyxcL+gL.jpg
faea14fdb64b491b9d77c7e8e554a34e	Hasbro Doll 68	430	442.07	Toys	t	23ee8cdaacfb4e0db986dc7938cfe5cc	Hasbro	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://staranddaisy.in/wp-content/uploads/2023/09/baby-alive-sunshine-snacks-e1681-naivri-7_5db0f2f3-ef2a-4688-9768-9ead903bf3cc.jpg
0c70471446e74cc09466935cc0a10d13	Puzzle by Playmobil	28	356.12	Toys	t	23ee8cdaacfb4e0db986dc7938cfe5cc	Playmobil	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://www.1001puzzles.de/2562518-home_default/schmidt-scm56163-100-teiliges-puzzle-playmobil-auf-dem-bauernhof-mit-f.jpg
77d27ce26ef640c98b250fdcc3f8ff42	Hasbro Board Game Pro	973	321.02	Toys	t	23ee8cdaacfb4e0db986dc7938cfe5cc	Hasbro	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://mlpnk72yciwc.i.optimole.com/cqhiHLc.IIZS~2ef73/w:auto/h:auto/q:75/https://bleedingcool.com/wp-content/uploads/2024/07/Monopoly-Go-Physical-1.jpg
43560945da7d47c99149106ef0d52b83	Stanley Screwdriver DeepPink	897	154.84	Tools	f	9752ed3062ee4f84bf41844d9e4e1548	Stanley	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/81W9LNXWmFL._AC_UF1000,1000_QL80_.jpg
64ddeb30d2f44021ac0949eb12020caa	Saw by Black & Decker	555	26.4	Tools	t	9752ed3062ee4f84bf41844d9e4e1548	Black & Decker	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://images-cdn.ubuy.co.in/650ee124ef55284b0c64e95e-black-decker-7-1-4-inch-circular-saw.jpg
a99069fc384c41618b949882c5d6c240	Black & Decker Drill 71	272	27.84	Tools	f	9752ed3062ee4f84bf41844d9e4e1548	Black & Decker	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://cdn.shopify.com/s/files/1/0640/1409/0461/files/70ca2e2a3dd3268078546c23ef043c7e8c368a94.jpg
56c6a307c48943d5b358f1370bd7a738	Bosch Drill Series C	908	148.75	Tools	t	9752ed3062ee4f84bf41844d9e4e1548	Bosch	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://i.ytimg.com/vi/hHUH2hcHifw/maxresdefault.jpg
e2b9220ed9a94038a088c07c729155c6	DeWalt Hammer Special Edition	137	423.06	Tools	f	9752ed3062ee4f84bf41844d9e4e1548	DeWalt	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://bynder.sbdinc.com/m/59962c20c49eaea6/Drupal_Small-DCD100M2T_1.jpg
c8b3beb8c4f249518410b0d141364de7	DeWalt Saw Special Edition	516	307.14	Tools	f	9752ed3062ee4f84bf41844d9e4e1548	DeWalt	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://images.thdstatic.com/productImages/69046f8c-a1a4-4464-9852-ba7573542bc2/svn/dewalt-circular-saws-dcs571b-64_600.jpg
e0f2ef1f1e6149e89d02877506558d6c	Saw by Bosch	119	65.25	Tools	t	9752ed3062ee4f84bf41844d9e4e1548	Bosch	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://www.boschtools.com/us/en/ocsmedia/251127-947/application-image/720x410/circular-saws-cs5-0601672074.png
808588fbab734734805a3ce81a5e69ba	Ikea Chair 74	883	262.48	Furniture	f	a47001c345f043278465a6be6fcaaf4c	Ikea	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://www.ikea.com/in/en/images/products/franklin-bar-stool-with-backrest-foldable-black-black__0995757_pe821837_s5.jpg
7f336c9350f04bbcbf397d3995b39565	La-Z-Boy Cabinet Pro	648	403.78	Furniture	f	a47001c345f043278465a6be6fcaaf4c	La-Z-Boy	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://www.la-z-boyindia.com/media/cache/img_418x259/uploads/userfiles/images/LAZBOY-Feel-the-difference.jpg
7e3d534fde7e4c419817d667666ebb07	Haverty's Table Pro	691	27.58	Furniture	t	a47001c345f043278465a6be6fcaaf4c	Haverty's	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://res.cloudinary.com/dkqtxtobb/image/upload/f_auto,q_auto:best,w_1500/product-assets/406587/havertys/tables/dinner-tables/havertys-newport-counter-height-table-sale.jpeg
45eb5d44bfcf4a7a8cfcbe927b6b6675	Haverty's Cabinet Red	995	372.52	Furniture	t	a47001c345f043278465a6be6fcaaf4c	Haverty's	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://s3-media0.fl.yelpcdn.com/bphoto/pWovZlR4gzPed5RbXdBo3Q/348s.jpg
cbe9ef7e8e3640b2a0449dabd96d07b5	Ikea Cabinet YellowGreen	177	456.96	Furniture	f	a47001c345f043278465a6be6fcaaf4c	Ikea	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://www.ikea.com/in/en/images/products/idasen-cabinet-with-doors-and-drawers-dark-green__1078995_pe857374_s5.jpg
aca47fd98a8843c494647c811b9cbe91	Samsung Tablet Pro	552	262.83	Electronics	f	fcdc230f9f43400387b4e892c6a789b3	Samsung	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://m.media-amazon.com/images/I/81nspOduEoL.jpg
df326f95d34d43d7909e333f273767b3	Sony Tablet 65	783	477.4	Electronics	t	fcdc230f9f43400387b4e892c6a789b3	Sony	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://m.media-amazon.com/images/I/41tPkioSqeL.jpg
c80fdbc052804a06b5346d53472b3acf	Sony Laptop Pro	442	441.62	Electronics	t	fcdc230f9f43400387b4e892c6a789b3	Sony	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://www.thessdreview.com/wp-content/uploads/2013/09/Vaio-Open-Screen-On.jpg
e76abc081d11426f979066273d4cd02c	Samsung Camera Series A	731	390.97	Electronics	f	fcdc230f9f43400387b4e892c6a789b3	Samsung	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://s15543.pcdn.co/wp-content/uploads/2024/01/A25-1.jpg
b256b001972a4eba8d85946e65b41189	Dell Smartphone Special Edition	661	44.78	Electronics	f	fcdc230f9f43400387b4e892c6a789b3	Dell	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://static.toiimg.com/thumb/msid-6901778,imgsize-4422,width-400,resizemode-4/6901778.jpg
87d1924fc3a84c8bbdeacf6e0abe1a23	HP Tablet Series A	717	69.23	Electronics	t	fcdc230f9f43400387b4e892c6a789b3	HP	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://drop.ndtv.com/TECH/product_database/images/106201415210PM_635_hp_10_plus.jpeg
12fcd86ee6f74327bcdd59592f32ee86	Samsung Tablet AliceBlue	291	393.15	Electronics	f	fcdc230f9f43400387b4e892c6a789b3	Samsung	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://images.jdmagicbox.com/quickquotes/images_main/-fy39l.jpg
a5bec52ed57146199540723724a31a1d	HP Camera 84	580	488.03	Electronics	f	fcdc230f9f43400387b4e892c6a789b3	HP	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://m.media-amazon.com/images/I/713BZtAu58L.jpg
64d05c6ca90f469ea5b4d1f0f7143d4b	Sony Tablet LavenderBlush	928	90.43	Electronics	f	fcdc230f9f43400387b4e892c6a789b3	Sony	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://i.ytimg.com/vi/KK_dgTqLBYY/maxresdefault.jpg
b0aaca4a7acc4f7195d0e00a4fff09d9	Sony Camera Special Edition	222	144.45	Electronics	t	fcdc230f9f43400387b4e892c6a789b3	Sony	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://x.imastudent.com/content/0023555_sony-fx3-full-frame-cinema-camera-body-only_500.jpeg
866b5884012140d98462c25e7bd98590	Samsung Laptop Special Edition	822	316.25	Electronics	t	81c7d673ef4e46a68358efd982bc3c86	Samsung	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://m.media-amazon.com/images/I/71ohNusGIjL._AC_UF1000,1000_QL80_.jpg
ec61c81a4dd44de2bbf635657bd9e57e	Apple Laptop Series B	912	406.28	Electronics	t	81c7d673ef4e46a68358efd982bc3c86	Apple	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://i.gadgets360cdn.com/products/laptops/large/1546455437_635_apple_macbook-air-md760hn-b.jpg
8c3c86315c8443a69e2eaf4e43149e6c	HP Camera Tomato	498	440.36	Electronics	f	81c7d673ef4e46a68358efd982bc3c86	HP	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://m.media-amazon.com/images/I/51fNvLVQPjL._AC_UF1000,1000_QL80_.jpg
9f158efb77b341fdb054209d3d91c7db	Dell Laptop Pro	329	63.28	Electronics	t	81c7d673ef4e46a68358efd982bc3c86	Dell	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://www.dell.com/wp-uploads/2024/01/XPS-9640-laptops-back-to-back-1280x800-1.jpg
6414b24812e048ea9008b45cca72ae98	Apple Smartphone DarkCyan	620	356.93	Electronics	f	81c7d673ef4e46a68358efd982bc3c86	Apple	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://cdsassets.apple.com/live/7WUAS350/images/iphone/iphone-12-pro/iphone12-pro-colors.jpg
b735a9b240c74a1a9699ad2e27d44dc8	Smartphone by Dell	382	470.94	Electronics	f	81c7d673ef4e46a68358efd982bc3c86	Dell	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://www.techwalls.com/wp-content/uploads/2014/06/Dell-Venue-Pro-smartphone-4.jpg
485a85992dad40e9b590c03a3e7c7713	HP Tablet Special Edition	892	153.91	Electronics	f	81c7d673ef4e46a68358efd982bc3c86	HP	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://i.pcmag.com/imagery/articles/00t4n5YYv7Hu00ZrZ8hmLVG-2.fit_lim.v1569487772.jpg
fdf7131b402b4e1f8f91b2730c5abf06	Dell Laptop NavajoWhite	794	18.3	Electronics	t	81c7d673ef4e46a68358efd982bc3c86	Dell	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://m.media-amazon.com/images/I/51mm9QM6-SL._SX350_.jpg
cb108b3a6c364eef95f50844d84af67f	Apple Camera MediumPurple	245	13.92	Electronics	t	690059f3d2d4441a98638d4557dd9ab6	Apple	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://www.apple.com/newsroom/images/2024/09/apple-introduces-iphone-16-and-iphone-16-plus/article/geo/Apple-iPhone-16-finish-lineup-geo-240909_big.jpg.large.jpg
fa5c1b960f0645df8803fabefe555b69	HP Laptop Pro	212	154.66	Electronics	t	690059f3d2d4441a98638d4557dd9ab6	HP	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://www.hp.com/content/dam/sites/worldwide/personal-computers/commercial/laptops/business/probook-new/Commercial_performance_VCS_Image_mobile@2x.jpg
bd10ec9727d24f55a312d4eaec6c5041	Laptop by Dell	294	150.83	Electronics	f	690059f3d2d4441a98638d4557dd9ab6	Dell	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://www.saifinfosystem.in/wp-content/uploads/2024/06/dell-latitude-7389-scaled.jpeg
00dd949b0a584c988a049169e360be7b	Apple Camera Series D	492	127.88	Electronics	f	690059f3d2d4441a98638d4557dd9ab6	Apple	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://petapixel.com/assets/uploads/2022/01/This-is-What-a-Standalone-Apple-Camera-Might-Look-Like.jpg
de681ba8c9a24dbfa0153e1f93bd8c3f	Samsung Smartphone 44	919	178.53	Electronics	f	690059f3d2d4441a98638d4557dd9ab6	Samsung	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://www.almuritec.com/wp-content/uploads/2023/01/Untitled-design-44.jpg
628bc18f5425440db4869805b37a5533	Dell Laptop Salmon	240	165.04	Electronics	t	690059f3d2d4441a98638d4557dd9ab6	Dell	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://m.media-amazon.com/images/I/51ydzibDyvL._AC_UF894,1000_QL80_.jpg
1fd1f5430d464608b02b3a7b6cb09152	Apple Smartphone Series D	292	421.62	Electronics	t	690059f3d2d4441a98638d4557dd9ab6	Apple	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://img.etimg.com/thumb/width-420,height-315,imgsize-54614,resizemode-75,msid-97237492/industry/cons-products/electronics/iphone-apple-of-indias-eye-hits-1b-exports-mark-in-december/iphone.jpg
94fcda4e900d44a99697d6c63d45b555	HP Camera Series A	950	130.97	Electronics	t	690059f3d2d4441a98638d4557dd9ab6	HP	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://m.media-amazon.com/images/I/51-gx3O4UfL.jpg
53119ebfb7be4c8e8f4fdfe72f52ba4c	Samsung Smartphone Pro	872	301.07	Electronics	t	690059f3d2d4441a98638d4557dd9ab6	Samsung	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://static.toiimg.com/thumb/resizemode-4,msid-57775542,imgsize-500,width-800/57775542.jpg
abbc161bbd1641a9b494b9926898575a	Dell Laptop Special Edition	317	474.48	Electronics	t	690059f3d2d4441a98638d4557dd9ab6	Dell	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://i.ytimg.com/vi/lgetH5zTC80/maxresdefault.jpg
08e0cae92c8d42d19709f445095c76b7	Levi's T-Shirt Special Edition	363	387.16	Clothing	f	a0cd3c749fa04bc09933c804bc12fdfd	Levi's	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://images-cdn.ubuy.co.in/656308ac014032040c6a4c5a-levi-s-boys-long-sleeve-batwing.jpg
ebecca6c20494ef1a28e427408008f9b	Adidas Shoes Series B	589	50.28	Clothing	t	a0cd3c749fa04bc09933c804bc12fdfd	Adidas	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://img.tatacliq.com/images/i16//437Wx649H/MP000000021394703_437Wx649H_202403010454491.jpeg
28ff13f952f44088961a2b611e3728b2	Levi's Shoes Pro	214	476.43	Clothing	f	a0cd3c749fa04bc09933c804bc12fdfd	Levi's	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://assets.ajio.com/medias/sys_master/root/h74/h43/11137304100894/-473Wx593H-460187643-darkblue-OUTFIT4.jpg
d60f9101cae04c94bf773561ecadf4b0	H&M Jeans 22	676	420.36	Clothing	f	a0cd3c749fa04bc09933c804bc12fdfd	H&M	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/30155139/2024/7/8/52bad180-14f0-4de2-9ce6-0d12de1e27361720439773071FlaredLowJeans1.jpg
5294d1ac019f47a09f0195db48d3e6cf	T-Shirt by H&M	699	381.62	Clothing	t	a0cd3c749fa04bc09933c804bc12fdfd	H&M	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://assets.myntassets.com/w_412,q_60,dpr_2,fl_progressive/assets/images/23126618/2023/5/12/6c1afb7d-b886-4240-9d3d-5f66f2491cae1683838611308PrintedjerseyT-shirt1.jpg
cbbd0d56743546eabdaeedec7fe17e86	T-Shirt by Nike	920	219.54	Clothing	f	a0cd3c749fa04bc09933c804bc12fdfd	Nike	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://assets.myntassets.com/h_1440,q_100,w_1080/v1/assets/images/24110822/2023/7/20/ba54e893-2808-410a-93f4-759cd5d51fb71689818375699ASMNSWTEEBIGSWOOSHHBR1.jpg
622d6079cc554d14a565cfc1490d8928	Shoes by Levi's	167	100.28	Clothing	t	8e39943c765c41d2bde19f5dabb49c96	Levi's	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://images-cdn.ubuy.co.in/633aaa6b63478d6ba763173b-levis-mens-alpine-wx-stacked-casual.jpg
e54342a0cb9e4d83abea8a9a69d65037	Dress by Adidas	554	339.3	Clothing	t	8e39943c765c41d2bde19f5dabb49c96	Adidas	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://assets.adidas.com/images/w_600,f_auto,q_auto/13891d4c190a45e38b1f1bb2ee4a1269_9366/Adicolor_Classics_3-Stripes_V-Neck_Maxi_Dress_Plus_Size_Black_IN2212_21_model.jpg
40d4b6fb27694d2286288b00fbd43d22	T-Shirt by Zara	636	296.55	Clothing	f	8e39943c765c41d2bde19f5dabb49c96	Zara	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://static.toiimg.com/thumb/msid-112677120,width-1280,height-720,resizemode-4/112677120.jpg
11c86810bcf14bf784e4382611be01fa	Levi's Shoes Special Edition	843	83.19	Clothing	f	8e39943c765c41d2bde19f5dabb49c96	Levi's	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://media.vogue.co.uk/photos/63d1690ba7de76aa132e9dc4/2:3/w_2560%2Cc_limit/levi2501_150_collage.jpg
78b46079fa1b4c7bbdc1231006d902fc	Adidas Shoes Special Edition	15	17.27	Clothing	t	8e39943c765c41d2bde19f5dabb49c96	Adidas	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://www.golfposer.com/media/magefan_blog/2020/06/adidas-Summer-of-Golf-CODECHAOS-Tie-Dye-Shoes-2020.jpg
ebcfd0998b2a4c7ba3f90dd1e0037c27	H&M Shoes Brown	857	188.62	Clothing	f	8e39943c765c41d2bde19f5dabb49c96	H&M	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://assets.myntassets.com/w_412,q_60,dpr_2,fl_progressive/assets/images/productimage/2019/11/6/ac2342cb-fcb1-4b2d-93dd-03ebb38348871573060910953-1.jpg
c6fbc3d4a6eb473f864cefbc402e5fb7	H&M Jeans Series C	555	495.6	Clothing	t	8e39943c765c41d2bde19f5dabb49c96	H&M	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://i.pinimg.com/736x/f3/43/b9/f343b90c300954a028d0b961a38fe396.jpg
c9d0b20c074444d583dc585014715ffe	Nike Dress LightGreen	420	61.3	Clothing	f	8e39943c765c41d2bde19f5dabb49c96	Nike	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/d2c1d52c-30f0-4b8a-8ac8-3c036b92d6da/M+NK+DF+PRIMARY+STMT+SS.png
aab9d17480b543a9acc928a240e34b60	Zara T-Shirt Series B	683	191.94	Clothing	t	8e39943c765c41d2bde19f5dabb49c96	Zara	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://images-cdn.ubuy.co.in/633fffba324514672d27af50-zara-t-shirt-cool-new-funny-name-fan.jpg
10bf3d567f3d448f98bb5443e3042a2f	Apple Smartphone Pro	785	356.53	Electronics	f	a005447265414455a504674905627e86	Apple	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://www.apple.com/newsroom/images/2024/09/apple-debuts-iphone-16-pro-and-iphone-16-pro-max/article/Apple-iPhone-16-Pro-hero-geo-240909_inline.jpg.large.jpg
6cacf55b535240b491723deda70bc3de	Sony Tablet 39	331	239.91	Electronics	f	a005447265414455a504674905627e86	Sony	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://static.tweaktown.com/content/5/2/5200_26_sony_xperia_tablet_s_review_full.png
de08d864869a4b5780c4f9d26ccd86ab	Sony Camera Pro	159	66.45	Electronics	t	a005447265414455a504674905627e86	Sony	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://gppro.in/wp-content/uploads/2021/11/SONY-ILCE-A7CBQ-CAMERA-GP001078-1.jpg
871226741d7b49f3a06ded7d41738052	Dell Smartphone Pro	270	453.75	Electronics	f	a005447265414455a504674905627e86	Dell	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://media.wired.com/photos/5933badaa24b4b4903a3c4de/master/pass/dell-venue-wp7.jpg
4c3301eba03c4172a36dcb2fb1a2e5c2	Sony Laptop Series B	163	391.47	Electronics	t	a005447265414455a504674905627e86	Sony	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://www.bhphotovideo.com/images/fb/Sony_VGNN320E_B_VAIO_N_Series_VGN_N320E_B_490388.jpg
95ea7f05a0984e43be1b4c2d221e52c6	Samsung Laptop Pro	618	127.56	Electronics	f	a005447265414455a504674905627e86	Samsung	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://m.media-amazon.com/images/I/31XkIomONFS._QL92_SH45_SX240_SY220_CR,0,0,240,220_.jpg
87ef19612d24474c8d18334355370a50	Wayfair Chair AliceBlue	233	213.88	Furniture	t	ce967fca5780421184760edde5ac7a6d	Wayfair	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://assets.wfcdn.com/im/11950659/resize-h800-w800%5Ecompr-r85/2615/261555453/Alice+30%22+Wide+Upholstered+Floral+wood+Armchair+with+Nailhead+Trim.jpg
7723b06da4ef484fa69db4293fc08a2c	Ashley Chair Special Edition	370	245.85	Furniture	t	ce967fca5780421184760edde5ac7a6d	Ashley	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://linqcdn.avbportal.com/images/e73ece29-6eb7-46d8-9209-effe84561356.jpg
9f1a44ae24254f42bcdb059b35f9696d	La-Z-Boy Chair Series C	531	445.01	Furniture	t	ce967fca5780421184760edde5ac7a6d	La-Z-Boy	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://d12mivgeuoigbq.cloudfront.net/magento-media/catalog/product/1/c/1cbbdfa5-6193-4a6c-bd37-b045cbae3cb1.jpg
ad135280c7fd433bb4cf5c3d214854c5	Haverty's Table Series C	73	201.54	Furniture	f	ce967fca5780421184760edde5ac7a6d	Haverty's	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://res.cloudinary.com/dkqtxtobb/image/upload/f_auto,q_auto:best,w_1000/product-assets/122293/havertys/tables/coffee-tables/havertys-tatiana-cocktail-table-used.jpeg
64af891c156e4e6ab05d6f4c7be5572c	Haverty's Sofa 46	811	181.29	Furniture	t	ce967fca5780421184760edde5ac7a6d	Haverty's	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://res.cloudinary.com/dkqtxtobb/image/upload/f_auto,q_auto:best,w_1500/product-assets/314045/havertys/sofas/classic-sofas/havertys-mason-grande-sofa.jpeg
51953574c8494cafa9525f03249e4c68	Wayfair Chair Linen	595	130.88	Furniture	t	ce967fca5780421184760edde5ac7a6d	Wayfair	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://assets.wfcdn.com/im/75912811/resize-h755-w755%5Ecompr-r85/2833/283317839/Upholstered+Linen+Armchair.jpg
85761ffc6fa94398aa35122faaf64c3c	Smartphone by Dell	44	449.02	Electronics	f	6cc61011ecdd48cf8cd002c13087006c	Dell	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://images.fastcompany.com/image/upload/imgs-fc-com/dell-thunder-top-2.jpg
f48cf43aaf124540b4ce07e69752ce4c	Sony Smartphone SeaShell	754	97.93	Electronics	f	6cc61011ecdd48cf8cd002c13087006c	Sony	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://mycasemock.s3.eu-central-1.amazonaws.com/sony-xperia-xa/11073/rose_gold.jpg
992bcba978b049fea225a61ae4d70203	HP Laptop Pro	139	385.22	Electronics	t	6cc61011ecdd48cf8cd002c13087006c	HP	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://www.hp.com/content/dam/sites/worldwide/personal-computers/commercial/laptops/business/probook-new/400_Series_VCS_1@2x.jpg
e4cbbc8f41554813a8b8195cd2925ed9	Sony Camera DarkOrange	280	49.9	Electronics	f	6cc61011ecdd48cf8cd002c13087006c	Sony	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://i.ytimg.com/vi/pY0kSoqFnqM/maxresdefault.jpg
1cbb534169374385847ba7e46024c2bf	HP Camera 21	353	424.55	Electronics	t	6cc61011ecdd48cf8cd002c13087006c	HP	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://bizimages.withfloats.com/actual/5f8f94b94496e400013d6431.jpg
c84dea1239034f8f819506961ff004da	Dell Tablet Pro	233	258.3	Electronics	t	6cc61011ecdd48cf8cd002c13087006c	Dell	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://drop.ndtv.com/TECH/product_database/images/414201451243PM_635_Dell_venue8_Pro.jpeg
6b97e8fadd8b46d3be8f6d4b04ae71c0	Apple Smartphone Special Edition	374	279.12	Electronics	f	6cc61011ecdd48cf8cd002c13087006c	Apple	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://images.news18.com/ibnlive/uploads/2023/09/caviar-iphone-15-pro.jpg
2cbfeab92ec34db99893a10311b8c81e	Nike T-Shirt 73	904	444.23	Clothing	f	f0afd04fe56544309b12334be3221a23	Nike	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://cdn-images.farfetch-contents.com/23/73/31/63/23733163_53890123_322.jpg
6298e5e4e19d401bb5d5d5fdee856e94	Nike Shoes Pro	425	163.45	Clothing	f	f0afd04fe56544309b12334be3221a23	Nike	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/82d74403-1240-4b75-ab9e-8739c71c5830/VICTORY+PRO+3+W+NN.png
43cce36c0a67487c8210f6de20ce0a9c	Levi's Dress Pro	209	463.51	Clothing	f	f0afd04fe56544309b12334be3221a23	Levi's	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://media-www.marks.com/category-content/2024/marks-com-brand-levis/h224-carousel-desktop-1920x866-505.png
eb9abd7ddcca4f1784ea08a9825ebfa4	Adidas Shoes Special Edition	867	74.34	Clothing	t	f0afd04fe56544309b12334be3221a23	Adidas	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://assets.adidas.com/images/w_600,f_auto,q_auto/7336cca14bf8420b929167aed3684db9_9366/INDIA_LIMITED_EDITION_SHOE_MEN_White_IV2140_02_standard_hover_hover_hover.jpg
063f3cbf0a05479795ff0786e7d87d1a	Adidas Shoes Series D	480	7.07	Clothing	t	f0afd04fe56544309b12334be3221a23	Adidas	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://brand.assets.adidas.com/image/upload/f_auto,q_auto,fl_lossy/03_fw23_brand_campaign_launch_plp_originals_shoes_iwp_samba_d_da9a7e2f09.jpg
4aa48721658945b5a2170750f8239f7a	Tablet by Apple	275	498.55	Electronics	f	58bdc21f6d094d80964410d8fc8979c2	Apple	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://images.jdmagicbox.com/quickquotes/images_main/apple-mk772hn-a-ipad-mini-4-tablet-128-gb-20-06-cm-7-9-inch-wi-fi-silver-106619794-al6vp.jpg
b5d21643600f4bdeac2855b506f67c64	Laptop by Sony	877	160.4	Electronics	f	58bdc21f6d094d80964410d8fc8979c2	Sony	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://m.media-amazon.com/images/I/319OlGScQDL.jpg
199ed936dd084afeaeccbfae63d64596	Apple Camera LightYellow	273	241.45	Electronics	t	58bdc21f6d094d80964410d8fc8979c2	Apple	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://www.apple.com/newsroom/images/product/iphone/standard/Apple-iPhone-14-iPhone-14-Plus-yellow-2up-230307_inline.jpg.large.jpg
e4626f53a1274ee0a0e131d7a89bdd5f	HP Smartphone Special Edition	409	148.01	Electronics	t	58bdc21f6d094d80964410d8fc8979c2	HP	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://www.devicespecifications.com/images/model/5f7f2c58/320/main.jpg
5dba32d774ae4d428d20621fc16c6694	Dell Smartphone Series D	442	10.78	Electronics	f	58bdc21f6d094d80964410d8fc8979c2	Dell	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://static1.srcdn.com/wordpress/wp-content/uploads/2022/07/Dell-Mobile-Connect.jpg
c68df9a463424ec7b69e6ce0f9863bb9	HP Tablet Series A	713	95.96	Electronics	f	58bdc21f6d094d80964410d8fc8979c2	HP	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://en.m.wikipedia.org/wiki/File:HP_Tablet_PC_running_Windows_XP_(Tablet_PC_edition)_(2006).jpg
39877c43014a40b5b0d413fdfd01d9f4	Apple Laptop LightBlue	44	102.86	Electronics	f	58bdc21f6d094d80964410d8fc8979c2	Apple	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://www.psero.com/wp-content/uploads/2020/08/sero.tech_20200809_32.jpg
7c0bedad38fd4cb9a58cea8f546b5699	Adidas Dress Special Edition	315	353.32	Clothing	t	d37798211dd04f6eb2879f9e64c41bd7	Adidas	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://assets.adidas.com/images/w_600,f_auto,q_auto/9451cf986acd4c9bb96baed70104d2a2_9366/Blue_Version_Dress_Black_HK7240_HM6.jpg
13d531bbd6384d49be3948933b226ed7	Zara Shoes 72	356	383.05	Clothing	t	d37798211dd04f6eb2879f9e64c41bd7	Zara	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://i.ytimg.com/vi/tYkcWkkkomw/sddefault.jpg
7b880a6e691342f68b7e8dfd5c9cd198	Adidas Jeans Series D	195	256.5	Clothing	f	d37798211dd04f6eb2879f9e64c41bd7	Adidas	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://www.consortium.co.uk/media/catalog/product/cache/1/image/1000x/af097278c5db4767b0fe9bb92fe21690/a/d/adidas-originals-jeans-mint-ton-victory-blue-blue-h01810-cat.jpg
7156eee66b544afe84b4a1f8ae43cf9e	Nike T-Shirt Special Edition	746	80.64	Clothing	t	d37798211dd04f6eb2879f9e64c41bd7	Nike	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/af70dde0-faf9-4928-88a5-c26f0067ab52/AS+M+NK+DF+PRIMARY+SWOOSH+TOP.png
ae5664210c2d435eacbab3872e488886	Adidas T-Shirt Series B	184	320.54	Clothing	t	d37798211dd04f6eb2879f9e64c41bd7	Adidas	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://golfoy.com/media/catalog/product/cache/caa430a59c74b0020df300655c09952e/b/l/black-gq3134_2.jpg
b11141e31793450797c8435e2a7f50bc	Adidas T-Shirt Pro	697	169.23	Clothing	t	d37798211dd04f6eb2879f9e64c41bd7	Adidas	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://assets.myntassets.com/w_412,q_60,dpr_2,fl_progressive/assets/images/26763548/2024/4/22/984e89e9-ce46-40fd-aae2-d594f9df59af1713769757306-ADIDAS-Men-Tshirts-7681713769756898-1.jpg
91d93b07d09a4f6898454a65e0534a14	Nike Jeans Pink	219	117.85	Clothing	f	d37798211dd04f6eb2879f9e64c41bd7	Nike	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/7f141a30-cede-4700-8767-4f5723e37cf6/U+NRG+JACQUEMUS+SWOOSH+PANT.png
8a3f14913d1b4d568a7e175522516c8c	Nike Shoes Pro	437	314.39	Clothing	f	d37798211dd04f6eb2879f9e64c41bd7	Nike	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/6588b4b4-847b-46bc-bb47-aa038f39e28d/M+ZOOM+GP+CHALLENGE+PRO+HC+PRM.png
f3fa8be595cb41ff90d554364e8c8952	Saw by DeWalt	874	95.32	Tools	f	f671c4c05efc4fcd93d9ad6723f1205b	DeWalt	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://images.thdstatic.com/productImages/69046f8c-a1a4-4464-9852-ba7573542bc2/svn/dewalt-circular-saws-dcs571b-64_600.jpg
f8cdc1ea7c18425fad8d8fdf9c6ad3fe	Drill by Bosch	893	268	Tools	t	f671c4c05efc4fcd93d9ad6723f1205b	Bosch	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://inchtools.com/wp-content/uploads/2020/10/bosch-1.jpg
f5d8a17577e0457d9fedd49f4a5e76c7	Drill by Black & Decker	874	259.17	Tools	t	f671c4c05efc4fcd93d9ad6723f1205b	Black & Decker	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/61Y9M9yH9BL.jpg
db9259fcb5a14ed3a6fee4bea5728283	Stanley Drill Green	431	310.89	Tools	t	f671c4c05efc4fcd93d9ad6723f1205b	Stanley	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/71OoN5OAbBL.jpg
f8cab42d545148dca50e45151e1cf6cb	Bosch Drill Special Edition	190	446.19	Tools	t	f671c4c05efc4fcd93d9ad6723f1205b	Bosch	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://www.bosch-pt.co.in/in/en/ocsmedia/275069-54/application-image/1434x828/drill-gbm-350-06011a95f1.png
92a7f3e9f873499db89fc8bcfa039e9f	Black & Decker Hammer Pro	513	144.64	Tools	t	f671c4c05efc4fcd93d9ad6723f1205b	Black & Decker	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/71O70kkyjOL.jpg
4a79535a229c4c6c80a0a83b4a5b6a5c	Drill by DeWalt	932	305.79	Tools	t	f671c4c05efc4fcd93d9ad6723f1205b	DeWalt	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://bynder.sbdinc.com/m/1c060ccfca8e9a0a/webimage-DCD445X1_A3.jpg
61f5395957df489cbdc6697bb76bfae4	Stanley Drill 84	520	284.95	Tools	f	f671c4c05efc4fcd93d9ad6723f1205b	Stanley	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/S/aplus-media/vc/c4299ec5-52fa-4c6e-acf4-32094b7521a1.__CR0,0,750,750_PT0_SX300_V1___.jpg
f4a8cb83562f44b48617e122db067e50	Bosch Hammer LightPink	547	338.91	Tools	t	f671c4c05efc4fcd93d9ad6723f1205b	Bosch	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/A1pqxu1eW2L.jpg
08c6097b9857464a8ee8ae5d487c3e4c	Screwdriver by Bosch	406	496.55	Tools	t	f671c4c05efc4fcd93d9ad6723f1205b	Bosch	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/61BZXBv2xOL.jpg
82be4d5378da40daac6eafa4a21308b5	Sony Camera Series D	981	413.66	Electronics	f	b27350c72c48461496a0f7b6d0f21d18	Sony	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://m.media-amazon.com/images/I/81iE+F72JIL._AC_UF1000,1000_QL80_FMwebp_.jpg
b4b74b0dc6844d6494bbb115eed3667e	Sony Smartphone Pro	786	372.9	Electronics	f	b27350c72c48461496a0f7b6d0f21d18	Sony	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://shreyanshonline.com/wp-content/uploads/2024/08/WhatsApp-Image-2024-08-04-at-13.47.18_fce02c08.jpg
c190bb8f0f004d7ba01c80b56a9f169d	Samsung Smartphone 11	790	51.58	Electronics	f	b27350c72c48461496a0f7b6d0f21d18	Samsung	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://fdn.gsmarena.com/imgroot/news/21/05/samsung-galaxy-a11-android-11-one-ui-3-1-update/-476x249w4/gsmarena_002.jpg
26da04bffe874709bd4ad8f6c5d61dd8	Dell Smartphone Pro	990	424.04	Electronics	t	b27350c72c48461496a0f7b6d0f21d18	Dell	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://media.wired.com/photos/5933badaa24b4b4903a3c4de/master/pass/dell-venue-wp7.jpg
9f8bee2e9ea6414baf301c5c3469d6e5	HP Laptop Series C	738	372.9	Electronics	t	b27350c72c48461496a0f7b6d0f21d18	HP	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://m.media-amazon.com/images/I/81lI-IoPcVL.jpg
eb26cdcb931a417cb09e890bdf34a06f	Sony Camera Special Edition	358	332.52	Electronics	f	cab82bed2ceb4339b3b2b7c48ffcf4ed	Sony	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://media.foto-erhardt.de/images/product_images/original_images/805/sony-dsc-rx100-mark-vii-special-edition-160198028580550304.jpg
59e96720e0ac400888ce8726b28eb555	HP Smartphone DarkOrange	306	283.47	Electronics	t	cab82bed2ceb4339b3b2b7c48ffcf4ed	HP	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://images.jdmagicbox.com/quickquotes/images_main/v29-pro-ram-8-gb-256-gb-space-black-272674529-j8sao5mc.jpg
5006ddd17606483bba91d08b9bc7df87	HP Laptop Special Edition	887	417.51	Electronics	t	cab82bed2ceb4339b3b2b7c48ffcf4ed	HP	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://resize.indiatvnews.com/en/resize/newbucket/400_-/2024/09/hp-laptop-1725351738.jpg
b5fb57b8777f4679a1b5d55238046a0f	Dell Smartphone Pro	899	459.88	Electronics	f	cab82bed2ceb4339b3b2b7c48ffcf4ed	Dell	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://cdn.mos.cms.futurecdn.net/FyN28VkXsEi3KB5Samz2pX-480-80.jpg
22226b38c4424ed885391736b7d2891d	HP Smartphone MediumBlue	738	89.47	Electronics	f	cab82bed2ceb4339b3b2b7c48ffcf4ed	HP	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://m.media-amazon.com/images/I/81GaWdBC5YL._AC_UF350,350_QL80_.jpg
bbaa35f6e2e648d68ae8f3110ccda346	Samsung Smartphone Pro	715	266.77	Electronics	t	cab82bed2ceb4339b3b2b7c48ffcf4ed	Samsung	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://drop.ndtv.com/TECH/product_database/images/752017105734AM_635_samsung_galaxy_j5_pro.jpeg
a2db027c97e741738fbe7de8256c35ac	Smartphone by Apple	310	211.41	Electronics	t	91fad1d8e2cd40adacd932dc6610dc45	Apple	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://media-ik.croma.com/prod/https://media.croma.com/image/upload/v1708678878/Croma%20Assets/Communication/Mobiles/Images/300827_0_e3sa9y.png
5e57087dae5544afacbf7320e93ab1ad	Tablet by Samsung	646	30.01	Electronics	t	91fad1d8e2cd40adacd932dc6610dc45	Samsung	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://images.samsung.com/in/galaxy-tab-s8/feature/buy/GalaxyTab_S8Ultra_AllColorKV_WithSPen_MO.jpg
3908a846300447af9feaf2b26e10cb0b	Samsung Smartphone Pro	241	498.24	Electronics	t	91fad1d8e2cd40adacd932dc6610dc45	Samsung	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://img.global.news.samsung.com/in/wp-content/uploads/2016/09/Samsung-Mobile-22-Dec142869_fnl.jpg
b3066ab3099048bdbaeeb5b82381675c	Dell Camera Pro	377	220.34	Electronics	t	91fad1d8e2cd40adacd932dc6610dc45	Dell	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://i.pcmag.com/imagery/reviews/0445nmumc6IupSr6IqxGOCT-3.fit_lim.size_1050x.jpg
cb755ce4b0584fd0903921983bd41d42	Camera by Sony	133	73.06	Electronics	t	91fad1d8e2cd40adacd932dc6610dc45	Sony	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://gppro.in/wp-content/uploads/2023/04/a7R-V-1.jpg
38ba1cd697404e16a583b14e93698d4d	Apple Camera Pro	467	191.9	Electronics	f	91fad1d8e2cd40adacd932dc6610dc45	Apple	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://www.apple.com/newsroom/images/2024/09/apple-debuts-iphone-16-pro-and-iphone-16-pro-max/article/Apple-iPhone-16-Pro-camera-system-240909_inline.jpg.large.jpg
3e0a340e58da497588f4926d3c9c455e	Table by Wayfair	57	461.73	Furniture	t	0b753b1bba354f6084a717e1f5970a51	Wayfair	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://assets.wfcdn.com/im/84685231/resize-h500-w750%5Ecompr-r85/2458/245862600/default_name.jpg
860be8537a2f48a09b8ea07872c7128a	Haverty's Sofa Special Edition	297	401.35	Furniture	f	0b753b1bba354f6084a717e1f5970a51	Haverty's	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://cdn0.opinion-corp.com/review-media/pictures/47/30/450481/havertys-furniture_junk-overpriced-furniture-201910221687142_4730-gallery.jpeg
9beb93330528472cb04a02e0d664c788	Wayfair Table DeepPink	57	191.57	Furniture	f	0b753b1bba354f6084a717e1f5970a51	Wayfair	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://assets.wfcdn.com/im/98814761/resize-h800-w800%5Ecompr-r85/1568/156867766/Dining+Table+Set+Includes+a+Kitchen+Table+and+Dark+Khaki+Linen+Fabric+Parson+Dining+Chairs%2C+48x48+In.jpg
7161fb17162e407b85210442c0cae608	Haverty's Cabinet Special Edition	925	250.76	Furniture	f	0b753b1bba354f6084a717e1f5970a51	Haverty's	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://res.cloudinary.com/dkqtxtobb/image/upload/f_auto,q_auto:best,w_1500/product-assets/518266/havertys/storage/dressers/used-havertys-traditional-chest-of-drawers.jpeg
c8ec7c2452594768a2342392220f6e32	Ikea Table Pro	130	450.51	Furniture	t	0b753b1bba354f6084a717e1f5970a51	Ikea	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://www.ikea.com/in/en/images/products/trotten-desk-sit-stand-white__1040109_pe840587_s5.jpg
5decf06c397a4d418a365ebb8ddf52d7	Ikea Cabinet Series B	952	396.38	Furniture	f	0b753b1bba354f6084a717e1f5970a51	Ikea	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://www.ikea.com/in/en/images/products/idasen-cabinet-with-smart-lock-beige__0613633_pe686429_s5.jpg
6effd990c4b54823aa7fa151bea55903	Wayfair Table Series D	813	331.23	Furniture	t	0b753b1bba354f6084a717e1f5970a51	Wayfair	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://i.pinimg.com/736x/16/9f/87/169f87e9b1c0c77d50024d6876563e83.jpg
40554091677c4872ab1927bd584595ce	Chair by Wayfair	160	217.21	Furniture	t	0b753b1bba354f6084a717e1f5970a51	Wayfair	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://assets.wfcdn.com/im/70638158/resize-h755-w755%5Ecompr-r85/2619/261925080/Euclid+Upholstered+Accent+Chair+with+Metal+Legs.jpg
faf7587ecf34427f966ac983ad901f90	Makita Saw Special Edition	997	241.79	Tools	f	c148f2bff8e3473b99e07d0bb1c0b91a	Makita	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://makita.in/wp-content/uploads/2020/01/DHS475.jpg
1b16b9f93b2647b5b7b51a7b8f3d992a	Makita Screwdriver Special Edition	220	495.62	Tools	t	c148f2bff8e3473b99e07d0bb1c0b91a	Makita	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://www.toolnation.com/media/catalog/product/cache/16ad731c95996f9681f72c3f48895754/d/l/dlx3090tbx.jpg
b3c505855898469585e5367c395265ba	Makita Hammer 45	425	377.07	Tools	t	c148f2bff8e3473b99e07d0bb1c0b91a	Makita	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/81HgnbKUugS._AC_UF1000,1000_QL80_.jpg
ad8b97c297a64df899c82541c7fc481e	DeWalt Drill LightCyan	504	33.32	Tools	f	c148f2bff8e3473b99e07d0bb1c0b91a	DeWalt	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/51+mNlCigVL._AC_UF1000,1000_QL80_.jpg
0af391ffc33841ebb6d4288b786909af	Black & Decker Saw MediumAquaMarine	580	373.55	Tools	t	c148f2bff8e3473b99e07d0bb1c0b91a	Black & Decker	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/71Cag4xacYL._AC_UF350,350_QL80_.jpg
996b930b94074f3e85e9605b7cc51883	Zara T-Shirt Special Edition	18	316.05	Clothing	f	e9c3a552493e4c0995937029b4fe1ce7	Zara	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://static.toiimg.com/thumb/msid-112677120,width-1280,height-720,resizemode-4/112677120.jpg
7801d52823144440954021b5f0d71929	T-Shirt by Nike	219	435.8	Clothing	f	e9c3a552493e4c0995937029b4fe1ce7	Nike	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://assets.myntassets.com/h_1440,q_100,w_1080/v1/assets/images/24110822/2023/7/20/ba54e893-2808-410a-93f4-759cd5d51fb71689818375699ASMNSWTEEBIGSWOOSHHBR1.jpg
64553054106346b4882bc874c340419b	Zara T-Shirt Special Edition	768	445.62	Clothing	t	e9c3a552493e4c0995937029b4fe1ce7	Zara	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://static.toiimg.com/thumb/msid-112677120,width-1280,height-720,resizemode-4/112677120.jpg
dd4c2e2e3dfd4cb58a8d38ea251840f3	Shoes by Nike	742	292.33	Clothing	t	e9c3a552493e4c0995937029b4fe1ce7	Nike	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/df6a994a-bc85-4637-94bf-3ae4af43a8fe/NIKE+REACTX+INFINITY+RUN+4.png
47c85efc64974f93badc46753f50ccf7	Nike Shoes Special Edition	38	325.17	Clothing	f	e9c3a552493e4c0995937029b4fe1ce7	Nike	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://storage.googleapis.com/shy-pub/187680/1649684963211_SKU-0159_0.jpg
bfcbd320bb7f4e5ca27989b41e087ca3	Hasbro Doll Special Edition	909	187.12	Toys	f	a34756e01e944efbb779574ee5dd7586	Hasbro	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://elenacloset.wordpress.com/wp-content/uploads/2016/01/hasbro-2016-princess-dolls1.png
22b2a571700a450db387db391c77dadc	Fisher-Price Action Figure Pro	562	198.13	Toys	f	a34756e01e944efbb779574ee5dd7586	Fisher-Price	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://ik.imagekit.io/91ubcvvnh3k/tr:w-500/https://cdn8.bigcommerce.com/s-0kvv9/images/stencil/1280x1280/products/149192/208070/apipxuu3u__38714.1483047135.jpg
edd79cf8a29b443f8fdac4b0773e0802	Hasbro Puzzle Series D	144	128.7	Toys	f	a34756e01e944efbb779574ee5dd7586	Hasbro	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/91AVN+jbkAL._AC_UF1000,1000_QL80_.jpg
49a1ed30759249168a58cbea6128fa58	Hasbro Doll Special Edition	773	76.11	Toys	f	a34756e01e944efbb779574ee5dd7586	Hasbro	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://www.youloveit.com/uploads/posts/2022-02/1645172227_youloveit_com_disney_style_series_princess_jasmine.jpg
6cd929aa585e4315add41407d8d2d1fd	Doll by LEGO	303	410.97	Toys	f	a34756e01e944efbb779574ee5dd7586	LEGO	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/81oEk8VKjTL.jpg
93aa0bce19254a13bda1f56d2adc9464	Playmobil Action Figure 51	506	128.82	Toys	t	a34756e01e944efbb779574ee5dd7586	Playmobil	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/51icdIDRIiL._AC_.jpg
7bdaf895d4b74202900da4e6804485a4	Doll by Playmobil	24	12.43	Toys	t	a34756e01e944efbb779574ee5dd7586	Playmobil	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/81DCONr5t4L._AC_UF1000,1000_QL80_.jpg
71161643e85544c697a5f01ef5f17b70	HP Smartphone DarkKhaki	432	155.49	Electronics	t	86d333fd5b75419aa1879e8e5e2cf931	HP	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://m.media-amazon.com/images/I/61KjPM9OWnL._AC_UF1000,1000_QL80_.jpg
97d0cd8ea3214dbeac9136d324a03ee6	Samsung Laptop Series A	733	35.6	Electronics	t	86d333fd5b75419aa1879e8e5e2cf931	Samsung	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://i.ytimg.com/vi/IkJP8K--J5E/maxresdefault.jpg
01926070c6ae440bbcc4d5eb71906cc7	HP Laptop Navy	346	174.72	Electronics	f	86d333fd5b75419aa1879e8e5e2cf931	HP	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://in-media.apjonlinecdn.com/catalog/product/cache/b3b166914d87ce343d4dc5ec5117b502/c/0/c08689354_evo_i5.png
eeb8527641064f0b8ffbd4decf72ea03	Apple Tablet Series C	908	257.38	Electronics	f	86d333fd5b75419aa1879e8e5e2cf931	Apple	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://fs.npstatic.com/userfiles/7687254/image/iPad_Pro_2021/NextPit_Apple_iPad_Pro_2021_usb-w1400h1400.jpg
bb2443475ae14b43b9494ab27c193ccd	Laptop by Dell	277	496.96	Electronics	f	86d333fd5b75419aa1879e8e5e2cf931	Dell	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://m.media-amazon.com/images/I/71I7xDIyINL._AC_UF1000,1000_QL80_.jpg
b363409000664d13bb2ccb135fad698a	Laptop by Dell	902	78.03	Electronics	f	86d333fd5b75419aa1879e8e5e2cf931	Dell	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://i.dell.com/sites/csimages/Banner_Imagery/all/lati-compact-franchise-1920x1440-fy25-hero-module.png
d8aaceb91448407f8cd266a2009845d0	Sony Smartphone Series C	380	238.28	Electronics	t	86d333fd5b75419aa1879e8e5e2cf931	Sony	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://cdn1.smartprix.com/rx-iIbdKytyw-w280-h280/sony-xperia-pro-i.jpg
1442d4ca7c7849dc8ac4c7c1491aacae	Samsung Camera 87	94	205.41	Electronics	t	86d333fd5b75419aa1879e8e5e2cf931	Samsung	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://cdn1.smartprix.com/rx-icMTraHW8-w420-h420/samsung-es91-14-2mp.jpg
1fdeaab3066a4cb4a8f00c497d28a4c0	Stanley Saw Series A	285	173.24	Tools	t	7a6add821b0d47ed9631765f6d619b74	Stanley	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://goodwill.in/pub/media/catalog/product/cache/572bd9c9d88464400730b4ab84fcb211/s/t/stht20373-la_3.jpg
e3050d5cbd784ac988b0cb185bd2edea	Makita Screwdriver 74	603	113.65	Tools	t	7a6add821b0d47ed9631765f6d619b74	Makita	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://images.thdstatic.com/productImages/dff28ac4-d6c2-4d58-830d-2f9bc699e1ce/svn/makita-screw-guns-xsf03z-d4_600.jpg
6171fd93b263483b9ec97c404c33fb17	Bosch Screwdriver 55	626	42.83	Tools	t	7a6add821b0d47ed9631765f6d619b74	Bosch	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://www.bosch-pt.com.au/au/en/ocsmedia/364513-54/application-image/1434x828/magazine-attachment-for-drywall-screwdriver-gma-55-1600a025gd.png
4edbc3debecb43feba664d4fce78f9ef	Bosch Drill Pro	840	216.82	Tools	t	7a6add821b0d47ed9631765f6d619b74	Bosch	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://www.bosch-pt.co.in/in/en/ocsmedia/359781-54/application-image/1434x828/cordless-drill-driver-gsr-185-li-06019k30f0.png
978573ba5723411fa32b2085e3294bd0	Stanley Drill LightSeaGreen	735	377.35	Tools	t	7a6add821b0d47ed9631765f6d619b74	Stanley	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/61lgK4Tn4IL._AC_UF350,350_QL80_.jpg
c3ea0392582649e8817e80e1185a3d7a	LEGO Board Game 84	915	248.52	Toys	t	9b4b09c0870340e2848a73d23bbe0e66	LEGO	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://www.lego.com/cdn/cs/set/assets/bltd6363a3a85577bcf/71816_boxprod_v39_sha.png
7f509ac806234bff8afe9f43d0d8c1e3	Playmobil Board Game Navy	555	241.61	Toys	f	9b4b09c0870340e2848a73d23bbe0e66	Playmobil	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://www.popcultcha.com.au/media/catalog/product/cache/207e23213cf636ccdef205098cf3c8a3/p/i/pirates_1.png
fd7ecd0a0052416699fd76d48482b1a1	Hasbro Action Figure Special Edition	12	451.02	Toys	t	9b4b09c0870340e2848a73d23bbe0e66	Hasbro	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://images-cdn.ubuy.co.in/6521037684c80f0b657671d0-gi-joe-limited-edition-snake-eyes-2-5.jpg
b0b38dc119e74eeea3e9dfc01643e719	Puzzle by LEGO	66	382.61	Toys	t	9b4b09c0870340e2848a73d23bbe0e66	LEGO	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://www.lego.com/cdn/cs/set/assets/blt556b87be53a81cb8/5007066.jpg
6bbbb009aa224737aeaf935adc564d65	Playmobil Board Game Special Edition	93	39.79	Toys	t	9b4b09c0870340e2848a73d23bbe0e66	Playmobil	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://www.lampridis.gr/image/cache/catalog/products/Playmobil/77983-2-1200x1200.jpg
f057914edea14e6a93d328fd2cee8628	Hasbro Doll Series C	632	459.92	Toys	f	9b4b09c0870340e2848a73d23bbe0e66	Hasbro	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://i.ebayimg.com/images/g/GsgAAOSwIWxjnn2q/s-l400.jpg
8344c47debe94707ac3820252ce13aee	LEGO Board Game Pro	535	162.06	Toys	f	9b4b09c0870340e2848a73d23bbe0e66	LEGO	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://ik.imagekit.io/91ubcvvnh3k/tr:w-500/https://cdn8.bigcommerce.com/s-0kvv9/images/stencil/1280x1280/products/119353/82306/apihzjabw__67872.1461295403.jpg
bf3c6736af7b4e4ca9752af9e4891c54	Fisher-Price Action Figure Special Edition	291	397.72	Toys	t	9b4b09c0870340e2848a73d23bbe0e66	Fisher-Price	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/717yBvmL9zL.jpg
85c34e75a0c54f268dcbb3b229f2c182	Samsung Tablet 13	316	39.52	Electronics	f	b0af8f593a754dad8887886067b5574f	Samsung	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://static1.anpoimages.com/wordpress/wp-content/uploads/2022/04/Tab-S8-Ultra-11.jpg
c7b9a777af6c45d39892c9a7f41cf6e6	Smartphone by Dell	263	8.78	Electronics	t	b0af8f593a754dad8887886067b5574f	Dell	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://www.dell.com/uploads/2010/10/8726.Dell-Venue-Pro-Windows-Phone-7-_2800_back-view_29005F00_4.jpg
b3ece9d34e3141f191cc13d1953afc69	Apple Camera Special Edition	326	424.26	Electronics	t	b0af8f593a754dad8887886067b5574f	Apple	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://www.apple.com/newsroom/images/product/iphone/standard/Apple_new-iphone-se-black-camera-and-touch-id_04152020_big.jpg.large.jpg
a1d7aec3f2a04b4b9c283df955a0883c	Apple Tablet LightBlue	750	482.51	Electronics	t	b0af8f593a754dad8887886067b5574f	Apple	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://m.media-amazon.com/images/I/51+1zyLOi3L.jpg
fe773e9164b1431694879501f81ee5d3	Samsung Smartphone Series D	430	284.58	Electronics	t	b0af8f593a754dad8887886067b5574f	Samsung	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://static1.pocketlintimages.com/wordpress/wp-content/uploads/2024/02/galaxy-s21.jpg
58e38a12633d4ac2b6c2f46a64012cf4	Sony Smartphone Pro	87	169.14	Electronics	t	b0af8f593a754dad8887886067b5574f	Sony	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://i.ytimg.com/vi/5siLO-EykNM/maxresdefault.jpg
62d0a72dab9e4659847ed89f3a46233a	Bosch Screwdriver 99	566	308.25	Tools	t	06dde5d120d64b8b9987bfba130248f4	Bosch	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/81ZrFZSf6HL._AC_UF1000,1000_QL80_.jpg
fc031e04a3914d8f857630606abb5c5c	Black & Decker Drill Series D	386	251.01	Tools	t	06dde5d120d64b8b9987bfba130248f4	Black & Decker	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/71HLplpgl5L._AC_UF1000,1000_QL80_.jpg
99b14af499ab46adaf02b6bf3db2297d	Makita Saw Pro	264	206.86	Tools	t	06dde5d120d64b8b9987bfba130248f4	Makita	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/61pc+S55DdL._AC_UF1000,1000_QL80_.jpg
fd877a3c125f43c9a7deda432b3e4ba5	Makita Hammer SaddleBrown	880	410.81	Tools	f	06dde5d120d64b8b9987bfba130248f4	Makita	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://makita.in/wp-content/uploads/2020/01/HR5202C.jpg
b9641ae03545407a97c82169f563f55b	Drill by DeWalt	619	15.82	Tools	t	06dde5d120d64b8b9987bfba130248f4	DeWalt	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/71AjxIKzjvL._AC_UF1000,1000_QL80_.jpg
3de8aa64bf77496eaa5b7a861e8308df	Levi's T-Shirt 8	628	19.86	Clothing	f	41d346e742d34430bc48487d87b0065e	Levi's	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://assets.myntassets.com/h_1440,q_100,w_1080/v1/assets/images/23465372/2023/8/22/819304b0-4c21-4f0d-a72f-b8a48be5882a1692697930186-Levis-Women-Tshirts-6201692697929759-1.jpg
b5964e24b95b4dac9e2b06a9f7b28bae	Zara Dress Pro	264	14.15	Clothing	f	41d346e742d34430bc48487d87b0065e	Zara	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://i.pinimg.com/736x/9e/79/7b/9e797b01ab087851b5f43580e72d8549.jpg
8865c1fafb0547379a36894e2ac5c2cf	T-Shirt by H&M	715	256.85	Clothing	t	41d346e742d34430bc48487d87b0065e	H&M	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://media.vogue.in/wp-content/uploads/2019/07/Stranger-things-tshirt.jpg
0e1f2e76c51a4b0b9a377340f11a4e9a	H&M T-Shirt 77	159	190.98	Clothing	f	41d346e742d34430bc48487d87b0065e	H&M	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://assets.myntassets.com/w_412,q_60,dpr_2,fl_progressive/assets/images/30144747/2024/7/6/24941aff-ee8a-43f9-ba77-181e5ec78b741720278687173HMOversizedT-shirt1.jpg
b0d7dac305a3417492a5f846c53143eb	H&M Shoes Pro	913	374.74	Clothing	f	41d346e742d34430bc48487d87b0065e	H&M	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://assets.myntassets.com/h_1440,q_100,w_1080/v1/assets/images/22066960/2023/2/21/a6cc711f-df0c-43ed-8206-9f08fb2a9b801676981385622Canvashi-toptrainers1.jpg
eacbd978e72e438cb2f83f0e663254f9	Adidas Dress Special Edition	882	398.1	Clothing	f	41d346e742d34430bc48487d87b0065e	Adidas	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://assets.adidas.com/images/w_600,f_auto,q_auto/0587ec9b741e429cba8caed300ae888c_9366/Blue_Version_Dress_Black_HK7240_HM30.jpg
f3f3a6a22faf4b86b82a7eacdae2320a	Tablet by Apple	439	467.93	Electronics	t	2f87d79a535b44bc9eb94ed8f6e4b4e7	Apple	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://m.media-amazon.com/images/I/51s7SMOXbSL._AC_UF1000,1000_QL80_.jpg
adca87e2f4e541068f060b3099923280	Tablet by Samsung	551	167.55	Electronics	f	2f87d79a535b44bc9eb94ed8f6e4b4e7	Samsung	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://images-cdn.ubuy.co.in/64894c0d34a2ef54a6543e55-samsung-galaxy-tab-sm-t550.jpg
5ec052fae9374ab8b61e386c3676a48c	Laptop by Samsung	300	92.28	Electronics	t	2f87d79a535b44bc9eb94ed8f6e4b4e7	Samsung	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://media.croma.com/image/upload/v1724857568/Croma%20Assets/Computers%20Peripherals/Laptop/Images/306178_0_cdpqjb.png
c714d236dd884edc80802650f5897989	Apple Smartphone Series A	627	104.8	Electronics	t	2f87d79a535b44bc9eb94ed8f6e4b4e7	Apple	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://www.apple.com/newsroom/images/2023/09/apple-unveils-iphone-15-pro-and-iphone-15-pro-max/article/Apple-iPhone-15-Pro-lineup-hero-230912_Full-Bleed-Image.jpg.large.jpg
e032996d27f34618bf0fd3ce18b23ad7	Sony Camera 79	255	289.21	Electronics	t	2f87d79a535b44bc9eb94ed8f6e4b4e7	Sony	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://x.imastudent.com/content/0016890_sony-alpha-a6100-dual-lens-mirrorless-camera-16-50mm-and-55-210mm-lens-ilce-6100yb_500.jpeg
ba54815765ed442c851cb3836b6e1ebe	Apple Tablet Series D	727	254.36	Electronics	t	2f87d79a535b44bc9eb94ed8f6e4b4e7	Apple	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://images-cdn.ubuy.co.in/646dadac51d61c61711b546e-apple-mc960ll-a-ipad-2-tablet-16gb-wifi.jpg
4f529456bcef40faa03a6ab544592126	Apple Laptop Pro	783	18.37	Electronics	t	2f87d79a535b44bc9eb94ed8f6e4b4e7	Apple	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://i.ytimg.com/vi/6Ij9PiehENA/maxresdefault.jpg
05a80d037cc740da85d13408e0964015	Samsung Laptop 95	728	411.72	Electronics	f	2f87d79a535b44bc9eb94ed8f6e4b4e7	Samsung	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://cdn1.smartprix.com/rx-i0Wayw9GI-w1200-h1200/0Wayw9GI.jpg
864dfe3c69fb4b2dade3ffd16e2a74d3	HP Laptop Series A	37	377.57	Electronics	f	2f87d79a535b44bc9eb94ed8f6e4b4e7	HP	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://cdn.cs.1worldsync.com/syndication/feeds/hp/inline-content/KV/0/0/B/A/8/00BA83EBCD7017F4DC72B064301B7A600FD2A846_w_400_hero.png
0193a441608c40a885a999afcd7dcbf6	H&M Jeans Yellow	765	30.28	Clothing	t	15592687e3e542ec8461ebb3f5adce72	H&M	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://assets.ajio.com/medias/sys_master/root/20240828/EKEX/66cf3a4e6f60443f313656fa/-473Wx593H-700318385-yellow-MODEL.jpg
c4abe271e9884352acbdd195005e0c82	Zara Jeans 48	412	290.46	Clothing	t	15592687e3e542ec8461ebb3f5adce72	Zara	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://i.pinimg.com/736x/75/ed/1c/75ed1c550040bce85968b2dc08190ca3.jpg
f92879a78cb74bffb6df0d9929ac66d2	Dress by Levi's	633	111.69	Clothing	t	15592687e3e542ec8461ebb3f5adce72	Levi's	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://assets.ajio.com/medias/sys_master/root/hfb/h9d/15773167026206/-473Wx593H-460545645-blue-MODEL.jpg
8f9ceaa9f37a4001a5ab4baad1035b81	H&M Shoes Coral	69	233.76	Clothing	t	15592687e3e542ec8461ebb3f5adce72	H&M	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://i.pinimg.com/736x/fe/9b/e4/fe9be41335e5b078f1e3830e39fdce77.jpg
84cd70aee5ad4523be420d3181781e0f	T-Shirt by Nike	122	492.95	Clothing	f	15592687e3e542ec8461ebb3f5adce72	Nike	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://assets.ajio.com/medias/sys_master/root/20240610/dY6l/6666eca416fd2c6e6a6d57c1/-473Wx593H-469582449-grey-MODEL.jpg
9e1fccc3517b43f1b7fde3c6e93e3cd7	Zara Jeans Special Edition	123	277.12	Clothing	f	15592687e3e542ec8461ebb3f5adce72	Zara	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://sourcingjournal.com/wp-content/uploads/2022/04/zaragoodamerican9.jpg
59f5cbcc6d2e40aaa73472b1d1aeeabf	Levi's Jeans Series B	254	29.21	Clothing	t	15592687e3e542ec8461ebb3f5adce72	Levi's	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://limalimavintage.co.uk/wp-content/uploads/2021/02/IMG_3825-scaled-1280x1280.jpg
0f7b06a17d254c90a67dbe6ffcc05e30	Ikea Cabinet 14	431	284.13	Furniture	f	053f7952bd374ff09704fccd11ca3949	Ikea	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://www.ikea.com/in/en/images/products/metod-wall-cabinet-with-shelves-white-voxtorp-high-gloss-white__0578291_pe669239_s5.jpg
f55f00feab1f46d4b2a8a02357cf3836	Ikea Chair Pro	877	143.56	Furniture	t	053f7952bd374ff09704fccd11ca3949	Ikea	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://www.ikea.com/in/en/images/products/adde-chair-white__0872092_pe716742_s5.jpg
288348895f56403e9a784585f00e3f29	Table by La-Z-Boy	870	57.44	Furniture	f	053f7952bd374ff09704fccd11ca3949	La-Z-Boy	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://content.la-z-boy.com/Images/product/category/tables/large/77022_662935997949.jpg
19e98da1e7214c8d991cf8b9956685a1	Ikea Cabinet 61	14	109.06	Furniture	f	053f7952bd374ff09704fccd11ca3949	Ikea	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://www.ikea.com/in/en/images/products/idanaes-high-cabinet-w-gls-drs-and-1-drawer-white__1021462_pe832133_s5.jpg
af0d50dd197e4a28845530a0a037408c	La-Z-Boy Sofa Special Edition	912	51.03	Furniture	f	053f7952bd374ff09704fccd11ca3949	La-Z-Boy	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://m.media-amazon.com/images/I/81CkzW4d-RL.jpg
d4ed90b3c2ba41fbbe90944a53731211	Ikea Sofa Special Edition	497	24.73	Furniture	f	053f7952bd374ff09704fccd11ca3949	Ikea	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://www.ikea.com/in/en/images/products/paerup-3-seat-sofa-gunnared-dark-grey__1041905_pe841185_s5.jpg
1ed7f034951a41fea58c924b52165332	Dress by H&M	577	438.37	Clothing	t	1ce4d6ce325345e9bea49a53c92e3fa6	H&M	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://www.stylecharade.com/wp-content/uploads/2021/12/HM-Circular-Pink-Dress.jpg
9f7204dce900451facf72530edf443d5	Levi's Dress Series C	246	389.66	Clothing	t	1ce4d6ce325345e9bea49a53c92e3fa6	Levi's	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://assets.myntassets.com/w_412,q_60,dpr_2,fl_progressive/assets/images/16794820/2022/1/25/45ed4705-707c-49ab-8d26-3bb2702fbb011643091279333-Levis-Blue-Shirt-Dress-9671643091278649-1.jpg
c9882abb3e8a4fe38d71d76a362810c9	Nike Jeans Pro	913	62.3	Clothing	f	1ce4d6ce325345e9bea49a53c92e3fa6	Nike	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/5e9aebcd-3815-4edc-bbd0-4d6de1c221f5/G+NP+DF+TGHT+SE%2B.png
dac983f4c23047d0ac11fbaecace3578	Zara Dress Series A	699	28.06	Clothing	f	1ce4d6ce325345e9bea49a53c92e3fa6	Zara	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://via.placeholder.com/500
d682c3274d1048d0a45be3668cb1fd4c	Nike Jeans BurlyWood	567	64.91	Clothing	f	1ce4d6ce325345e9bea49a53c92e3fa6	Nike	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://static.nike.com/a/images/t_default/ea4f8eb0-519b-45c4-8030-a22e04b026c1/AS+W+NSW+ESSNTL+WVN+HR+PNT+CRV.png
7e7d7c27bd78426792eab48d86bcc990	Levi's Shoes Series A	629	229.23	Clothing	f	1ce4d6ce325345e9bea49a53c92e3fa6	Levi's	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://images-cdn.ubuy.co.in/633acdf004c72024e13467e1-levis-mens-ethan-s-wx-casual-fashion.jpg
8bd2fecb2d0b4e14b27089501e2b6ca2	Zara T-Shirt Special Edition	933	312.97	Clothing	t	1ce4d6ce325345e9bea49a53c92e3fa6	Zara	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://static.toiimg.com/thumb/msid-112677120,width-1280,height-720,resizemode-4/112677120.jpg
b59d60acbd0541ec85c03799c13bd978	H&M Jeans Special Edition	927	337.07	Clothing	f	1ce4d6ce325345e9bea49a53c92e3fa6	H&M	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/30064947/2024/6/28/ed23c6ed-d68d-4623-b6cd-93e695717df11719568612629SkinnyHighJeans1.jpg
6ac39204e69f4d8a8e5cd5679668c542	Zara Jeans Special Edition	764	69.51	Clothing	f	1ce4d6ce325345e9bea49a53c92e3fa6	Zara	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://via.placeholder.com/500
f7d3ffa794004836bea703c46c285032	Wayfair Sofa Pro	358	232.17	Furniture	t	8b6bf4c85239494ab6dc54c59811fe62	Wayfair	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://assets.wfcdn.com/im/14913451/resize-h800-w800%5Ecompr-r85/2684/268473789/Kihry+82.6%22+Modern+cotton+and+linen+cushion+3-seater+square+armrest+sofa+with+pillows.jpg
4403a3cedfbe4e6c85f61298b795611d	Ikea Sofa Special Edition	940	16.13	Furniture	f	8b6bf4c85239494ab6dc54c59811fe62	Ikea	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://laviepartagee.com/wp-content/uploads/2015/08/img_30-8-2015_174446.jpg
deaca681e89e4157b7a9c7074972b9d8	La-Z-Boy Table Special Edition	345	23.28	Furniture	f	8b6bf4c85239494ab6dc54c59811fe62	La-Z-Boy	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://www.la-z-boyindia.com/media/cache/img_1960x840/uploads/userfiles/files/Images/Banner1.jpg
5ffbf8b48b7c4ac99bc3e01a85b35b0e	Haverty's Table MediumTurquoise	156	129.69	Furniture	f	8b6bf4c85239494ab6dc54c59811fe62	Haverty's	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://res.cloudinary.com/dkqtxtobb/image/upload/f_auto,q_auto:best,w_1500/product-assets/264879/havertys/tables/dinner-tables/sell-havertys-blue-ridge-extendable-dining-table.jpeg
3fb766d7818e42c982d36279d2dd40b9	Table by Haverty's	679	130.01	Furniture	t	8b6bf4c85239494ab6dc54c59811fe62	Haverty's	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://d6qwfb5pdou4u.cloudfront.net/product-images/1180001-1190000/1187799/1499453319a95a72018a97f2d3643d309a42d5e70b/1500-1500-frame-0.jpg
a0ff55bbf2404591baf7b8f99cf26a21	La-Z-Boy Sofa Series D	130	127.75	Furniture	f	8b6bf4c85239494ab6dc54c59811fe62	La-Z-Boy	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://m.media-amazon.com/images/I/91LgnO4cLmL._AC_UF894,1000_QL80_.jpg
78fe08b899454188ac712c9e29105760	La-Z-Boy Chair Special Edition	278	476.53	Furniture	f	8b6bf4c85239494ab6dc54c59811fe62	La-Z-Boy	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://m.media-amazon.com/images/I/71wj1-mNOjL.jpg
d64dae7b7ba9487db1acbc607f0ad482	Ashley Chair Series A	304	477.28	Furniture	t	8b6bf4c85239494ab6dc54c59811fe62	Ashley	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://m.media-amazon.com/images/I/91dKl-prPlL._AC_UF1000,1000_QL80_.jpg
bc42d58391df4529809edefcb326b09e	Haverty's Cabinet PeachPuff	57	474.2	Furniture	t	8b6bf4c85239494ab6dc54c59811fe62	Haverty's	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://res.cloudinary.com/dkqtxtobb/image/upload/f_auto,q_auto:best,w_1500/product-assets/406586/havertys/storage/cabinets-sideboards/used-havertys-newport-server-with-hutch.jpeg
940d135afb0f4fd89b2077e0b46476a2	Wayfair Cabinet Series A	310	352.55	Furniture	f	8b6bf4c85239494ab6dc54c59811fe62	Wayfair	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/NZ2ZLJ7ECRAITNDW2EDDFNPDPI.png
6d70499e76aa4306aefad1e99a226691	LEGO Action Figure 14	678	123.38	Toys	f	5926e0a3711a49c991c4ac5b532c76ef	LEGO	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://i.ebayimg.com/images/g/cDEAAOSwd0BV3L2P/s-l1200.jpg
d4c4ee0afda347f1a8a53b8b6932e456	Hasbro Puzzle 84	725	181.06	Toys	f	5926e0a3711a49c991c4ac5b532c76ef	Hasbro	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://thumbs.worthpoint.com/zoom/images2/1/0415/05/jigsaw-puzzle-map-united-states-84_1_173c692b4952720f87bff31b16b9e01f.jpg
bbb9c4a6d18141f7bed4518454da7929	Hasbro Action Figure 65	176	170.97	Toys	f	5926e0a3711a49c991c4ac5b532c76ef	Hasbro	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://cdn-prod.scalefast.com/public/assets/img/resized/hasbro-store/28ba9bcab90d82958ce2dbe0a60efb3b_1920_KR.jpg
368b9c8d363a42bbaa79591e58964da9	Playmobil Doll Series D	668	365.53	Toys	f	5926e0a3711a49c991c4ac5b532c76ef	Playmobil	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://i.etsystatic.com/31052101/r/il/2d3824/5740860741/il_fullxfull.5740860741_til7.jpg
c02b7846531c4965bfcc917fdf308350	Hasbro Doll Special Edition	938	339.89	Toys	t	5926e0a3711a49c991c4ac5b532c76ef	Hasbro	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/71sHljAlIWL._AC_UF1000,1000_QL80_.jpg
f9defa19319a4a1190152fb72f245332	Mattel Board Game 24	276	290.54	Toys	f	5926e0a3711a49c991c4ac5b532c76ef	Mattel	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/81LgFwGUXOL.jpg
633646da58c14740b4e477cd368da522	LEGO Action Figure DarkOrchid	315	128.32	Toys	t	5926e0a3711a49c991c4ac5b532c76ef	LEGO	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/81kAUlDUduL._AC_UF1000,1000_QL80_.jpg
49f636e98545426ba4bd7562026ec132	Fisher-Price Doll 3	247	259.83	Toys	t	5926e0a3711a49c991c4ac5b532c76ef	Fisher-Price	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://images-cdn.ubuy.co.in/639642772939a07ae96e7d1a-fisher-price-nickelodeon-shimmer.jpg
d4759df571f444a79c7be3116d42afc9	Hasbro Action Figure Brown	723	268.77	Toys	f	5926e0a3711a49c991c4ac5b532c76ef	Hasbro	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/81NV3liTUOL.jpg
08cfa9e0f3f240f0b94840c51b0f37f3	Hasbro Doll Lime	533	285.03	Toys	t	5926e0a3711a49c991c4ac5b532c76ef	Hasbro	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://media.entertainmentearth.com/assets/images/5ff0ef9b4dd8478eac91ff83ca3226ccxl.jpg
7e62a8500ba74ce4b2a489bc36e97998	Ashley Sofa Series C	785	82.46	Furniture	f	c4862f97ac614f36b84a3111cbf6a967	Ashley	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://cdn.rencdn.com/ashley/high/31901-38-SW-P1-KO.jpg
1f15388747dd4d5e962ab18f4973abaa	Wayfair Table Pro	179	233.95	Furniture	f	c4862f97ac614f36b84a3111cbf6a967	Wayfair	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://assets.wfcdn.com/im/62488874/resize-h800-w800%5Ecompr-r85/2678/267823513/Rahn+Dining+Table.jpg
3ba0cacf5c09466780f6f5bfef020c11	Haverty's Cabinet Series A	166	256.47	Furniture	t	c4862f97ac614f36b84a3111cbf6a967	Haverty's	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://res.cloudinary.com/dkqtxtobb/image/upload/f_auto,q_auto:best,w_1000/product-assets/277308/havertys/storage/filing-bins/havertys-three-drawer-file-cabinet.jpeg
33b224013ad5430daf877c9d2401b35d	Ashley Cabinet Pro	24	265.78	Furniture	f	c4862f97ac614f36b84a3111cbf6a967	Ashley	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://m.media-amazon.com/images/I/717S765WZ2L._AC_UL400_.jpg
1a845d7bed3e43e0a498115389f70ecc	Sofa by Ikea	62	152.07	Furniture	f	c4862f97ac614f36b84a3111cbf6a967	Ikea	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://www.ikea.com/in/en/images/products/paerup-3-seat-sofa-vissle-grey__0985845_pe816830_s5.jpg
44fa517b653848beaaf501aab0a9d5b8	Cabinet by Wayfair	398	47.47	Furniture	f	c4862f97ac614f36b84a3111cbf6a967	Wayfair	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://assets.wfcdn.com/im/13242179/resize-h800-w800%5Ecompr-r85/2894/289457063/Thiago+Accent+Cabinet.jpg
878bc3acf996419b881f4273e566e2b9	Ashley Cabinet Pro	987	453.75	Furniture	f	c4862f97ac614f36b84a3111cbf6a967	Ashley	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://i.pinimg.com/736x/61/30/59/61305985894e83079dc3a30525607737.jpg
99c27509b4cb4701be46f763331c7f67	Haverty's Chair Special Edition	103	26.25	Furniture	t	c4862f97ac614f36b84a3111cbf6a967	Haverty's	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://res.cloudinary.com/dkqtxtobb/image/upload/f_auto,q_auto:best,w_1500/product-assets/282601/havertys/sofas/loveseats/havertys-chair-and-a-half-and-ottoman-used.jpeg
71a467613157436d917102100de2126c	Fisher-Price Puzzle Series B	196	171.74	Toys	f	03d602ed57bb42469c8edf97d1cfd4dd	Fisher-Price	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/71BIHBN1h1L.jpg
f253566cf73c4f43a7aac9c869f22997	LEGO Puzzle 96	679	185.84	Toys	f	03d602ed57bb42469c8edf97d1cfd4dd	LEGO	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/51hnrdnRChL.jpg
63b412e2aa2e4bfdb072dcf871ed84c4	LEGO Puzzle 52	517	137.67	Toys	f	03d602ed57bb42469c8edf97d1cfd4dd	LEGO	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://www.lego.com/cdn/cs/set/assets/blt341ebf4d09f9b465/40752_boxprod_v39_sha.png
51a53c8ade8245ee8a5df22ef383eb0f	Fisher-Price Action Figure Pro	892	298.15	Toys	f	03d602ed57bb42469c8edf97d1cfd4dd	Fisher-Price	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://ik.imagekit.io/91ubcvvnh3k/tr:w-500/https://cdn8.bigcommerce.com/s-0kvv9/images/stencil/1280x1280/products/149192/208070/apipxuu3u__38714.1483047135.jpg
dd4f3c98470d45a3b5b58d3dd5562ce2	Fisher-Price Action Figure Special Edition	282	442.79	Toys	t	03d602ed57bb42469c8edf97d1cfd4dd	Fisher-Price	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/717yBvmL9zL.jpg
dd439a28891c457ea9b76af2942ff653	Playmobil Action Figure AliceBlue	609	178.87	Toys	f	03d602ed57bb42469c8edf97d1cfd4dd	Playmobil	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://www.littleadventboxes.com.au/wp-content/uploads/2021/08/Playmobil-figures-people-blue-blindbags-70566-australia-LR2.jpg
1515415d95514207832d0055fe1d82d3	Playmobil Doll Maroon	969	255.86	Toys	f	03d602ed57bb42469c8edf97d1cfd4dd	Playmobil	{"material": "Plastic", "age_range": "8-12", "battery_required": true}	https://m.media-amazon.com/images/I/71MLgG+Fm2L._AC_UF1000,1000_QL80_.jpg
7ccca99f80d644c094d8a802e3b48c15	Bosch Screwdriver Special Edition	663	318.21	Tools	f	9d1e1669da81441e9e2ac5b24b5c18b2	Bosch	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://www.bosch-diy.com/imagestorage/de-de/27-teiliges-schrauberbit-und-ratschen-set-limited-edition-46675-hires-png-rgb-oneux-296052_w_1920_h_1080.png
591e5d82212044fb9d923af11bfc696a	Hammer by Bosch	653	407.14	Tools	f	9d1e1669da81441e9e2ac5b24b5c18b2	Bosch	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://www.bosch-professional.com/om/en/ocsmedia/5955-54/application-image/1434x828/rotary-hammer-with-sds-plus-gbh-2-26-dre-06112537p0.png
1e752065c4c848aeb7d9da6e71f0dde3	Black & Decker Hammer Series A	121	64.11	Tools	t	9d1e1669da81441e9e2ac5b24b5c18b2	Black & Decker	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://industrywaala.com/wp-content/uploads/2023/04/BLACKDECKER-BCD003C1-QW-Hammer-Drill-10-mm-Chuck-Size-500-W-2.png
28e2c9409b97444abd15684efd421aa0	Makita Hammer Pro	763	243.13	Tools	t	9d1e1669da81441e9e2ac5b24b5c18b2	Makita	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/71wMUeNjffL._AC_UF1000,1000_QL80_.jpg
c9ffc464ea51453faf7fc42044eedbac	Black & Decker Hammer Series C	608	63.11	Tools	f	9d1e1669da81441e9e2ac5b24b5c18b2	Black & Decker	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/71B15OIxYSL._AC_UF1000,1000_QL80_.jpg
a681efd7d56b44549585418fae85542a	Black & Decker Screwdriver 64	219	217.64	Tools	f	9d1e1669da81441e9e2ac5b24b5c18b2	Black & Decker	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/71DzFn4JUAL._AC_UF1000,1000_QL80_FMwebp_.jpg
73b6863690f14bc9a25cc153f566daeb	Stanley Saw Special Edition	76	294.92	Tools	t	9d1e1669da81441e9e2ac5b24b5c18b2	Stanley	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/71XV2OiZqvL._AC_UF1000,1000_QL80_.jpg
62c3524659a149a1a09bd54ed074062a	DeWalt Drill Pro	584	19.09	Tools	f	9d1e1669da81441e9e2ac5b24b5c18b2	DeWalt	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://i.pinimg.com/736x/5d/c6/c8/5dc6c878a8c79014de8b860e0a1b8468.jpg
f5bfe00dc1bc41619e9f59d27d562e65	DeWalt Hammer 47	673	349	Tools	t	9d1e1669da81441e9e2ac5b24b5c18b2	DeWalt	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://hupshenghardware.com/wp-content/uploads/2020/07/Dewalt-D25143K-1.jpg
d81f4d1366b4405eaf093c22185c35ad	Sony Laptop Series B	768	299.42	Electronics	f	ca31f00a75dc454b9a7512554eafef50	Sony	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://m.media-amazon.com/images/I/814QFQDaJkL._AC_UF1000,1000_QL80_.jpg
a0ec209f901f4099ba665a4c499010b0	Apple Tablet Series D	775	340.43	Electronics	t	ca31f00a75dc454b9a7512554eafef50	Apple	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://cdn1.smartprix.com/rx-iZ6N2e21A-w1200-h1200/Z6N2e21A.jpg
30368b56f9f24da59e68d509bf160860	HP Laptop Special Edition	273	237.73	Electronics	t	ca31f00a75dc454b9a7512554eafef50	HP	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://i.ytimg.com/vi/QQgKGeEkOEc/sddefault.jpg
6a2b1d4ba7ae4c279311f00e6f3c8057	Sony Smartphone 74	552	214.62	Electronics	t	ca31f00a75dc454b9a7512554eafef50	Sony	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://www.trustedreviews.com/wp-content/uploads/sites/54/2022/07/SonyXperia-IV-7.jpg
049325febc3e44eb8399e3b8e87dfff8	Sony Tablet Series C	642	148.67	Electronics	t	ca31f00a75dc454b9a7512554eafef50	Sony	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://www.notebookcheck.net/uploads/tx_nbc2/sonyXPERIAz2tab_1.jpg
0dccd373dcaf42b0a25ab3dc3f758fb4	Sony Laptop PaleTurquoise	493	108.65	Electronics	f	ca31f00a75dc454b9a7512554eafef50	Sony	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://m.media-amazon.com/images/I/51VJ03P+hAL._AC_UF1000,1000_QL80_.jpg
d2e8a28f428b4d9bb8e61b94a92c29d1	Smartphone by Dell	338	28.16	Electronics	t	ca31f00a75dc454b9a7512554eafef50	Dell	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://5.imimg.com/data5/ND/US/MY-22340091/dell-mobile-phones-250x250.jpg
7e9a3a6779d14fbc8b6e7fc529dd132e	Dell Camera 80	903	356.22	Electronics	f	ca31f00a75dc454b9a7512554eafef50	Dell	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://m.media-amazon.com/images/I/51aQGbEbbtL._AC_UF1000,1000_QL80_.jpg
185c1dd9f51f4ba48289a420237df13a	Camera by Samsung	102	263.98	Electronics	f	ca31f00a75dc454b9a7512554eafef50	Samsung	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://img.global.news.samsung.com/global/wp-content/uploads/2021/01/Unpacked-2021-Camera-History_main_6-2.jpg
388acd384b5e451f9f5892659cc40350	HP Smartphone Coral	397	381.67	Electronics	f	ca31f00a75dc454b9a7512554eafef50	HP	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://m.media-amazon.com/images/I/51tVQZ8XCxL._AC_UF1000,1000_QL80_.jpg
a4897e287ec34388a9b6fd3f00cd2e2e	H&M T-Shirt 97	897	58.2	Clothing	t	c5cf3b329d3347c68c6c26fbb04fce84	H&M	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://assets.myntassets.com/dpr_2,q_60,w_210,c_limit,fl_progressive/assets/images/17674636/2022/3/29/8c0b5297-bf90-4281-b5a7-05dc592b10901648556843542RegularFitT-shirt1.jpg
bcc30171462142ed8a5ccc36795b1c03	Nike T-Shirt Pro	472	102.01	Clothing	f	c5cf3b329d3347c68c6c26fbb04fce84	Nike	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://assets.ajio.com/medias/sys_master/root/20220604/LcxX/629b4517f997dd03e264855f/-473Wx593H-469193756-blue-MODEL.jpg
326814cd0d224d798bd88d5aa65c7214	Levi's T-Shirt Special Edition	334	121.12	Clothing	f	c5cf3b329d3347c68c6c26fbb04fce84	Levi's	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://i.etsystatic.com/39562853/c/2700/2146/0/57/il/940c97/6013810879/il_340x270.6013810879_8upb.jpg
439b6f1c75f64b1daeb04c9d25db70c4	Zara Shoes 100	705	45.22	Clothing	f	c5cf3b329d3347c68c6c26fbb04fce84	Zara	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://i.pinimg.com/736x/a1/32/4f/a1324fd580be254fff222d56e7e2879e.jpg
f2e1551a45b344c98a5265654facea80	T-Shirt by Nike	654	131.59	Clothing	f	c5cf3b329d3347c68c6c26fbb04fce84	Nike	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/794e80e0-8eff-48f0-adb2-8dc88d09357c/AS+W+NSW+TEE+CLASSICS+BOXY.png
e4b3f79556974d9597b30056f6b8647d	Adidas T-Shirt Series C	266	425.84	Clothing	t	c5cf3b329d3347c68c6c26fbb04fce84	Adidas	{"size": "M", "color": "YellowGreen", "material": "Leather"}	https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/b437f3060acf47a28bb3af3b008bf9e9_9366/83-C_Tee_Blue_IA2486_21_model.jpg
2b3422fa3aeb4dc5919c9e81fa2177d5	La-Z-Boy Cabinet Pro	810	271.79	Furniture	f	2d1323530fbb421896645f498ea809e2	La-Z-Boy	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://www.la-z-boyindia.com/media/cache/img_1960x840/uploads/userfiles/files/Images/Banner1.jpg
4d99fb596e69439da775e97629db802a	La-Z-Boy Table Series A	95	79.38	Furniture	f	2d1323530fbb421896645f498ea809e2	La-Z-Boy	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://content.la-z-boy.com/Images/product/category/tables/large/59023_662935942383.jpg
f2c8eb38ba8041939f21ac33a6e7d722	Wayfair Cabinet ForestGreen	615	77.11	Furniture	t	2d1323530fbb421896645f498ea809e2	Wayfair	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://i.pinimg.com/236x/7b/27/a2/7b27a235aad3d6bb8b960a3dede8d9f7.jpg
c90bcbdab66c41b3b471c4cff3040819	Ikea Chair Series D	151	339.03	Furniture	f	2d1323530fbb421896645f498ea809e2	Ikea	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://www.ikea.com/in/en/images/products/poaeng-rocking-chair-white-stained-oak-veneer-skiftebo-yellow__0937105_pe793576_s5.jpg
58dd86b41ff2401295a7e796b5d84130	Wayfair Sofa Special Edition	914	284.93	Furniture	f	2d1323530fbb421896645f498ea809e2	Wayfair	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://assets.wfcdn.com/im/86421245/resize-h755-w755%5Ecompr-r85/2502/250221581/Serta+Trinity+Full+Size+Convertible+Sleeper+Sofa.jpg
196e2df3c0704d9e935f75674323aa02	Haverty's Sofa 82	527	159.49	Furniture	f	2d1323530fbb421896645f498ea809e2	Haverty's	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://i.pinimg.com/736x/0c/78/22/0c782200a87ab4eecbae5b1b99631232.jpg
2c49d236faf04510b02ec486033adece	Wayfair Table Special Edition	330	358.19	Furniture	t	2d1323530fbb421896645f498ea809e2	Wayfair	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://assets.wfcdn.com/im/83916372/resize-h800-w800%5Ecompr-r85/2790/279076248/Kartrina+59.84%27%27+Tray+Table+Floor+Lamp+with+USB+%26+Type-C+%26+AC+Port.jpg
7a2629051ae841ab91b7ca47a487254b	Ashley Cabinet Special Edition	950	344.64	Furniture	t	2d1323530fbb421896645f498ea809e2	Ashley	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://m.media-amazon.com/images/I/81WjiQgK4FL.jpg
a4a232a4bea146c88567dfbf0bb52f15	Wayfair Cabinet Pro	872	300.49	Furniture	f	2d1323530fbb421896645f498ea809e2	Wayfair	{"color": "DarkOrange", "material": "Plastic", "dimensions": "4x8x3"}	https://assets.wfcdn.com/im/47126447/resize-h800-w800%5Ecompr-r85/1179/117930755/Pro+Series+23.57%22+H+x%C2%A042%22+W+x+14%22+D+Wall+Cabinet.jpg
3b5ffdf3a7cb4110b87574d0f869b97d	Saw by Black & Decker	571	310.01	Tools	f	1309a3b4ab1d493ba034e78ba9a50979	Black & Decker	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/71YMxOF-UtL.jpg
ecb4710e5bf74692a9edd6030c14cf9a	Bosch Saw Special Edition	266	19.82	Tools	t	1309a3b4ab1d493ba034e78ba9a50979	Bosch	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/910Rj7wxl3L._AC_UF350,350_QL80_.jpg
5dcbc10a008b4d3eb272509378de40fd	Black & Decker Saw Special Edition	783	248.52	Tools	t	1309a3b4ab1d493ba034e78ba9a50979	Black & Decker	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://images.thdstatic.com/productImages/b715c75c-69a4-451a-9099-fa60f4dab1e8/svn/black-decker-jigsaws-bdcjs20b-64_1000.jpg
1883b7689c3e4e46a20625690b67def8	Stanley Screwdriver BurlyWood	326	41.78	Tools	t	1309a3b4ab1d493ba034e78ba9a50979	Stanley	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://cdn.moglix.com/p/I/Q/3/d/MINIQ30AIGL3O-xxlarge.jpg
1f2c09257fa74d8a858f0542ba4699c2	Stanley Saw FloralWhite	779	7.5	Tools	t	1309a3b4ab1d493ba034e78ba9a50979	Stanley	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/71mOf2BZOrL._AC_UF1000,1000_QL80_.jpg
c8c499e798184a0aabf70a282ad8514a	Black & Decker Saw 94	569	378.15	Tools	t	9d88ea2f40b0446e9ec0bafaa1ec7aa5	Black & Decker	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/71Cag4xacYL._AC_UF1000,1000_QL80_.jpg
31c4788dc4e0484fb64ac18fa284f648	Saw by Black & Decker	41	179.84	Tools	f	9d88ea2f40b0446e9ec0bafaa1ec7aa5	Black & Decker	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://cdn.shakedeal.com/images/detailed/328/71I2uOI12IL._SL1500_.jpg
39d87869096f44f6816a4ae88f18b4af	Black & Decker Screwdriver Series C	766	308.57	Tools	t	9d88ea2f40b0446e9ec0bafaa1ec7aa5	Black & Decker	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://cdn.shopify.com/s/files/1/0640/1409/0461/files/5b338a503141a5c34ef2aa46f0623776a17603c7.jpg
98f10c6eb04c4d2a891e13bd5080a6ad	Stanley Saw Pro	550	163.9	Tools	t	9d88ea2f40b0446e9ec0bafaa1ec7aa5	Stanley	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/71XV2OiZqvL._AC_UF1000,1000_QL80_.jpg
20d849c3f57f4a94b6d154d388d2c97d	Stanley Hammer Pro	195	72.37	Tools	f	9d88ea2f40b0446e9ec0bafaa1ec7aa5	Stanley	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/61whI51Zf+L._AC_UF350,350_QL80_.jpg
1af5f04ef68c4a43a65cd952db7f55f0	Hammer by Bosch	202	140.83	Tools	t	9d88ea2f40b0446e9ec0bafaa1ec7aa5	Bosch	{"type": "Hand Tool", "material": "Plastic", "warranty_years": 1}	https://m.media-amazon.com/images/I/61oSrOOYimL._AC_UF1000,1000_QL80_.jpg
3052fec3078a4f3ea0f09eb3c904b38b	HP Camera Series A	902	301.67	Electronics	t	2515ec535a814ec086a0286a2009b2a0	HP	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://m.media-amazon.com/images/I/51fNvLVQPjL.jpg
159e938e24e04e7a8149262020899949	Dell Smartphone Pro	419	56.18	Electronics	f	2515ec535a814ec086a0286a2009b2a0	Dell	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://www.dell.com/uploads/2010/10/8688.Dell-Venue-Pro-_2800_no-keyboard_2900_-1.jpg
94f67886be78477693603d6768bb6708	Dell Laptop Pro	162	479.77	Electronics	t	2515ec535a814ec086a0286a2009b2a0	Dell	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://i.dell.com/sites/csimages/Banner_Imagery/all/lati-compact-franchise-1920x1440-fy25-hero-module.png
9dab1496942547fa90d8490b1cd55b9d	Sony Camera Special Edition	182	418.21	Electronics	f	2515ec535a814ec086a0286a2009b2a0	Sony	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://m.media-amazon.com/images/I/81o-J5N9wDL._AC_UF350,350_QL80_.jpg
a9a1ba04b986490e9b6bde1a89b56192	Smartphone by HP	337	410.33	Electronics	t	2515ec535a814ec086a0286a2009b2a0	HP	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://cdn.ndtv.com/tech/images/gadgets/hp_slate_6_voice_tab_ii.jpg
bef08c4622524d5b8d0bc2507f534b44	Samsung Tablet Series B	734	264.9	Electronics	f	2515ec535a814ec086a0286a2009b2a0	Samsung	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://m.media-amazon.com/images/I/71xIC9hShGL.jpg
47dec3964cc5463e835d7f5bdd9786ef	Camera by Apple	964	364.42	Electronics	t	2515ec535a814ec086a0286a2009b2a0	Apple	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://cdn.dxomark.com/wp-content/uploads/medias/post-94778/Apple-iPhone-13-Pro-featured-image-packshot-review.jpg
937605db9a76457ab8bcc0dd87ea7f52	Sony Laptop Pro	383	287.28	Electronics	t	2515ec535a814ec086a0286a2009b2a0	Sony	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://www.thessdreview.com/wp-content/uploads/2013/09/Vaio-Open-Screen-On.jpg
10dd0726791b47bb953b6b04710578d5	Dell Laptop Cyan	102	395.72	Electronics	t	2515ec535a814ec086a0286a2009b2a0	Dell	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://cdn.lidstyles.com/media/catalog/product/cache/1/image/1200x/6b9ffbf72458f4fd2d3cb995d92e8889/d/e/delle5430-yellow_1.jpg
a196425d8f7043139a63cafb9181737e	HP Tablet Olive	663	305.74	Electronics	t	2515ec535a814ec086a0286a2009b2a0	HP	{"color": "AntiqueWhite", "voltage": 220, "wattage": 56}	https://i.pcmag.com/imagery/reviews/07Lqtekmyss7jHNp2qeHZHX-2.fit_scale.size_760x427.v1656528631.jpg
\.


--
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
617ddc23-ecc5-4c08-945f-58f8cb069bdd	f69ef3528ac78483414002e56f038299f395b04d02362e7d83087b7b68252d09	2024-10-09 21:12:48.442349+00	20241009211248_	\N	\N	2024-10-09 21:12:48.429604+00	1
\.


--
-- Name: Godown Godown_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Godown"
    ADD CONSTRAINT "Godown_pkey" PRIMARY KEY (id);


--
-- Name: Item Item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Item"
    ADD CONSTRAINT "Item_pkey" PRIMARY KEY (id);


--
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


--
-- Name: Godown Godown_parentId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Godown"
    ADD CONSTRAINT "Godown_parentId_fkey" FOREIGN KEY ("parentId") REFERENCES public."Godown"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Item Item_godownId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Item"
    ADD CONSTRAINT "Item_godownId_fkey" FOREIGN KEY ("godownId") REFERENCES public."Godown"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;


--
-- PostgreSQL database dump complete
--

