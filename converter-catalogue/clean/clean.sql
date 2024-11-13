\connect postgres

REVOKE CONNECT ON DATABASE converter_catalogue FROM PUBLIC, converter_catalogue_admin;
REVOKE CONNECT ON DATABASE public FROM PUBLIC, converter_catalogue_admin;

SELECT 
    pg_terminate_backend(pid) 
FROM 
    pg_stat_activity 
WHERE 
    pid <> pg_backend_pid()
    AND datname = 'converter_catalogue'
    ;

DROP SCHEMA public CASCADE;
CREATE SCHEMA public;

DROP DATABASE converter_catalogue;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET escape_string_warning = off;

CREATE DATABASE "converter_catalogue"  OWNER = postgres;

GRANT ALL ON SCHEMA public TO converter_catalogue_admin;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO public;

GRANT ALL ON DATABASE converter_catalogue TO converter_catalogue_admin;

\connect converter_catalogue
