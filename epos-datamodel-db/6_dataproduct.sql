BEGIN;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS public.dataproduct
(
    uid character varying(1024) NOT NULL,
    dctidentifier character varying(1024),
    created timestamptz,
    issued timestamptz,
    modified timestamptz,
    versioninfo character varying(1024),
    type character varying(1024),
    accrualperiodicity character varying(1024),
    keywords text,
    accessright character varying(1024),
    documentation character varying(1024),
    qualityAssurance character varying(1024),
    has_quality_annotation character varying(1024),
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

ALTER TABLE IF EXISTS public.dataproduct
    ADD FOREIGN KEY (reviewer_meta_id) REFERENCES public.edm_entity_id (meta_id),
    ADD FOREIGN KEY (editor_meta_id) REFERENCES public.edm_entity_id (meta_id),
    ADD FOREIGN KEY (instance_changed_id) REFERENCES public.dataproduct (instance_id),
    ADD FOREIGN KEY (meta_id) REFERENCES public.edm_entity_id (meta_id);

CREATE TABLE IF NOT EXISTS public.haspart_dataproduct
(
    instance_dataproduct1_id UUID NOT NULL,
    instance_dataproduct2_id UUID NOT NULL,
    PRIMARY KEY (instance_dataproduct1_id, instance_dataproduct2_id),
    FOREIGN KEY (instance_dataproduct1_id) REFERENCES public.dataproduct (instance_id),
    FOREIGN KEY (instance_dataproduct2_id) REFERENCES public.dataproduct (instance_id)
);

CREATE TABLE IF NOT EXISTS public.ispartof_dataproduct
(
    instance_dataproduct1_id UUID NOT NULL,
    instance_dataproduct2_id UUID NOT NULL,
    PRIMARY KEY (instance_dataproduct1_id, instance_dataproduct2_id),
    FOREIGN KEY (instance_dataproduct1_id) REFERENCES public.dataproduct (instance_id),
    FOREIGN KEY (instance_dataproduct2_id) REFERENCES public.dataproduct (instance_id)
);

CREATE TABLE IF NOT EXISTS public.publisher
(
    instance_dataproduct_id UUID NOT NULL,
    meta_organization_id UUID NOT NULL,
    PRIMARY KEY (instance_dataproduct_id, meta_organization_id),
    FOREIGN KEY (instance_dataproduct_id) REFERENCES public.dataproduct (instance_id),
    FOREIGN KEY (meta_organization_id) REFERENCES public.edm_entity_id (meta_id)
);

CREATE TABLE IF NOT EXISTS public.contactpoint_dataproduct
(
    instance_dataproduct_id UUID NOT NULL,
    instance_contactpoint_id UUID NOT NULL,
    PRIMARY KEY (instance_dataproduct_id, instance_contactpoint_id),
    FOREIGN KEY (instance_dataproduct_id) REFERENCES public.dataproduct (instance_id),
    FOREIGN KEY (instance_contactpoint_id) REFERENCES public.contactpoint (instance_id)
);

CREATE TABLE IF NOT EXISTS public.dataproduct_title
(
    id UUID DEFAULT uuid_generate_v4(),
    title character varying(1024) NOT NULL,
    lang character varying(20),
    instance_dataproduct_id UUID NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_dataproduct_id) REFERENCES public.dataproduct (instance_id)
);

CREATE TABLE IF NOT EXISTS public.dataproduct_description
(
    id UUID DEFAULT uuid_generate_v4(),
    description text NOT NULL,
    lang character varying(20),
    instance_dataproduct_id UUID NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_dataproduct_id) REFERENCES public.dataproduct (instance_id)
);

CREATE TABLE IF NOT EXISTS public.dataproduct_category
(
    category_id UUID NOT NULL,
    instance_dataproduct_id UUID NOT NULL,
    PRIMARY KEY (category_id, instance_dataproduct_id),
    FOREIGN KEY (category_id) REFERENCES public.category (id),
    FOREIGN KEY (instance_dataproduct_id) REFERENCES public.dataproduct (instance_id)
);

CREATE TABLE IF NOT EXISTS public.dataproduct_provenance
(
    id UUID DEFAULT uuid_generate_v4(),
    provenance character varying(1024) NOT NULL,
    instance_dataproduct_id UUID NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_dataproduct_id) REFERENCES public.dataproduct (instance_id)
);

CREATE TABLE IF NOT EXISTS public.dataproduct_identifier
(
    id UUID DEFAULT uuid_generate_v4(),
    type character varying(1024) NOT NULL,
    identifier character varying(1024) NOT NULL,
    instance_dataproduct_id UUID NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_dataproduct_id) REFERENCES public.dataproduct (instance_id)
);

CREATE TABLE IF NOT EXISTS public.dataproduct_spatial
(
    id UUID DEFAULT uuid_generate_v4(),
    location character varying(1024) NOT NULL,
    instance_dataproduct_id UUID NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_dataproduct_id) REFERENCES public.dataproduct (instance_id)
);

CREATE TABLE IF NOT EXISTS public.dataproduct_temporal
(
    id UUID DEFAULT uuid_generate_v4(),
    startDate timestamp,
    endDate timestamp,
    instance_dataproduct_id UUID NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_dataproduct_id) REFERENCES public.dataproduct (instance_id)
);

CREATE TABLE IF NOT EXISTS public.dataproduct_relation
(
    meta_id UUID NOT NULL,
    instance_dataproduct_id UUID NOT NULL,
    PRIMARY KEY (meta_id, instance_dataproduct_id),
    FOREIGN KEY (meta_id) REFERENCES public.edm_entity_id (meta_id),
    FOREIGN KEY (instance_dataproduct_id) REFERENCES public.dataproduct (instance_id)
);

END;
