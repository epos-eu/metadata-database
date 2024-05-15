BEGIN;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS public.publication
(
    uid character varying(1024) NOT NULL,
    name character varying(1024) NOT NULL,
    published timestamp,
    abstract character varying(1024),
    licenseURL character varying(1024),
    keywords text,
    issn character varying(1024),
    pages integer,
    volumenumber character varying(1024),
    author character varying(1024) NOT NULL,
    publisher character varying(1024),
    fileprovenance character varying(1024),
    instance_id UUID DEFAULT uuid_generate_v4(),
    meta_id UUID NOT NULL,
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

CREATE INDEX IF NOT EXISTS idx_publication_state ON public.publication(state);

ALTER TABLE IF EXISTS public.publication
    ADD FOREIGN KEY (reviewer_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.publication
    ADD FOREIGN KEY (meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.publication
    ADD FOREIGN KEY (editor_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.publication
    ADD FOREIGN KEY (instance_changed_id)
    REFERENCES public.publication (instance_id);

ALTER TABLE IF EXISTS public.publication
    ADD FOREIGN KEY (publisher)
    REFERENCES public.edm_entity_id (meta_id);

CREATE TABLE IF NOT EXISTS public.contributor
(
    meta_person_id UUID NOT NULL,
    instance_publication_id UUID NOT NULL,
    PRIMARY KEY (meta_person_id, instance_publication_id)
);

ALTER TABLE IF EXISTS public.contributor
    ADD FOREIGN KEY (meta_person_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.contributor
    ADD FOREIGN KEY (instance_publication_id)
    REFERENCES public.publication (instance_id);

CREATE TABLE IF NOT EXISTS public.publication_category
(
    category_id UUID NOT NULL,
    instance_publication_id UUID NOT NULL,
    PRIMARY KEY (category_id, instance_publication_id)
);

ALTER TABLE IF EXISTS public.publication_category
    ADD FOREIGN KEY (instance_publication_id)
    REFERENCES public.publication (instance_id);

ALTER TABLE IF EXISTS public.publication_category
    ADD FOREIGN KEY (category_id)
    REFERENCES public.category (id);

CREATE TABLE IF NOT EXISTS public.publication_identifier
(
    id UUID NOT NULL DEFAULT uuid_generate_v4(),
    type character varying(1024) NOT NULL,
    identifier character varying(1024) NOT NULL,
    instance_publication_id UUID NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.publication_identifier
    ADD FOREIGN KEY (instance_publication_id)
    REFERENCES public.publication (instance_id);

END;
