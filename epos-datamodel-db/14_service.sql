BEGIN;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS public.service
(
    uid character varying(1024) NOT NULL,
    identifier character varying(1024),
    name character varying(1024),
    description text,
    type character varying(1024),
    pageURL character varying(1024),
    keywords text,
    provider character varying(1024),
    servicecontract character varying(1024),
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

CREATE INDEX IF NOT EXISTS idx_service_state ON public.service(state);

ALTER TABLE IF EXISTS public.service
    ADD FOREIGN KEY (reviewer_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.service
    ADD FOREIGN KEY (provider)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.service
    ADD FOREIGN KEY (servicecontract)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.service
    ADD FOREIGN KEY (meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.service
    ADD FOREIGN KEY (editor_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.service
    ADD FOREIGN KEY (instance_changed_id)
    REFERENCES public.service (instance_id);

CREATE TABLE IF NOT EXISTS public.contactpoint_service
(
    instance_service_id UUID NOT NULL,
    instance_contactpoint_id character varying(1024) NOT NULL,
    PRIMARY KEY (instance_contactpoint_id, instance_service_id)
);

ALTER TABLE IF EXISTS public.contactpoint_service
    ADD FOREIGN KEY (instance_contactpoint_id)
    REFERENCES public.contactpoint (instance_id);

ALTER TABLE IF EXISTS public.contactpoint_service
    ADD FOREIGN KEY (instance_service_id)
    REFERENCES public.service (instance_id);

CREATE TABLE IF NOT EXISTS public.service_spatial
(
    id UUID NOT NULL DEFAULT uuid_generate_v4(),
    location character varying(1024) NOT NULL,
    instance_service_id UUID NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.service_spatial
    ADD FOREIGN KEY (instance_service_id)
    REFERENCES public.service (instance_id);

CREATE TABLE IF NOT EXISTS public.service_temporal
(
    id UUID NOT NULL DEFAULT uuid_generate_v4(),
    startDate timestamp,
    endDate timestamp,
    instance_service_id UUID NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.service_temporal
    ADD FOREIGN KEY (instance_service_id)
    REFERENCES public.service (instance_id);

CREATE TABLE IF NOT EXISTS public.service_category
(
    category_id UUID NOT NULL,
    instance_service_id UUID NOT NULL,
    PRIMARY KEY (instance_service_id, category_id)
);

ALTER TABLE IF EXISTS public.service_category
    ADD FOREIGN KEY (instance_service_id)
    REFERENCES public.service (instance_id);

ALTER TABLE IF EXISTS public.service_category
    ADD FOREIGN KEY (category_id)
    REFERENCES public.category (id);

END;
