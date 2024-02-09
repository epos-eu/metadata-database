\connect postgres

 SET client_encoding = 'UTF8';
 SET standard_conforming_strings = off;
 SET escape_string_warning = off;

\set AUTOCOMMIT on
ALTER SYSTEM SET max_connections ='5000';
\set AUTOCOMMIT off
select pg_reload_conf();

 CREATE DATABASE "cerif"  OWNER = postgres;

