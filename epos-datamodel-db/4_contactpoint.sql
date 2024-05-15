BEGIN;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS public.contactpoint
(
    uid character varying(1024) NOT NULL,
    role character varying(1024),
    meta_person_id UUID,
    meta_organization_id UUID,
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

ALTER TABLE IF EXISTS public.contactpoint
    ADD FOREIGN KEY (reviewer_meta_id) REFERENCES public.edm_entity_id (meta_id),
    ADD FOREIGN KEY (meta_person_id) REFERENCES public.edm_entity_id (meta_id),
    ADD FOREIGN KEY (meta_organization_id) REFERENCES public.edm_entity_id (meta_id),
    ADD FOREIGN KEY (editor_meta_id) REFERENCES public.edm_entity_id (meta_id),
    ADD FOREIGN KEY (meta_id) REFERENCES public.edm_entity_id (meta_id),
    ADD FOREIGN KEY (instance_changed_id) REFERENCES public.contactpoint (instance_id);

CREATE TABLE IF NOT EXISTS public.contactpoint_email
(
    id UUID DEFAULT uuid_generate_v4(),
    email character varying(1024),
    instance_contactpoint_id UUID NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_contactpoint_id) REFERENCES public.contactpoint (instance_id)
);

CREATE TABLE IF NOT EXISTS public.contactpoint_language
(
    id UUID DEFAULT uuid_generate_v4(),
    language character varying(1024),
    instance_contactpoint_id UUID NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_contactpoint_id) REFERENCES public.contactpoint (instance_id)
);

CREATE TABLE IF NOT EXISTS public.contactpoint_telephone
(
    id UUID DEFAULT uuid_generate_v4(),
    telnumber character varying(1024) NOT NULL,
    instance_contactpoint_id UUID NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_contactpoint_id) REFERENCES public.contactpoint (instance_id)
);

END;
