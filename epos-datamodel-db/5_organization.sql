BEGIN;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS public.organization
(
    uid character varying(1024) NOT NULL,
    acronym character varying(1024),
    leicode character varying(1024),
    address_id UUID,
    logo character varying(1024),
    URL character varying(1024),
    type character varying(1024),
    maturity character varying(1024),
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

ALTER TABLE IF EXISTS public.organization
    ADD FOREIGN KEY (reviewer_meta_id) REFERENCES public.edm_entity_id (meta_id),
    ADD FOREIGN KEY (meta_id) REFERENCES public.edm_entity_id (meta_id),
    ADD FOREIGN KEY (editor_meta_id) REFERENCES public.edm_entity_id (meta_id),
    ADD FOREIGN KEY (instance_changed_id) REFERENCES public.organization (instance_id),
    ADD FOREIGN KEY (address_id) REFERENCES public.address (id);

CREATE TABLE IF NOT EXISTS public.memberof
(
    instance_organization1_id UUID NOT NULL,
    instance_organization2_id UUID NOT NULL,
    PRIMARY KEY (instance_organization1_id, instance_organization2_id),
    FOREIGN KEY (instance_organization1_id) REFERENCES public.organization (instance_id),
    FOREIGN KEY (instance_organization2_id) REFERENCES public.organization (instance_id)
);

CREATE TABLE IF NOT EXISTS public.affiliation
(
    instance_person_id UUID NOT NULL,
    meta_organization_id UUID NOT NULL,
    PRIMARY KEY (instance_person_id, meta_organization_id),
    FOREIGN KEY (instance_person_id) REFERENCES public.person (instance_id),
    FOREIGN KEY (meta_organization_id) REFERENCES public.edm_entity_id (meta_id)
);

CREATE TABLE IF NOT EXISTS public.organization_identifier
(
    id UUID DEFAULT uuid_generate_v4(),
    type character varying(1024) NOT NULL,
    identifier character varying(1024) NOT NULL,
    instance_organization_id UUID NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_organization_id) REFERENCES public.organization (instance_id)
);

CREATE TABLE IF NOT EXISTS public.organization_email
(
    id UUID DEFAULT uuid_generate_v4(),
    email character varying(1024) NOT NULL,
    instance_organization_id UUID NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_organization_id) REFERENCES public.organization (instance_id)
);

CREATE TABLE IF NOT EXISTS public.organization_legalname
(
    id UUID DEFAULT uuid_generate_v4(),
    legalname character varying(1024) NOT NULL,
    instance_organization_id UUID NOT NULL,
    language character varying(1024),
    PRIMARY KEY (id),
    FOREIGN KEY (instance_organization_id) REFERENCES public.organization (instance_id)
);

CREATE TABLE IF NOT EXISTS public.organization_telephone
(
    id UUID DEFAULT uuid_generate_v4(),
    number character varying(1024) NOT NULL,
    instance_organization_id UUID NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_organization_id) REFERENCES public.organization (instance_id)
);

CREATE TABLE IF NOT EXISTS public.contactpoint_organization
(
    instance_organization_id UUID NOT NULL,
    instance_contactpoint_id UUID NOT NULL,
    PRIMARY KEY (instance_organization_id, instance_contactpoint_id),
    FOREIGN KEY (instance_organization_id) REFERENCES public.organization (instance_id),
    FOREIGN KEY (instance_contactpoint_id) REFERENCES public.contactpoint (instance_id)
);

CREATE TABLE IF NOT EXISTS public.organization_owner
(
    meta_id UUID NOT NULL,
    instance_organization_id UUID NOT NULL,
    PRIMARY KEY (meta_id, instance_organization_id),
    FOREIGN KEY (meta_id) REFERENCES public.edm_entity_id (meta_id),
    FOREIGN KEY (instance_organization_id) REFERENCES public.organization (instance_id)
);

END;
