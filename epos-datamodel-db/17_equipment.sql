BEGIN;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS public.equipment
(
    uid character varying(1024) NOT NULL,
    identifier character varying(1024),
    description text,
    name character varying(1024),
    type character(1024),
    manufacturer character varying(1024),
    keywords text,
    pageURL character varying(1024),
    filter character varying(1024),
    dynamicrange UUID,
    orientation character varying(1024),
    resolution character varying(1024),
    sampleperiod UUID,
    owner UUID,
    serialnumber character varying(1024),
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

CREATE INDEX IF NOT EXISTS idx_equipment_state ON public.equipment(state);

ALTER TABLE IF EXISTS public.equipment
    ADD FOREIGN KEY (reviewer_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.equipment
    ADD FOREIGN KEY (owner)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.equipment
    ADD FOREIGN KEY (manufacturer)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.equipment
    ADD FOREIGN KEY (meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.equipment
    ADD FOREIGN KEY (editor_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.equipment
    ADD FOREIGN KEY (instance_changed_id)
    REFERENCES public.equipment (instance_id);

CREATE TABLE IF NOT EXISTS public.quantitativevalue
(
    id UUID NOT NULL DEFAULT uuid_generate_v4(),
    unit character varying(1024) NOT NULL,
    value_ character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.equipment_equipment
(
    instance_equipment1_id UUID NOT NULL,
    instance_equipment2_id UUID NOT NULL,
    PRIMARY KEY (instance_equipment1_id, instance_equipment2_id)
);

CREATE TABLE IF NOT EXISTS public.equipment_facility
(
    instance_equipment_id UUID NOT NULL,
    instance_facility_id UUID NOT NULL,
    PRIMARY KEY (instance_equipment_id, instance_facility_id)
);

CREATE TABLE IF NOT EXISTS public.contactpoint_equipment
(
    instance_equipment_id UUID NOT NULL,
    instance_contactpoint_id UUID NOT NULL,
    PRIMARY KEY (instance_equipment_id, instance_contactpoint_id)
);

CREATE TABLE IF NOT EXISTS public.equipment_spatial
(
    id UUID NOT NULL DEFAULT uuid_generate_v4(),
    location character varying(1024) NOT NULL,
    instance_equipment_id UUID NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.equipment_temporal
(
    id UUID NOT NULL DEFAULT uuid_generate_v4(),
    startDate timestamp,
    endDate timestamp,
    instance_equipment_id UUID NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.equipment_category
(
    category_id UUID NOT NULL,
    instance_equipment_id UUID NOT NULL,
    PRIMARY KEY (category_id, instance_equipment_id)
);

CREATE TABLE IF NOT EXISTS public.equipment_relation
(
    instance_equipment_id UUID NOT NULL,
    meta_id UUID NOT NULL,
    PRIMARY KEY (instance_equipment_id, meta_id)
);

ALTER TABLE IF EXISTS public.equipment
    ADD CONSTRAINT fk_equipment_dynamicrange
    FOREIGN KEY (dynamicrange) REFERENCES public.quantitativevalue (id);

ALTER TABLE IF EXISTS public.equipment
    ADD CONSTRAINT fk_equipment_sampleperiod
    FOREIGN KEY (sampleperiod) REFERENCES public.quantitativevalue (id);

ALTER TABLE IF EXISTS public.equipment_equipment
    ADD CONSTRAINT fk_equipment_equipment1
    FOREIGN KEY (instance_equipment1_id) REFERENCES public.equipment (instance_id);

ALTER TABLE IF EXISTS public.equipment_equipment
    ADD CONSTRAINT fk_equipment_equipment2
    FOREIGN KEY (instance_equipment2_id) REFERENCES public.equipment (instance_id);

ALTER TABLE IF EXISTS public.equipment_facility
    ADD CONSTRAINT fk_equipment_facility
    FOREIGN KEY (instance_facility_id) REFERENCES public.facility (instance_id);

ALTER TABLE IF EXISTS public.equipment_spatial
    ADD CONSTRAINT fk_equipment_spatial
    FOREIGN KEY (instance_equipment_id) REFERENCES public.equipment (instance_id);

ALTER TABLE IF EXISTS public.equipment_temporal
    ADD CONSTRAINT fk_equipment_temporal
    FOREIGN KEY (instance_equipment_id) REFERENCES public.equipment (instance_id);

ALTER TABLE IF EXISTS public.contactpoint_equipment
    ADD CONSTRAINT fk_contactpoint_equipment
    FOREIGN KEY (instance_equipment_id) REFERENCES public.equipment (instance_id);

ALTER TABLE IF EXISTS public.equipment_category
    ADD CONSTRAINT fk_equipment_category
    FOREIGN KEY (instance_equipment_id) REFERENCES public.equipment (instance_id);

ALTER TABLE IF EXISTS public.equipment_relation
    ADD CONSTRAINT fk_equipment_relation
    FOREIGN KEY (instance_equipment_id) REFERENCES public.equipment (instance_id);

ALTER TABLE IF EXISTS public.equipment_relation
    ADD CONSTRAINT fk_relation_meta
    FOREIGN KEY (meta_id) REFERENCES public.edm_entity_id (meta_id);

END;
