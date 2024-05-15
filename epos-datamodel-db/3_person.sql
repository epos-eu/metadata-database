BEGIN;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS public.person
(
    uid character varying(1024) NOT NULL,
    auth_identifier character varying(1024),
    familyname character varying(1024),
    givenname character varying(1024),
    qualifications character varying(1024),
    cvurl character varying(1024),
    address_id UUID,
    fileprovenance character varying(1024),
    tmpRole character varying(1024),
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

ALTER TABLE IF EXISTS public.person
    ADD FOREIGN KEY (reviewer_meta_id) REFERENCES public.edm_entity_id (meta_id),
    ADD FOREIGN KEY (meta_id) REFERENCES public.edm_entity_id (meta_id),
    ADD FOREIGN KEY (editor_meta_id) REFERENCES public.edm_entity_id (meta_id),
    ADD FOREIGN KEY (instance_changed_id) REFERENCES public.person (instance_id),
    ADD FOREIGN KEY (address_id) REFERENCES public.address (id);

CREATE TABLE IF NOT EXISTS public.person_identifier
(
    id UUID DEFAULT uuid_generate_v4(),
    type character varying(1024) NOT NULL,
    identifier character varying(1024) NOT NULL,
    instance_person_id UUID NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_person_id) REFERENCES public.person (instance_id)
);

CREATE TABLE IF NOT EXISTS public.person_email
(
    id UUID DEFAULT uuid_generate_v4(),
    email character varying(1024),
    instance_person_id UUID NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_person_id) REFERENCES public.person (instance_id)
);

CREATE TABLE IF NOT EXISTS public.person_telephone
(
    id UUID DEFAULT uuid_generate_v4(),
    telnumber character varying(1024) NOT NULL,
    instance_person_id UUID NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_person_id) REFERENCES public.person (instance_id)
);

END;
