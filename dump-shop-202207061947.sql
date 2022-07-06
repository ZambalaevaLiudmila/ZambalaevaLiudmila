--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

-- Started on 2022-07-06 19:47:06

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

--
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 3327 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 214 (class 1259 OID 16447)
-- Name: basket; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.basket (
    id integer NOT NULL,
    id_customer character varying,
    id_item character varying
);


ALTER TABLE public.basket OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16446)
-- Name: basket_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.basket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.basket_id_seq OWNER TO postgres;

--
-- TOC entry 3328 (class 0 OID 0)
-- Dependencies: 213
-- Name: basket_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.basket_id_seq OWNED BY public.basket.id;


--
-- TOC entry 210 (class 1259 OID 16433)
-- Name: client; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.client (
    id integer NOT NULL,
    first_name character varying,
    family_name character varying,
    birthday date,
    city character varying,
    tel_number character varying,
    email character varying,
    balance real
);


ALTER TABLE public.client OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16432)
-- Name: client_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.client_id_seq OWNER TO postgres;

--
-- TOC entry 3329 (class 0 OID 0)
-- Dependencies: 209
-- Name: client_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.client_id_seq OWNED BY public.client.id;


--
-- TOC entry 212 (class 1259 OID 16440)
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    id integer NOT NULL,
    title character varying,
    description text,
    batch_number character varying,
    amount integer,
    price numeric(10,2)
);


ALTER TABLE public.product OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16439)
-- Name: product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_id_seq OWNER TO postgres;

--
-- TOC entry 3330 (class 0 OID 0)
-- Dependencies: 211
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;


--
-- TOC entry 3176 (class 2604 OID 16450)
-- Name: basket id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket ALTER COLUMN id SET DEFAULT nextval('public.basket_id_seq'::regclass);


--
-- TOC entry 3174 (class 2604 OID 16436)
-- Name: client id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client ALTER COLUMN id SET DEFAULT nextval('public.client_id_seq'::regclass);


--
-- TOC entry 3175 (class 2604 OID 16443)
-- Name: product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);


--
-- TOC entry 3321 (class 0 OID 16447)
-- Dependencies: 214
-- Data for Name: basket; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.basket (id, id_customer, id_item) FROM stdin;
\.


--
-- TOC entry 3317 (class 0 OID 16433)
-- Dependencies: 210
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.client (id, first_name, family_name, birthday, city, tel_number, email, balance) FROM stdin;
1	Aleksandr	Griboedov	1990-11-12	Rostov	8(914)0586392	greatgrib@mail.ru	60.23
2	Boris	Vernih	1985-10-11	Tver	8(950)6287495	boris1985verniy@mail.ru	450.5
3	Vera	Krasnova	1977-09-10	Bryansk	8(999)4521892	krasna77vera@mail.ru	200.98
4	Genadiy	Kriger	1980-08-09	Vitebsk	8(999)4651235	kriggena@mail.ru	560.23
5	Dmitriy	Popov	1979-07-08	Tver	8(914)5629873	dimdimpopov@mail.ru	45
6	Elena	Bolshakova	1988-06-07	Voronezh	8(999)6592891	elavernih@mail.ru	150.99
7	Janna	Timofeeva	1989-05-06	Jukov	8(914)8749263	janna1989tim@mail.ru	200
8	Zina	Sidorova	1999-04-05	Zaraisk	8(998)1568923	zena1992new@mail.ru	5.01
9	Igor	Matveev	1997-03-04	Ivanovo	8(999)5694873	matveev97i@mail.ru	500.01
10	Kiril	Fedorov	1990-02-03	Ivangorod	8(914)8745612	fedkiril990@mail.ru	100.01
\.


--
-- TOC entry 3319 (class 0 OID 16440)
-- Dependencies: 212
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (id, title, description, batch_number, amount, price) FROM stdin;
1	Zasmotris100	bezlimitniy internet 100 Mb/sek, TV134, ivi, Movix	zas100	50000	464.99
2	Zasmotris250	bezlimitniy internet 250 Mb/sek, TV153, ivi, Movix	zas250	100000	514.99
3	Zasmotris500	bezlimitniy internet 500 Mb/sek, TV189, ivi, Movix, Amediateka	zas500	210000	614.99
4	Zasmotris100Kino	bezlimitniy internet 100 Mb/sek, TV134, Kinopoisk, Movix	zas100kino	50000	464.99
5	Zasmotris250Kino	bezlimitniy internet 250 Mb/sek, TV153, Kinopoisk, Movix	zas250kino	55000	514.99
6	Zasmotris500Kino	bezlimitniy internet 500 Mb/sek, TV153, Kinopoisk, Movix	zas500kino	58000	614.99
7	Razvlekatelniy100	TV134, Music, 1kinoteatr, internet 100Mb/sek	razv100	54000	744.99
8	Razvlekatelniy250	TV153, Music, 1kinoteatr, internet 250Mb/sek	razv250	40000	844.99
9	Razvlekatelniy500	TV189, Music, 1kinoteatr, internet 500Mb/sek	razv500	55000	944.99
\.


--
-- TOC entry 3331 (class 0 OID 0)
-- Dependencies: 213
-- Name: basket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.basket_id_seq', 1, false);


--
-- TOC entry 3332 (class 0 OID 0)
-- Dependencies: 209
-- Name: client_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.client_id_seq', 10, true);


--
-- TOC entry 3333 (class 0 OID 0)
-- Dependencies: 211
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_id_seq', 28, true);


-- Completed on 2022-07-06 19:47:06

--
-- PostgreSQL database dump complete
--

