--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.3

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
-- Name: my_db; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE api_rest WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';
CREATE USER user_rest WITH encrypted password '123456';
GRANT ALL PRIVILEGES ON database api_rest TO user_rest;
ALTER DATABASE api_rest OWNER TO user_rest;
ALTER DATABASE api_rest OWNER TO postgres;

\connect api_rest

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

SET default_with_oids = false;

--
-- Name: clients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.todos (
    id serial primary key ,
    title character varying(255),
    description text,
    done bool
);

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO user_rest;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO user_rest;