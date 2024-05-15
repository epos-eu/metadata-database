BEGIN;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS public.softwaresourcecode
(
    uid UUID DEFAULT uuid_generate_v4(),
    name character varying(1024),
    description text,
    licenseURL character varying(1024),
    downloadURL character varying(1024),
    runtimeplatform character varying(1024),
    softwareversion character varying(1024),
    keywords text,
    coderepository character varying(1024),
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

ALTER TABLE IF EXISTS public.softwaresourcecode
    ADD FOREIGN KEY (reviewer_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.softwaresourcecode
    ADD FOREIGN KEY (meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.softwaresourcecode
    ADD FOREIGN KEY (editor_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.softwaresourcecode
    ADD FOREIGN KEY (instance_changed_id)
    REFERENCES public.softwaresourcecode (uid);


CREATE TABLE IF NOT EXISTS public.contactpoint_softwaresourcecode
(
    instance_softwaresourcecode_id UUID NOT NULL,
    instance_contactpoint_id UUID NOT NULL,
    PRIMARY KEY (instance_softwaresourcecode_id, instance_contactpoint_id)
);

ALTER TABLE IF EXISTS public.contactpoint_softwaresourcecode
    ADD FOREIGN KEY (instance_softwaresourcecode_id)
    REFERENCES public.softwaresourcecode (uid);

ALTER TABLE IF EXISTS public.contactpoint_softwaresourcecode
    ADD FOREIGN KEY (instance_contactpoint_id)
    REFERENCES public.contactpoint (instance_id);


CREATE TABLE IF NOT EXISTS public.softwaresourcecode_identifier
(
    id UUID DEFAULT uuid_generate_v4(),
    type character varying(1024) NOT NULL,
    identifier character varying(1024) NOT NULL,
    instance_softwaresourcecode_id UUID NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_softwaresourcecode_id)
    REFERENCES public.softwaresourcecode (uid)
);


CREATE TABLE IF NOT EXISTS public.softwaresourcecode_programminglanguage
(
    id UUID DEFAULT uuid_generate_v4(),
    language character varying(1024) NOT NULL,
    instance_softwaresourcecode_id UUID NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_softwaresourcecode_id)
    REFERENCES public.softwaresourcecode (uid)
);


CREATE TABLE IF NOT EXISTS public.softwaresourcecode_category
(
    category_id UUID NOT NULL,
    instance_softwaresourcecode_id UUID NOT NULL,
    PRIMARY KEY (category_id, instance_softwaresourcecode_id)
);

ALTER TABLE IF EXISTS public.softwaresourcecode_category
    ADD FOREIGN KEY (instance_softwaresourcecode_id)
    REFERENCES public.softwaresourcecode (uid);

ALTER TABLE IF EXISTS public.softwaresourcecode_category
    ADD FOREIGN KEY (category_id)
    REFERENCES public.category (id);

END;
