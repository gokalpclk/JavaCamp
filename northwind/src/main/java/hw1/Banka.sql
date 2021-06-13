--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

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
-- Name: Adresler; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Adresler" (
    "Id" integer NOT NULL,
    "AdresDetay" character varying(250) NOT NULL,
    "MusteriId" integer NOT NULL
);


ALTER TABLE public."Adresler" OWNER TO postgres;

--
-- Name: Adresler_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Adresler" ALTER COLUMN "Id" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Adresler_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Bilancolar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Bilancolar" (
    "Id" integer NOT NULL,
    "MusteriId" integer NOT NULL,
    "Tarih" date NOT NULL,
    "Tutar" integer NOT NULL
);


ALTER TABLE public."Bilancolar" OWNER TO postgres;

--
-- Name: Bilancolar_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Bilancolar" ALTER COLUMN "Id" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Bilancolar_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: GercekMusteriler; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."GercekMusteriler" (
    "MusteriId" integer NOT NULL,
    "Ad" character varying(50) NOT NULL,
    "Soyad" character varying(50) NOT NULL,
    "TcKimlikNo" character varying(11) NOT NULL
);


ALTER TABLE public."GercekMusteriler" OWNER TO postgres;

--
-- Name: Kanallar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Kanallar" (
    "Id" integer NOT NULL,
    "Ad" character varying(30) NOT NULL
);


ALTER TABLE public."Kanallar" OWNER TO postgres;

--
-- Name: Musteriler; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Musteriler" (
    "Id" integer NOT NULL,
    "KanalId" integer NOT NULL,
    "MusteriNo" character varying NOT NULL
);


ALTER TABLE public."Musteriler" OWNER TO postgres;

--
-- Name: Musteriler_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Musteriler" ALTER COLUMN "Id" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Musteriler_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Sendikalar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Sendikalar" (
    "MusteriId" integer NOT NULL,
    "Ad" character varying(30) NOT NULL
);


ALTER TABLE public."Sendikalar" OWNER TO postgres;

--
-- Name: TicariFaliyetler; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."TicariFaliyetler" (
    "Id" integer NOT NULL,
    "GercekMusteriId" integer NOT NULL,
    "BaslangicTarihi" date NOT NULL
);


ALTER TABLE public."TicariFaliyetler" OWNER TO postgres;

--
-- Name: TicariFaliyetler_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."TicariFaliyetler" ALTER COLUMN "Id" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."TicariFaliyetler_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: TuzelMusteriler; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."TuzelMusteriler" (
    "MusteriId" integer NOT NULL,
    "Unvan" character varying(50) NOT NULL,
    "VergiNo" character varying(10) NOT NULL
);


ALTER TABLE public."TuzelMusteriler" OWNER TO postgres;

--
-- Data for Name: Adresler; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Adresler" ("Id", "AdresDetay", "MusteriId") FROM stdin;
\.


--
-- Data for Name: Bilancolar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Bilancolar" ("Id", "MusteriId", "Tarih", "Tutar") FROM stdin;
\.


--
-- Data for Name: GercekMusteriler; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."GercekMusteriler" ("MusteriId", "Ad", "Soyad", "TcKimlikNo") FROM stdin;
\.


--
-- Data for Name: Kanallar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Kanallar" ("Id", "Ad") FROM stdin;
\.


--
-- Data for Name: Musteriler; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Musteriler" ("Id", "KanalId", "MusteriNo") FROM stdin;
\.


--
-- Data for Name: Sendikalar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Sendikalar" ("MusteriId", "Ad") FROM stdin;
\.


--
-- Data for Name: TicariFaliyetler; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."TicariFaliyetler" ("Id", "GercekMusteriId", "BaslangicTarihi") FROM stdin;
\.


--
-- Data for Name: TuzelMusteriler; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."TuzelMusteriler" ("MusteriId", "Unvan", "VergiNo") FROM stdin;
\.


--
-- Name: Adresler_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Adresler_Id_seq"', 1, false);


--
-- Name: Bilancolar_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Bilancolar_Id_seq"', 1, false);


--
-- Name: Musteriler_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Musteriler_Id_seq"', 1, false);


--
-- Name: TicariFaliyetler_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."TicariFaliyetler_Id_seq"', 1, false);


--
-- Name: Adresler Adresler_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Adresler"
    ADD CONSTRAINT "Adresler_pkey" PRIMARY KEY ("Id");


--
-- Name: Bilancolar Bilancolar_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Bilancolar"
    ADD CONSTRAINT "Bilancolar_pkey" PRIMARY KEY ("Id");


--
-- Name: GercekMusteriler GercekMusteriler_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GercekMusteriler"
    ADD CONSTRAINT "GercekMusteriler_pkey" PRIMARY KEY ("MusteriId");


--
-- Name: Kanallar Kanallar_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kanallar"
    ADD CONSTRAINT "Kanallar_pkey" PRIMARY KEY ("Id");


--
-- Name: Musteriler Musteriler_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Musteriler"
    ADD CONSTRAINT "Musteriler_pkey" PRIMARY KEY ("Id");


--
-- Name: Sendikalar Sendikalar_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sendikalar"
    ADD CONSTRAINT "Sendikalar_pkey" PRIMARY KEY ("MusteriId");


--
-- Name: TicariFaliyetler TicariFaliyetler_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TicariFaliyetler"
    ADD CONSTRAINT "TicariFaliyetler_pkey" PRIMARY KEY ("Id");


--
-- Name: TuzelMusteriler TuzelMusteriler_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TuzelMusteriler"
    ADD CONSTRAINT "TuzelMusteriler_pkey" PRIMARY KEY ("MusteriId");


--
-- Name: Adresler Adresler_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Adresler"
    ADD CONSTRAINT "Adresler_fkey" FOREIGN KEY ("MusteriId") REFERENCES public."Musteriler"("Id") NOT VALID;


--
-- Name: Bilancolar Bilancolar_MusteriId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Bilancolar"
    ADD CONSTRAINT "Bilancolar_MusteriId_fkey" FOREIGN KEY ("MusteriId") REFERENCES public."Musteriler"("Id") NOT VALID;


--
-- Name: GercekMusteriler GercekMusteriler_MusteriId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GercekMusteriler"
    ADD CONSTRAINT "GercekMusteriler_MusteriId_fkey" FOREIGN KEY ("MusteriId") REFERENCES public."Musteriler"("Id") NOT VALID;


--
-- Name: Musteriler Musteriler_KanalId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Musteriler"
    ADD CONSTRAINT "Musteriler_KanalId_fkey" FOREIGN KEY ("KanalId") REFERENCES public."Kanallar"("Id") NOT VALID;


--
-- Name: Sendikalar Sendikalar_MusteriId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sendikalar"
    ADD CONSTRAINT "Sendikalar_MusteriId_fkey" FOREIGN KEY ("MusteriId") REFERENCES public."Musteriler"("Id") NOT VALID;


--
-- Name: TicariFaliyetler TicariFaliyetler_GercekMusteriId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TicariFaliyetler"
    ADD CONSTRAINT "TicariFaliyetler_GercekMusteriId_fkey" FOREIGN KEY ("GercekMusteriId") REFERENCES public."GercekMusteriler"("MusteriId") NOT VALID;


--
-- Name: TuzelMusteriler TuzelMusteriler_MusteriId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TuzelMusteriler"
    ADD CONSTRAINT "TuzelMusteriler_MusteriId_fkey" FOREIGN KEY ("MusteriId") REFERENCES public."Musteriler"("Id") NOT VALID;


--
-- PostgreSQL database dump complete
--

