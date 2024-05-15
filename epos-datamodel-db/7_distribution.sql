BEGIN;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS public.distribution
(
    uid character varying(1024) NOT NULL,
    issued timestamp,
    modified timestamp,
    type character varying(1024),
    format character varying(1024),
    license character varying(1024),
    access_service character varying(1024),
    datapolicy character varying(1024),
    conformsto character varying(1024),
    fileprovenance character varying(1024),
    instance_id UUID DEFAULT uuid_generate_v4(),
    meta_id UUID NOT NULL DEFAULT uuid_generate_v4(),
    instance_changed_id UUID,
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id UUID,
    change_comment character varying(1024),
    reviewer_meta_id UUID,
    review_comment character varying(1024),
    version character varying(1024),
    state character varying(16),
    to_be_deleted boolean,
    PRIMARY KEY (instance_id)
);

ALTER TABLE IF EXISTS public.distribution
    ADD FOREIGN KEY (reviewer_meta_id) REFERENCES public.edm_entity_id (meta_id),
    ADD FOREIGN KEY (editor_meta_id) REFERENCES public.edm_entity_id (meta_id),
    ADD FOREIGN KEY (instance_changed_id) REFERENCES public.distribution (instance_id),
    ADD FOREIGN KEY (meta_id) REFERENCES public.edm_entity_id (meta_id);

CREATE TABLE IF NOT EXISTS public.is_distribution
(
    instance_dataproduct_id UUID NOT NULL,
    instance_distribution_id UUID NOT NULL,
    PRIMARY KEY (instance_dataproduct_id, instance_distribution_id),
    FOREIGN KEY (instance_dataproduct_id) REFERENCES public.dataproduct (instance_id),
    FOREIGN KEY (instance_distribution_id) REFERENCES public.distribution (instance_id)
);

CREATE TABLE IF NOT EXISTS public.distribution_title
(
    id UUID DEFAULT uuid_generate_v4(),
    title character varying(1024) NOT NULL,
    lang character varying(20),
    instance_distribution_id UUID NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_distribution_id) REFERENCES public.distribution (instance_id)
);

CREATE TABLE IF NOT EXISTS public.distribution_description
(
    id UUID DEFAULT uuid_generate_v4(),
    description text NOT NULL,
    lang character varying(20),
    instance_distribution_id UUID NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_distribution_id) REFERENCES public.distribution (instance_id)
);

CREATE TABLE IF NOT EXISTS public.distribution_downloadurl
(
    id UUID DEFAULT uuid_generate_v4(),
    downloadURL character varying(1024) NOT NULL,
    instance_distribution_id UUID NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_distribution_id) REFERENCES public.distribution (instance_id)
);

END;
