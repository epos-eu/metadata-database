BEGIN;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS public.facility
(
    uid character varying(1024) NOT NULL,
    identifier character varying(1024),
    description text,
    title character varying(1024),
    type character(1024),
    address_id UUID,
    owner UUID,
    keywords text,
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

CREATE INDEX IF NOT EXISTS idx_facility_state ON public.facility(state);

ALTER TABLE IF EXISTS public.facility
    ADD FOREIGN KEY (reviewer_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.facility
    ADD FOREIGN KEY (owner)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.facility
    ADD FOREIGN KEY (meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.facility
    ADD FOREIGN KEY (editor_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.facility
    ADD FOREIGN KEY (instance_changed_id)
    REFERENCES public.facility (instance_id);

CREATE TABLE IF NOT EXISTS public.contactpoint_facility
(
    instance_facility_id UUID NOT NULL,
    instance_contactpoint_id UUID NOT NULL,
    PRIMARY KEY (instance_facility_id, instance_contactpoint_id)
);

CREATE TABLE IF NOT EXISTS public.facility_pageurl
(
    id UUID NOT NULL DEFAULT uuid_generate_v4(),
    pageURL character varying(1024),
    instance_facility_id UUID NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.facility_service
(
    instance_facility_id UUID NOT NULL,
    instance_service_id UUID NOT NULL,
    PRIMARY KEY (instance_facility_id, instance_service_id)
);

CREATE TABLE IF NOT EXISTS public.facility_facility
(
    instance_facility1_id UUID NOT NULL,
    instance_facility2_id UUID NOT NULL,
    PRIMARY KEY (instance_facility1_id, instance_facility2_id)
);

CREATE TABLE IF NOT EXISTS public.facility_category
(
    category_id UUID NOT NULL,
    instance_facility_id UUID NOT NULL,
    PRIMARY KEY (instance_facility_id, category_id)
);

CREATE TABLE IF NOT EXISTS public.facility_spatial
(
    id UUID NOT NULL DEFAULT uuid_generate_v4(),
    location character varying(1024) NOT NULL,
    instance_facility_id UUID NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.contactpoint_facility
    ADD FOREIGN KEY (instance_facility_id)
    REFERENCES public.facility (instance_id);

ALTER TABLE IF EXISTS public.contactpoint_facility
    ADD FOREIGN KEY (instance_contactpoint_id)
    REFERENCES public.contactpoint (instance_id);

ALTER TABLE IF EXISTS public.facility_pageurl
    ADD FOREIGN KEY (instance_facility_id)
    REFERENCES public.facility (instance_id);

ALTER TABLE IF EXISTS public.facility_service
    ADD FOREIGN KEY (instance_facility_id)
    REFERENCES public.facility (instance_id);

ALTER TABLE IF EXISTS public.facility_service
    ADD FOREIGN KEY (instance_service_id)
    REFERENCES public.service (instance_id);

ALTER TABLE IF EXISTS public.facility_facility
    ADD FOREIGN KEY (instance_facility1_id)
    REFERENCES public.facility (instance_id);

ALTER TABLE IF EXISTS public.facility_facility
    ADD FOREIGN KEY (instance_facility2_id)
    REFERENCES public.facility (instance_id);

ALTER TABLE IF EXISTS public.facility_category
    ADD FOREIGN KEY (instance_facility_id)
    REFERENCES public.facility (instance_id);

ALTER TABLE IF EXISTS public.facility_category
    ADD FOREIGN KEY (category_id)
    REFERENCES public.category (id);

ALTER TABLE IF EXISTS public.facility_spatial
    ADD FOREIGN KEY (instance_facility_id)
    REFERENCES public.facility (instance_id);

END;
