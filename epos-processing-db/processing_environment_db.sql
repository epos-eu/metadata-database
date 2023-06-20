BEGIN;

CREATE TABLE IF NOT EXISTS public.processing_environment
(
    id character varying(1024) NOT NULL,
    name character varying(1024) NOT NULL,
    description text NOT NULL,
    PRIMARY KEY (id)
    );


CREATE TABLE IF NOT EXISTS public.processing_unit
(
    id character varying(1024) NOT NULL,
    name character varying(1024) NOT NULL,
    environment_unit_url character varying(1024),
    environment_unit_id character varying(1024),
    description text,
    icsd_user_id character varying(1024) NOT NULL,
    processing_environment_type_id character varying(1024) NOT NULL,
    creation_time timestamptz NOT NULL,
    PRIMARY KEY (id)
    );

ALTER TABLE IF EXISTS  public.processing_unit
    ADD FOREIGN KEY (processing_environment_type_id)
    references public.processing_environment (id);


CREATE TABLE IF NOT EXISTS public.resource_item
(
    id character varying(1024) NOT NULL,
    processing_unit_id character varying(1024),
    addition_time timestamptz NOT NULL,
    resource_uid character varying(1024) NOT NULL,
    resource_url character varying(1024),
    file_name character varying(1024),
    PRIMARY KEY (id)
    );

ALTER TABLE IF EXISTS  public.resource_item
    ADD FOREIGN KEY (processing_unit_id)
    references public.processing_unit (id);

CREATE TABLE IF NOT EXISTS public.icsd_user
(
    id character varying(1024) NOT NULL,
    email character varying(1024),
    edu_identifier character varying(1024) NOT NULL,
    first_name character varying(1024),
    last_name character varying(1024),
    PRIMARY KEY (id)
    );

ALTER TABLE IF EXISTS  public.processing_unit
    ADD FOREIGN KEY (icsd_user_id)
    references public.icsd_user (id);

INSERT INTO public.processing_environment (id, name, description) VALUES ('jupyter_identifier', 'Swirrl Api Jupyter', 'Software for Interactive Reproducible Research Labs - an API enabling science gateways to create reproducible workspaces that integrate notebooks and analysis tools.');
INSERT INTO public.processing_environment (id, name, description) VALUES ('enlighten_identifier', 'Swirrl Api Enlighten', 'Enlighten web is a visual data analysis and visualization application. The application is implemented as a web application.');

END;
