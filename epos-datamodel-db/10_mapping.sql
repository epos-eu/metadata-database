BEGIN;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS public.mapping
(
    id UUID DEFAULT uuid_generate_v4(),
    label character varying(1024),
    variable character varying(1024) NOT NULL,
    required boolean NOT NULL,
    range character varying(1024) NOT NULL,
    defaultvalue character varying(1024),
    minvalue character varying(1024),
    maxvalue character varying(1024),
    property character varying(1024),
    valuepattern character varying(1024),
    read_only_value character varying(1024),
    multiple_values character varying(1024),
    ismappingof UUID,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.mapping
    ADD FOREIGN KEY (ismappingof) REFERENCES public.operation (instance_id);

CREATE TABLE IF NOT EXISTS public.mapping_paramvalue
(
    id UUID DEFAULT uuid_generate_v4(),
    instance_mapping_id UUID NOT NULL,
    paramvalue character varying(1024) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_mapping_id) REFERENCES public.mapping (id)
);

END;
