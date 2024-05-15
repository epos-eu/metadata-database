BEGIN;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS public.operation
(
    uid character varying(1024) NOT NULL,
    method character varying(1024),
    template text,
    supportedoperation character varying(1024),
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

ALTER TABLE IF EXISTS public.operation
    ADD FOREIGN KEY (reviewer_meta_id) REFERENCES public.edm_entity_id (meta_id),
    ADD FOREIGN KEY (meta_id) REFERENCES public.edm_entity_id (meta_id),
    ADD FOREIGN KEY (editor_meta_id) REFERENCES public.edm_entity_id (meta_id),
    ADD FOREIGN KEY (instance_changed_id) REFERENCES public.operation (instance_id);

CREATE TABLE IF NOT EXISTS public.webservice_supportedoperation
(
    instance_operation_id UUID NOT NULL,
    instance_webservice_id UUID NOT NULL,
    PRIMARY KEY (instance_webservice_id, instance_operation_id),
    FOREIGN KEY (instance_webservice_id) REFERENCES public.webservice (instance_id),
    FOREIGN KEY (instance_operation_id) REFERENCES public.operation (instance_id)
);

CREATE TABLE IF NOT EXISTS public.distribution_accessurl
(
    instance_operation_id UUID NOT NULL,
    instance_distribution_id UUID NOT NULL,
    PRIMARY KEY (instance_distribution_id, instance_operation_id),
    FOREIGN KEY (instance_distribution_id) REFERENCES public.distribution (instance_id),
    FOREIGN KEY (instance_operation_id) REFERENCES public.operation (instance_id)
);

CREATE TABLE IF NOT EXISTS public.webservice_relation
(
    instance_webservice_id UUID NOT NULL,
    instance_webservice_id_0 UUID NOT NULL,
    PRIMARY KEY (instance_webservice_id, instance_webservice_id_0),
    FOREIGN KEY (instance_webservice_id) REFERENCES public.webservice (instance_id),
    FOREIGN KEY (instance_webservice_id_0) REFERENCES public.webservice (instance_id)
);

CREATE TABLE IF NOT EXISTS public.operation_returns
(
    id UUID DEFAULT uuid_generate_v4(),
    instance_operation_id UUID,
    returns character varying(1024),
    PRIMARY KEY (id),
    FOREIGN KEY (instance_operation_id) REFERENCES public.operation (instance_id)
);

END;
