\connect postgres

REVOKE CONNECT ON DATABASE processing_catalogue FROM PUBLIC, processing_catalogue_admin;
REVOKE CONNECT ON DATABASE public FROM PUBLIC, processing_catalogue_admin;

SELECT 
    pg_terminate_backend(pid) 
FROM 
    pg_stat_activity 
WHERE 
    pid <> pg_backend_pid()
    AND datname = 'processing_catalogue'
    ;

DROP SCHEMA public CASCADE;
CREATE SCHEMA public;

DROP DATABASE processing_catalogue;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET escape_string_warning = off;

CREATE DATABASE "processing_catalogue"  OWNER = postgres;

GRANT ALL ON SCHEMA public TO processing_catalogue_admin;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO public;

GRANT ALL ON DATABASE processing_catalogue TO processing_catalogue_admin;

\connect processing_catalogue
