\connect postgres

REVOKE CONNECT ON DATABASE sharing_catalogue FROM PUBLIC, sharing_catalogue_admin;
REVOKE CONNECT ON DATABASE public FROM PUBLIC, sharing_catalogue_admin;

SELECT 
    pg_terminate_backend(pid) 
FROM 
    pg_stat_activity 
WHERE 
    pid <> pg_backend_pid()
    AND datname = 'sharing_catalogue'
    ;

DROP SCHEMA public CASCADE;
CREATE SCHEMA public;

DROP DATABASE sharing_catalogue;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET escape_string_warning = off;

CREATE DATABASE "sharing_catalogue"  OWNER = postgres;

GRANT ALL ON SCHEMA public TO sharing_catalogue_admin;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO public;

GRANT ALL ON DATABASE sharing_catalogue TO sharing_catalogue_admin;

\connect sharing_catalogue
