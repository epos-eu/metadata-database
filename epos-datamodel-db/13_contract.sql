BEGIN;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS public.contract
(
    identifier character varying(1024) NOT NULL,
    status character varying(1024) NOT NULL,
    name character varying(1024) NOT NULL,
    type character varying(1024) NOT NULL,
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

CREATE INDEX IF NOT EXISTS idx_contract_state ON public.contract(state);

ALTER TABLE IF EXISTS public.contract
    ADD FOREIGN KEY (reviewer_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.contract
    ADD FOREIGN KEY (meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.contract
    ADD FOREIGN KEY (editor_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.contract
    ADD FOREIGN KEY (instance_changed_id)
    REFERENCES public.contract (instance_id);

END;
