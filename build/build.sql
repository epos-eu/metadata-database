\connect postgres

 SET client_encoding = 'UTF8';
 SET standard_conforming_strings = off;
 SET escape_string_warning = off;

ALTER SYSTEM SET max_connections ='5000';
select pg_reload_conf();

 CREATE DATABASE "cerif"  OWNER = postgres;

