BEGIN;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS public.softwareapplication
(
    uid UUID DEFAULT uuid_generate_v4(),
    name character varying(1024),
    description text,
    downloadURL character varying(1024),
    licenseURL character varying(1024),
    softwareversion character varying(1024),
    keywords text,
    requirements character varying(1024),
    installURL character varying(1024),
    mainentityofpage character varying(1024),
    fileprovenance character varying(1024),
    instance_id UUID,
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
    PRIMARY KEY (uid)
);

ALTER TABLE IF EXISTS public.softwareapplication
    ADD FOREIGN KEY (reviewer_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.softwareapplication
    ADD FOREIGN KEY (meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.softwareapplication
    ADD FOREIGN KEY (editor_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.softwareapplication
    ADD FOREIGN KEY (instance_changed_id)
    REFERENCES public.softwareapplication (uid);


CREATE TABLE IF NOT EXISTS public.contactpoint_softwareapplication
(
    instance_softwareapplication_id UUID NOT NULL,
    instance_contactpoint_id UUID NOT NULL,
    PRIMARY KEY (instance_softwareapplication_id, instance_contactpoint_id)
);

ALTER TABLE IF EXISTS public.contactpoint_softwareapplication
    ADD FOREIGN KEY (instance_softwareapplication_id)
    REFERENCES public.softwareapplication (uid);

ALTER TABLE IF EXISTS public.contactpoint_softwareapplication
    ADD FOREIGN KEY (instance_contactpoint_id)
    REFERENCES public.contactpoint (instance_id);


CREATE TABLE IF NOT EXISTS public.softwareapplication_identifier
(
    id UUID DEFAULT uuid_generate_v4(),
    type character varying(1024) NOT NULL,
    identifier character varying(1024) NOT NULL,
    instance_softwareapplication_id UUID NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_softwareapplication_id)
    REFERENCES public.softwareapplication (uid)
);


CREATE TABLE IF NOT EXISTS public.softwareapplication_parameters
(
    id UUID DEFAULT uuid_generate_v4(),
    encodingformat character varying(1024),
    conformsto character varying(1024),
    action character varying(1024) NOT NULL,
    instance_softwareapplication_id UUID NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_softwareapplication_id)
    REFERENCES public.softwareapplication (uid)
);


CREATE TABLE IF NOT EXISTS public.softwareapplication_operation
(
    instance_operation_id UUID NOT NULL,
    instance_softwareapplication_id UUID NOT NULL,
    PRIMARY KEY (instance_softwareapplication_id, instance_operation_id)
);

ALTER TABLE IF EXISTS public.softwareapplication_operation
    ADD FOREIGN KEY (instance_softwareapplication_id)
    REFERENCES public.softwareapplication (uid);

ALTER TABLE IF EXISTS public.softwareapplication_operation
    ADD FOREIGN KEY (instance_operation_id)
    REFERENCES public.operation (instance_id);


CREATE TABLE IF NOT EXISTS public.softwareapplication_category
(
    category_id UUID NOT NULL,
    instance_softwareapplication_id UUID NOT NULL,
    PRIMARY KEY (instance_softwareapplication_id, category_id)
);

ALTER TABLE IF EXISTS public.softwareapplication_category
    ADD FOREIGN KEY (instance_softwareapplication_id)
    REFERENCES public.softwareapplication (uid);

ALTER TABLE IF EXISTS public.softwareapplication_category
    ADD FOREIGN KEY (category_id)
    REFERENCES public.category (id);

END;
