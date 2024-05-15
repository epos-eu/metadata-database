BEGIN;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS public.common_attributes
(
    instance_changed_id UUID,
    fileprovenance character varying(1024),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id UUID,
    change_comment character varying(1024),
    reviewer_meta_id UUID,
    review_comment character varying(1024),
    version character varying(1024),
    state character varying(16),
    to_be_deleted boolean,
    PRIMARY KEY (instance_changed_id)
);

END;