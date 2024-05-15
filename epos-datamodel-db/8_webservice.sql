BEGIN;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS public.webservice
(
    uid character varying(1024) NOT NULL,
    schema_identifier character varying(1024),
    description text,
    name character varying(1024),
    entrypoint character varying(1024),
    datapublished timestamp,
    datamodified timestamp,
    keywords text,
    license character varying(1024),
    provider character varying(1024),
    aaaitypes character varying(1024),
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

ALTER TABLE IF EXISTS public.webservice
    ADD FOREIGN KEY (reviewer_meta_id) REFERENCES public.edm_entity_id (meta_id),
    ADD FOREIGN KEY (provider) REFERENCES public.edm_entity_id (meta_id),
    ADD FOREIGN KEY (meta_id) REFERENCES public.edm_entity_id (meta_id),
    ADD FOREIGN KEY (editor_meta_id) REFERENCES public.edm_entity_id (meta_id),
    ADD FOREIGN KEY (instance_changed_id) REFERENCES public.webservice (instance_id);

CREATE TABLE IF NOT EXISTS public.webservice_identifier
(
    id UUID DEFAULT uuid_generate_v4(),
    type character varying(1024) NOT NULL,
    identifier character varying(1024) NOT NULL,
    webservice_instance_id UUID NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (webservice_instance_id) REFERENCES public.webservice (instance_id)
);

CREATE TABLE IF NOT EXISTS public.contactpoint_webservice
(
    instance_webservice_id UUID NOT NULL,
    instance_contactpoint_id UUID NOT NULL,
    PRIMARY KEY (instance_webservice_id, instance_contactpoint_id),
    FOREIGN KEY (instance_webservice_id) REFERENCES public.webservice (instance_id),
    FOREIGN KEY (instance_contactpoint_id) REFERENCES public.contactpoint (instance_id)
);

CREATE TABLE IF NOT EXISTS public.webservice_category
(
    category_id UUID NOT NULL,
    instance_webservice_id UUID NOT NULL,
    PRIMARY KEY (instance_webservice_id, category_id),
    FOREIGN KEY (instance_webservice_id) REFERENCES public.webservice (instance_id),
    FOREIGN KEY (category_id) REFERENCES public.category (id)
);

CREATE TABLE IF NOT EXISTS public.webservice_documentation
(
    id UUID DEFAULT uuid_generate_v4(),
    documentation character varying(1024) NOT NULL,
    instance_webservice_id UUID NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_webservice_id) REFERENCES public.webservice (instance_id)
);

CREATE TABLE IF NOT EXISTS public.webservice_temporal
(
    id UUID DEFAULT uuid_generate_v4(),
    startDate timestamp,
    endDate timestamp,
    instance_webservice_id UUID NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_webservice_id) REFERENCES public.webservice (instance_id)
);

CREATE TABLE IF NOT EXISTS public.webservice_spatial
(
    id UUID DEFAULT uuid_generate_v4(),
    location character varying(1024) NOT NULL,
    instance_webservice_id UUID NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_webservice_id) REFERENCES public.webservice (instance_id)
);

END;
