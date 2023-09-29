BEGIN;

CREATE TABLE IF NOT EXISTS public.edm_entity_id
(
    meta_id character varying(1024) NOT NULL,
    PRIMARY KEY (meta_id)
);


CREATE TABLE IF NOT EXISTS public.role
(
    id character varying(1024) NOT NULL,
    name character varying(1024),
    description text,
    PRIMARY KEY (id)
);


INSERT INTO public.role (id, name, description)
VALUES ('ADMIN', 'ADMIN', 'ADMIN User');

INSERT INTO public.role (id, name, description)
VALUES ('REVIEWER', 'REVIEWER', 'REVIEWER User');

INSERT INTO public.role (id, name, description)
VALUES ('EDITOR', 'EDITOR', 'EDITOR User');

INSERT INTO public.role (id, name, description)
VALUES ('VIEWER', 'VIEWER', 'VIEWER User');


CREATE TABLE IF NOT EXISTS public.group_
(
    id character varying(1024) NOT NULL,
    name character varying(1024),
    description text,
    PRIMARY KEY (id)
);

INSERT INTO public.group_ (id, name, description)
VALUES ('ALL', 'ALL', 'Basic group');

INSERT INTO public.group_ (id, name, description)
VALUES ('MASTER_TABLE', 'Master Table', 'Group of the master table');


CREATE TABLE IF NOT EXISTS public.group_user_
(
    meta_person_id character varying(1024) NOT NULL,
    group_id character varying(1024) NOT NULL,
    role_id character varying(1024) NOT NULL,
    PRIMARY KEY (meta_person_id, group_id)
);

ALTER TABLE IF EXISTS public.group_user_
    ADD FOREIGN KEY (group_id)
    references public.group_ (id);


ALTER TABLE IF EXISTS public.group_user_
    ADD FOREIGN KEY (role_id)
    references public.role (id);

ALTER TABLE IF EXISTS  public.group_user_
    ADD FOREIGN KEY (meta_person_id)
    references public.edm_entity_id (meta_id);


CREATE TABLE IF NOT EXISTS public.authorization_
(
    group_id character varying(1024) NOT NULL,
    meta_id character varying(1024) NOT NULL,
    PRIMARY KEY (group_id, meta_id)
);

ALTER TABLE IF EXISTS public.authorization_
    ADD FOREIGN KEY (group_id)
    references public.group_ (id);

ALTER TABLE IF EXISTS public.authorization_
    ADD FOREIGN KEY (meta_id)
    references public.edm_entity_id (meta_id);


CREATE TABLE IF NOT EXISTS public.address
(
    id character varying(1024) NOT NULL,
    country character varying(1024),
    countrycode character varying(1024),
    street character varying(1024),
    postal_code character varying(1024),
    locality character varying(1024),
    PRIMARY KEY (id)
);


CREATE TABLE IF NOT EXISTS public.category_scheme
(
    id character varying(1024) NOT NULL,
    uid character varying(1024) NOT NULL,
    description text,
    name character varying(1024),
    PRIMARY KEY (id)
);


CREATE TABLE IF NOT EXISTS public.category
(
    id character varying(1024) NOT NULL,
    in_scheme character varying(1024),
    uid character varying(1024) NOT NULL,
    description text,
    name character varying(1024),
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.category
    ADD FOREIGN KEY (in_scheme)
    REFERENCES public.category_scheme (id);


CREATE TABLE IF NOT EXISTS public.ispartof_category
(
    category1_id character varying(1024) NOT NULL,
    category2_id character varying(1024) NOT NULL,
    PRIMARY KEY (category1_id, category2_id)
);

ALTER TABLE IF EXISTS public.ispartof_category
    ADD FOREIGN KEY (category1_id)
    REFERENCES public.category (id);

ALTER TABLE IF EXISTS public.ispartof_category
    ADD FOREIGN KEY (category2_id)
    REFERENCES public.category (id);


CREATE TABLE IF NOT EXISTS public.person
(
    uid character varying(1024) NOT NULL,
    auth_identifier character varying(1024),
    familyname character varying(1024),
    givenname character varying(1024),
    qualifications character varying(1024),
    cvurl character varying(1024),
    address_id character varying(1024),
    fileprovenance character varying(1024),
    tmpRole character varying(1024),

    instance_id character varying(1024),
    meta_id character varying(1024) NOT NULL,
    instance_changed_id character varying(1024),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id character varying(1024),
    change_comment character varying(1024),
    reviewer_meta_id character varying(1024),
    review_comment character varying(1024),
    version character varying(1024),
    state character varying(16),
    to_be_deleted boolean,
    PRIMARY KEY (instance_id)
);

ALTER TABLE IF EXISTS public.person
    ADD FOREIGN KEY (reviewer_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

create index idx_person_state on public.person(state);

ALTER TABLE IF EXISTS public.person
    ADD FOREIGN KEY (meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.person
    ADD FOREIGN KEY (editor_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.person
    ADD FOREIGN KEY (instance_changed_id)
    REFERENCES public.person (instance_id);

ALTER TABLE IF EXISTS public.person
    ADD FOREIGN KEY (address_id)
    REFERENCES public.address (id);


CREATE TABLE IF NOT EXISTS public.person_identifier
(
    id character varying(1024),
    type character varying(1024) NOT NULL,
    identifier character varying(1024) NOT NULL,
    instance_person_id character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.person_identifier
    ADD FOREIGN KEY (instance_person_id)
    REFERENCES public.person (instance_id);


CREATE TABLE IF NOT EXISTS public.person_email
(
    id character varying(1024),
    email character varying(1024),
    instance_person_id character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.person_email
    ADD FOREIGN KEY (instance_person_id) 
    REFERENCES public.person (instance_id);


CREATE TABLE IF NOT EXISTS public.person_telephone
(
    id character varying(1024),
    telnumber character varying(1024) NOT NULL,
    instance_person_id character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.person_telephone
    ADD FOREIGN KEY (instance_person_id)
    REFERENCES public.person (instance_id);


CREATE TABLE IF NOT EXISTS public.contactpoint
(
    uid character varying(1024) NOT NULL,
    role character varying(1024),
    meta_person_id character varying(1024),
    meta_organization_id character varying(1024),
    fileprovenance character varying(1024),

    instance_id character varying(1024),
    meta_id character varying(1024) NOT NULL,
    instance_changed_id character varying(1024),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id character varying(1024),
    change_comment character varying(1024),
    reviewer_meta_id character varying(1024),
    review_comment character varying(1024),
    version character varying(1024),
    state character varying(16),
    to_be_deleted boolean,
    PRIMARY KEY (instance_id)
);

ALTER TABLE IF EXISTS public.contactpoint
    ADD FOREIGN KEY (reviewer_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

create index idx_contactpoint_state on public.contactpoint(state);

ALTER TABLE IF EXISTS public.contactpoint
    ADD FOREIGN KEY (meta_person_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.contactpoint
    ADD FOREIGN KEY (meta_organization_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.contactpoint
    ADD FOREIGN KEY (editor_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.contactpoint
    ADD FOREIGN KEY (meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.contactpoint
    ADD FOREIGN KEY (instance_changed_id)
    REFERENCES public.contactpoint (instance_id);


CREATE TABLE IF NOT EXISTS public.contactpoint_email
(
    id character varying(1024),
    email character varying(1024),
    instance_contactpoint_id character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.contactpoint_email
    ADD FOREIGN KEY (instance_contactpoint_id)
    REFERENCES public.contactpoint (instance_id);


CREATE TABLE IF NOT EXISTS public.contactpoint_language
(
    id character varying(1024),
    language character varying(1024),
    instance_contactpoint_id character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.contactpoint_language
    ADD FOREIGN KEY (instance_contactpoint_id)
    REFERENCES public.contactpoint (instance_id);


CREATE TABLE IF NOT EXISTS public.contactpoint_telephone
(
    id character varying(1024),
    telnumber character varying(1024) NOT NULL,
    instance_contactpoint_id character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.contactpoint_telephone
    ADD FOREIGN KEY (instance_contactpoint_id)
    REFERENCES public.contactpoint (instance_id);


CREATE TABLE IF NOT EXISTS public.organization
(
    uid character varying(1024) NOT NULL,
    acronym character varying(1024),
    leicode character varying(1024),
    address_id character varying(1024),
    logo character varying(1024),
    URL character varying(1024),
    type character varying(1024),
    maturity character varying(1024),
    fileprovenance character varying(1024),

    instance_id character varying(1024),
    meta_id character varying(1024) NOT NULL,
    instance_changed_id character varying(1024),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id character varying(1024),
    change_comment character varying(1024),
    reviewer_meta_id character varying(1024),
    review_comment character varying(1024),
    version character varying(1024),
    state character varying(16),
    to_be_deleted boolean,
    PRIMARY KEY (instance_id)
);

ALTER TABLE IF EXISTS public.organization
    ADD FOREIGN KEY (reviewer_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

create index idx_organization_state on public.organization(state);

ALTER TABLE IF EXISTS public.organization
    ADD FOREIGN KEY (meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.organization
    ADD FOREIGN KEY (editor_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.organization
    ADD FOREIGN KEY (instance_changed_id)
    REFERENCES public.organization (instance_id);

ALTER TABLE IF EXISTS public.organization
    ADD FOREIGN KEY (address_id)
    REFERENCES public.address (id);


CREATE TABLE IF NOT EXISTS public.memberof
(
    instance_organization1_id character varying(1024) NOT NULL,
    instance_organization2_id character varying(1024) NOT NULL,
    PRIMARY KEY (instance_organization1_id, instance_organization2_id)
);

ALTER TABLE IF EXISTS public.memberof
    ADD FOREIGN KEY (instance_organization2_id)
    REFERENCES public.organization(instance_id);

ALTER TABLE IF EXISTS public.memberof
    ADD FOREIGN KEY (instance_organization1_id)
    REFERENCES public.organization (instance_id);


CREATE TABLE IF NOT EXISTS public.affiliation
(
    instance_person_id character varying(1024) NOT NULL,
    meta_organization_id character varying(1024) NOT NULL,
    PRIMARY KEY (instance_person_id, meta_organization_id)
);

ALTER TABLE IF EXISTS public.affiliation
    ADD FOREIGN KEY (instance_person_id)
    REFERENCES public.person (instance_id);

ALTER TABLE IF EXISTS public.affiliation
    ADD FOREIGN KEY (meta_organization_id)
    REFERENCES public.edm_entity_id (meta_id);


CREATE TABLE IF NOT EXISTS public.organization_identifier
(
    id character varying(1024),
    type character varying(1024) NOT NULL,
    identifier character varying(1024) NOT NULL,
    instance_organization_id character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.organization_identifier
    ADD FOREIGN KEY (instance_organization_id)
    REFERENCES public.organization (instance_id);


CREATE TABLE IF NOT EXISTS public.organization_email
(
    id character varying(1024) NOT NULL,
    email character varying(1024) NOT NULL,
    instance_organization_id character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.organization_email
    ADD FOREIGN KEY (instance_organization_id)
    REFERENCES public.organization (instance_id);


CREATE TABLE IF NOT EXISTS public.organization_legalname
(
    id character varying(1024) NOT NULL,
    legalname character varying(1024) NOT NULL,
    instance_organization_id character varying(1024) NOT NULL,
    language character varying(1024),
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.organization_legalname
    ADD FOREIGN KEY (instance_organization_id)
    REFERENCES public.organization (instance_id);


CREATE TABLE IF NOT EXISTS public.organization_telephone
(
    id character varying(1024) NOT NULL,
    number character varying(1024) NOT NULL,
    instance_organization_id character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.organization_telephone
    ADD FOREIGN KEY (instance_organization_id)
    REFERENCES public.organization (instance_id);


CREATE TABLE IF NOT EXISTS public.contactpoint_organization
(
    instance_organization_id character varying(1024) NOT NULL,
    instance_contactpoint_id character varying(1024) NOT NULL,
    PRIMARY KEY (instance_organization_id, instance_contactpoint_id)
);

ALTER TABLE IF EXISTS public.contactpoint_organization
    ADD FOREIGN KEY (instance_organization_id)
    REFERENCES public.organization (instance_id);

ALTER TABLE IF EXISTS public.contactpoint_organization
    ADD FOREIGN KEY (instance_contactpoint_id)
    REFERENCES public.contactpoint (instance_id);


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

    instance_id character varying(1024),
    meta_id character varying(1024) NOT NULL,
    instance_changed_id character varying(1024),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id character varying(1024),
    change_comment character varying(1024),
    reviewer_meta_id character varying(1024),
    review_comment character varying(1024),
    version character varying(1024),
    state character varying(16),
    to_be_deleted boolean,
    PRIMARY KEY (instance_id)
);

ALTER TABLE IF EXISTS public.dataproduct
    ADD FOREIGN KEY (reviewer_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

create index idx_dataproduct_state on public.dataproduct(state);

ALTER TABLE IF EXISTS public.dataproduct
    ADD FOREIGN KEY (instance_changed_id)
    REFERENCES public.dataproduct (instance_id);

ALTER TABLE IF EXISTS public.dataproduct
    ADD FOREIGN KEY (editor_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.dataproduct
    ADD FOREIGN KEY (meta_id)
    REFERENCES public.edm_entity_id (meta_id);


CREATE TABLE IF NOT EXISTS public.haspart_dataproduct
(
    instance_dataproduct1_id character varying(1024) NOT NULL,
    instance_dataproduct2_id character varying(1024) NOT NULL,
    PRIMARY KEY (instance_dataproduct1_id, instance_dataproduct2_id)
);

ALTER TABLE IF EXISTS public.haspart_dataproduct
    ADD FOREIGN KEY (instance_dataproduct1_id)
    REFERENCES public.dataproduct (instance_id);

ALTER TABLE IF EXISTS public.haspart_dataproduct
    ADD FOREIGN KEY (instance_dataproduct2_id)
    REFERENCES public.dataproduct (instance_id);


CREATE TABLE IF NOT EXISTS public.ispartof_dataproduct
(
    instance_dataproduct1_id character varying(1024) NOT NULL,
    instance_dataproduct2_id character varying(1024) NOT NULL,
    PRIMARY KEY (instance_dataproduct1_id, instance_dataproduct2_id)
);

ALTER TABLE IF EXISTS public.ispartof_dataproduct
    ADD FOREIGN KEY (instance_dataproduct1_id)
    REFERENCES public.dataproduct (instance_id);

ALTER TABLE IF EXISTS public.ispartof_dataproduct
    ADD FOREIGN KEY (instance_dataproduct2_id)
    REFERENCES public.dataproduct (instance_id);


CREATE TABLE IF NOT EXISTS public.publisher
(
    instance_dataproduct_id character varying(1024) NOT NULL,
    meta_organization_id character varying(1024) NOT NULL,
    PRIMARY KEY (instance_dataproduct_id, meta_organization_id)
);

ALTER TABLE IF EXISTS public.publisher
    ADD FOREIGN KEY (instance_dataproduct_id)
    REFERENCES public.dataproduct (instance_id);

ALTER TABLE IF EXISTS public.publisher
    ADD FOREIGN KEY (meta_organization_id)
    REFERENCES public.edm_entity_id (meta_id);


CREATE TABLE IF NOT EXISTS public.contactpoint_dataproduct
(
    instance_dataproduct_id character varying(1024) NOT NULL,
    instance_contactpoint_id character varying(1024) NOT NULL,
    PRIMARY KEY (instance_dataproduct_id, instance_contactpoint_id)
);

ALTER TABLE IF EXISTS public.contactpoint_dataproduct
    ADD FOREIGN KEY (instance_dataproduct_id)
    REFERENCES public.dataproduct (instance_id);

ALTER TABLE IF EXISTS public.contactpoint_dataproduct
    ADD FOREIGN KEY (instance_contactpoint_id)
    REFERENCES public.contactpoint (instance_id);


CREATE TABLE IF NOT EXISTS public.dataproduct_title
(
    id character varying(1024) NOT NULL,
    title character varying(1024) NOT NULL,
    lang character varying(20),
    instance_dataproduct_id character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.dataproduct_title
    ADD FOREIGN KEY (instance_dataproduct_id)
    REFERENCES public.dataproduct (instance_id);


CREATE TABLE IF NOT EXISTS public.dataproduct_description
(
    id character varying(1024) NOT NULL,
    description text NOT NULL,
    lang character varying(20),
    instance_dataproduct_id character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.dataproduct_description
    ADD FOREIGN KEY (instance_dataproduct_id)
    REFERENCES public.dataproduct (instance_id);


CREATE TABLE IF NOT EXISTS public.dataproduct_category
(
    category_id character varying(1024) NOT NULL,
    instance_dataproduct_id character varying(1024) NOT NULL,
    PRIMARY KEY (category_id, instance_dataproduct_id)
);

ALTER TABLE IF EXISTS public.dataproduct_category
    ADD FOREIGN KEY (instance_dataproduct_id)
    REFERENCES public.dataproduct (instance_id);

ALTER TABLE IF EXISTS public.dataproduct_category
    ADD FOREIGN KEY (category_id)
    REFERENCES public.category (id);


CREATE TABLE IF NOT EXISTS public.dataproduct_provenance
(
    id character varying(1024) NOT NULL,
    provenance character varying(1024) NOT NULL,
    instance_dataproduct_id character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.dataproduct_provenance
    ADD FOREIGN KEY (instance_dataproduct_id)
    REFERENCES public.dataproduct (instance_id);


CREATE TABLE IF NOT EXISTS public.dataproduct_identifier
(
    id character varying(1024) NOT NULL,
    type character varying(1024) NOT NULL,
    identifier character varying(1024) NOT NULL,
    instance_dataproduct_id character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.dataproduct_identifier
    ADD FOREIGN KEY (instance_dataproduct_id)
    REFERENCES public.dataproduct (instance_id);


CREATE TABLE IF NOT EXISTS public.dataproduct_spatial
(
    id character varying(1024) NOT NULL,
    location character varying(1024) NOT NULL,
    instance_dataproduct_id character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.dataproduct_spatial
    ADD FOREIGN KEY (instance_dataproduct_id)
    REFERENCES public.dataproduct (instance_id);


CREATE TABLE IF NOT EXISTS public.dataproduct_temporal
(
    id character varying(1024) NOT NULL,
    startDate timestamp,
    endDate timestamp,
    instance_dataproduct_id character varying(1024),
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.dataproduct_temporal
    ADD FOREIGN KEY (instance_dataproduct_id)
    REFERENCES public.dataproduct (instance_id);


CREATE TABLE IF NOT EXISTS public.dataproduct_relation
(
    meta_id character varying(1024) NOT NULL,
    instance_dataproduct_id character varying(1024) NOT NULL,
    PRIMARY KEY (meta_id, instance_dataproduct_id)
);

ALTER TABLE IF EXISTS public.dataproduct_relation
    ADD FOREIGN KEY (instance_dataproduct_id)
    REFERENCES public.dataproduct (instance_id);

ALTER TABLE IF EXISTS public.dataproduct_relation
    ADD FOREIGN KEY (meta_id)
    REFERENCES public.edm_entity_id (meta_id);


CREATE TABLE IF NOT EXISTS public.distribution
(
    uid character varying(1024) NOT NULL,
    issued timestamp,
    modified timestamp,
    type character varying(1024),
    format character varying(1024),
    license character varying(1024),
    access_service character varying(1024),
    datapolicy character varying(1024),
    conformsto character varying(1024),
    fileprovenance character varying(1024),

    instance_id character varying(1024),
    meta_id character varying(1024) NOT NULL,
    instance_changed_id character varying(1024),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id character varying(1024),
    change_comment character varying(1024),
    reviewer_meta_id character varying(1024),
    review_comment character varying(1024),
    version character varying(1024),
    state character varying(16),
    to_be_deleted boolean,
    PRIMARY KEY (instance_id)
);

ALTER TABLE IF EXISTS public.distribution
    ADD FOREIGN KEY (reviewer_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

create index idx_distribution_state on public.distribution(state);

ALTER TABLE IF EXISTS public.distribution
    ADD FOREIGN KEY (meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.distribution
    ADD FOREIGN KEY (editor_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.distribution
    ADD FOREIGN KEY (instance_changed_id)
    REFERENCES public.distribution (instance_id);


CREATE TABLE IF NOT EXISTS public.is_distribution
(
    instance_dataproduct_id character varying(1024) NOT NULL,
    instance_distribution_id character varying(1024) NOT NULL,
    PRIMARY KEY (instance_dataproduct_id, instance_distribution_id)
);

ALTER TABLE IF EXISTS public.is_distribution
    ADD FOREIGN KEY (instance_distribution_id)
    REFERENCES public.distribution (instance_id);

ALTER TABLE IF EXISTS public.is_distribution
    ADD FOREIGN KEY (instance_dataproduct_id)
    REFERENCES public.dataproduct (instance_id);


CREATE TABLE IF NOT EXISTS public.distribution_title
(
    id character varying(1024) NOT NULL,
    title character varying(1024) NOT NULL,
    lang character varying(20),
    instance_distribution_id character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.distribution_title
    ADD FOREIGN KEY (instance_distribution_id)
    REFERENCES public.distribution (instance_id);


CREATE TABLE IF NOT EXISTS public.distribution_description
(
    id character varying(1024) NOT NULL,
    description text NOT NULL,
    lang character varying(20),
    instance_distribution_id character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.distribution_description
    ADD FOREIGN KEY (instance_distribution_id)
    REFERENCES public.distribution (instance_id);


CREATE TABLE IF NOT EXISTS public.distribution_downloadurl
(
    id character varying(1024) NOT NULL,
    downloadURL character varying(1024) NOT NULL,
    instance_distribution_id character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.distribution_downloadurl
    ADD FOREIGN KEY (instance_distribution_id)
    REFERENCES public.distribution (instance_id);


CREATE TABLE IF NOT EXISTS public.distribution_accessurl
(
    instance_operation_id character varying(1024) NOT NULL,
    instance_distribution_id character varying(1024) NOT NULL,
    PRIMARY KEY (instance_distribution_id, instance_operation_id)
);

ALTER TABLE IF EXISTS public.distribution_accessurl
    ADD FOREIGN KEY (instance_distribution_id)
    REFERENCES public.distribution (instance_id);

ALTER TABLE IF EXISTS public.distribution_accessurl
    ADD FOREIGN KEY (instance_operation_id)
    REFERENCES public.operation (instance_id);


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

    instance_id character varying(1024),
    meta_id character varying(1024) NOT NULL,
    instance_changed_id character varying(1024),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id character varying(1024),
    change_comment character varying(1024),
    reviewer_meta_id character varying(1024),
    review_comment character varying(1024),
    version character varying(1024),
    state character varying(16),
    to_be_deleted boolean,
    PRIMARY KEY (instance_id)
);

ALTER TABLE IF EXISTS public.webservice
    ADD FOREIGN KEY (reviewer_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

create index idx_webservice_state on public.webservice(state);

ALTER TABLE IF EXISTS public.webservice
    ADD FOREIGN KEY (provider)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.webservice
    ADD FOREIGN KEY (meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.webservice
    ADD FOREIGN KEY (editor_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.webservice
    ADD FOREIGN KEY (instance_changed_id)
    REFERENCES public.webservice (instance_id);

ALTER TABLE IF EXISTS public.distribution
    ADD FOREIGN KEY (access_service)
    REFERENCES public.webservice (instance_id);


CREATE TABLE IF NOT EXISTS public.webservice_identifier
(
    id character varying(1024) NOT NULL,
    type character varying(1024) NOT NULL,
    identifier character varying(1024) NOT NULL,
    webservice_instance_id character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.webservice_identifier
    ADD FOREIGN KEY (webservice_instance_id)
    REFERENCES public.webservice (instance_id);


CREATE TABLE IF NOT EXISTS public.contactpoint_webservice
(
    instance_webservice_id character varying(1024) NOT NULL,
    instance_contactpoint_id character varying(1024) NOT NULL,
    PRIMARY KEY (instance_webservice_id, instance_contactpoint_id)
);

ALTER TABLE IF EXISTS public.contactpoint_webservice
    ADD FOREIGN KEY (instance_webservice_id)
    REFERENCES public.webservice (instance_id);

ALTER TABLE IF EXISTS public.contactpoint_webservice
    ADD FOREIGN KEY (instance_contactpoint_id)
    REFERENCES public.contactpoint (instance_id);


CREATE TABLE IF NOT EXISTS public.webservice_category
(
    category_id character varying(1024) NOT NULL,
    instance_webservice_id character varying(1024) NOT NULL,
    PRIMARY KEY (instance_webservice_id, category_id)
);

ALTER TABLE IF EXISTS public.webservice_category
    ADD FOREIGN KEY (instance_webservice_id)
    REFERENCES public.webservice (instance_id);

ALTER TABLE IF EXISTS public.webservice_category
    ADD FOREIGN KEY (category_id)
    REFERENCES public.category (id);


CREATE TABLE IF NOT EXISTS public.webservice_documentation
(
    id character varying(1024) NOT NULL,
    documentation character varying(1024) NOT NULL,
    instance_webservice_id character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.webservice_documentation
    ADD FOREIGN KEY (instance_webservice_id)
    REFERENCES public.webservice (instance_id);


CREATE TABLE IF NOT EXISTS public.webservice_temporal
(
    id character varying(1024) NOT NULL,
    startDate timestamp,
    endDate timestamp,
    instance_webservice_id character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.webservice_temporal
    ADD FOREIGN KEY (instance_webservice_id)
    REFERENCES public.webservice (instance_id);


CREATE TABLE IF NOT EXISTS public.webservice_spatial
(
    id character varying(1024) NOT NULL,
    location character varying(1024) NOT NULL,
    instance_webservice_id character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.webservice_spatial
    ADD FOREIGN KEY (instance_webservice_id)
    REFERENCES public.webservice (instance_id);

CREATE TABLE IF NOT EXISTS public.operation
(
    uid character varying NOT NULL,
    method character varying(1024),
    template character varying(1024),
    supportedoperation character varying(1024),
    fileprovenance character varying(1024),

    instance_id character varying(1024),
    meta_id character varying(1024) NOT NULL,
    instance_changed_id character varying(1024),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id character varying(1024),
    change_comment character varying(1024),
    reviewer_meta_id character varying(1024),
    review_comment character varying(1024),
    version character varying(1024),
    state character varying(16),
    to_be_deleted boolean,
    PRIMARY KEY (instance_id)
);

ALTER TABLE IF EXISTS public.operation
    ADD FOREIGN KEY (reviewer_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

create index idx_operation_state on public.operation(state);

ALTER TABLE IF EXISTS public.operation
    ADD FOREIGN KEY (meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.operation
    ADD FOREIGN KEY (editor_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.operation
    ADD FOREIGN KEY (instance_changed_id)
    REFERENCES public.operation (instance_id);


CREATE TABLE IF NOT EXISTS public.webservice_supportedoperation
(
    instance_operation_id character varying(1024) NOT NULL,
    instance_webservice_id character varying(1024) NOT NULL,
    PRIMARY KEY (instance_webservice_id, instance_operation_id)
);

ALTER TABLE IF EXISTS public.webservice_supportedoperation
    ADD FOREIGN KEY (instance_webservice_id)
    REFERENCES public.webservice (instance_id);

ALTER TABLE IF EXISTS public.webservice_supportedoperation
    ADD FOREIGN KEY (instance_operation_id)
    REFERENCES public.operation (instance_id);

CREATE TABLE IF NOT EXISTS public.webservice_relation
(
    instance_webservice_id character varying(1024) NOT NULL,
    instance_webservice_id_0 character varying(1024) NOT NULL,
    PRIMARY KEY (instance_webservice_id, instance_webservice_id_0)
);

ALTER TABLE IF EXISTS public.webservice_relation
    ADD FOREIGN KEY (instance_webservice_id)
    REFERENCES public.webservice (instance_id);

ALTER TABLE IF EXISTS public.webservice_relation
    ADD FOREIGN KEY (instance_webservice_id_0)
    REFERENCES public.webservice (instance_id);
    
CREATE TABLE IF NOT EXISTS public.operation_returns
(
    id character varying(1024) NOT NULL,
    instance_operation_id character varying(1024),
    returns character varying(1024),
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.operation_returns
    ADD FOREIGN KEY (instance_operation_id)
    REFERENCES public.operation (instance_id);


CREATE TABLE IF NOT EXISTS public.mapping
(
    id character varying NOT NULL,
    label character varying(1024),
    variable character varying(1024) NOT NULL,
    required boolean NOT NULL,
    range character varying(1024) NOT NULL,
    defaultvalue character varying(1024),
    minvalue character varying(1024),
    maxvalue character varying(1024),
    property character varying(1024),
    valuepattern character varying(1024),
    read_only_value character varying(1024),
    multiple_values character varying(1024),
    ismappingof character varying(1024),
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.mapping
    ADD FOREIGN KEY (ismappingof)
    REFERENCES public.operation (instance_id);


CREATE TABLE IF NOT EXISTS public.mapping_paramvalue
(
    id character varying(1024) NOT NULL,
    instance_mapping_id character varying(1024) NOT NULL,
    paramvalue character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.mapping_paramvalue
    ADD FOREIGN KEY (instance_mapping_id)
    REFERENCES public.mapping (id);


CREATE TABLE IF NOT EXISTS public.softwareapplication
(
    uid character varying(1024) NOT NULL,
    name character varying(1024),
    description text,
    downloadURL character varying(1024),
    licenseURL character varying(1024),
    softwareversion character varying(1024),
    keywords text,
    requirements character varying(1024),
    installURL character varying(1024),
    mainentityofpage character varying(1024),
    fileprovenance character varying(1024),

    instance_id character varying(1024),
    meta_id character varying(1024) NOT NULL,
    instance_changed_id character varying(1024),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id character varying(1024),
    change_comment character varying(1024),
    reviewer_meta_id character varying(1024),
    review_comment character varying(1024),
    version character varying(1024),
    state character varying(16),
    to_be_deleted boolean,
    PRIMARY KEY (instance_id)
);

ALTER TABLE IF EXISTS public.softwareapplication
    ADD FOREIGN KEY (reviewer_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

create index idx_softwareapplication_state on public.softwareapplication(state);

ALTER TABLE IF EXISTS public.softwareapplication
    ADD FOREIGN KEY (meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.softwareapplication
    ADD FOREIGN KEY (editor_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.softwareapplication
    ADD FOREIGN KEY (instance_changed_id)
    REFERENCES public.softwareapplication (instance_id);


CREATE TABLE IF NOT EXISTS public.contactpoint_softwareapplication
(
    instance_softwareapplication_id character varying(1024) NOT NULL,
    instance_contactpoint_id character varying(1024) NOT NULL,
    PRIMARY KEY (instance_softwareapplication_id, instance_contactpoint_id)
);

ALTER TABLE IF EXISTS public.contactpoint_softwareapplication
    ADD FOREIGN KEY (instance_contactpoint_id)
    REFERENCES public.contactpoint (instance_id);

ALTER TABLE IF EXISTS public.contactpoint_softwareapplication
    ADD FOREIGN KEY (instance_softwareapplication_id)
    REFERENCES public.softwareapplication (instance_id);


CREATE TABLE IF NOT EXISTS public.softwareapplication_identifier
(
    id character varying(1024),
    type character varying(1024) NOT NULL,
    identifier character varying(1024) NOT NULL,
    instance_softwareapplication_id character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.softwareapplication_identifier
    ADD FOREIGN KEY (instance_softwareapplication_id)
    REFERENCES public.softwareapplication (instance_id);


CREATE TABLE IF NOT EXISTS public.softwareapplication_parameters
(
    id character varying(1024) NOT NULL,
    encodingformat character varying(1024),
    conformsto character varying(1024),
    action character varying(1024) NOT NULL,
    instance_softwareapplication_id character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.softwareapplication_parameters
    ADD FOREIGN KEY (instance_softwareapplication_id)
    REFERENCES public.softwareapplication (instance_id);


CREATE TABLE IF NOT EXISTS public.softwareapplication_operation
(
    instance_operation_id character varying(1024) NOT NULL,
    instance_softwareapplication_id character varying(1024) NOT NULL,
    PRIMARY KEY (instance_softwareapplication_id, instance_operation_id)
);

ALTER TABLE IF EXISTS public.softwareapplication_operation
    ADD FOREIGN KEY (instance_softwareapplication_id)
    REFERENCES public.softwareapplication (instance_id);

ALTER TABLE IF EXISTS public.softwareapplication_operation
    ADD FOREIGN KEY (instance_operation_id)
    REFERENCES public.operation (instance_id);


CREATE TABLE IF NOT EXISTS public.softwareapplication_category
(
    category_id character varying(1024) NOT NULL,
    instance_softwareapplication_id character varying(1024) NOT NULL,
    PRIMARY KEY (instance_softwareapplication_id, category_id)
);

ALTER TABLE IF EXISTS public.softwareapplication_category
    ADD FOREIGN KEY (instance_softwareapplication_id)
    REFERENCES public.softwareapplication (instance_id);

ALTER TABLE IF EXISTS public.softwareapplication_category
    ADD FOREIGN KEY (category_id)
    REFERENCES public.category (id);


CREATE TABLE IF NOT EXISTS public.softwaresourcecode
(
    uid character varying(1024) NOT NULL,
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

    instance_id character varying(1024),
    meta_id character varying(1024) NOT NULL,
    instance_changed_id character varying(1024),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id character varying(1024),
    change_comment character varying(1024),
    reviewer_meta_id character varying(1024),
    review_comment character varying(1024),
    version character varying(1024),
    state character varying(16),
    to_be_deleted boolean,
    PRIMARY KEY (instance_id)
);

ALTER TABLE IF EXISTS public.softwaresourcecode
    ADD FOREIGN KEY (reviewer_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

create index idx_softwaresourcecode_state on public.softwaresourcecode(state);

ALTER TABLE IF EXISTS public.softwaresourcecode
    ADD FOREIGN KEY (meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.softwaresourcecode
    ADD FOREIGN KEY (editor_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.softwaresourcecode
    ADD FOREIGN KEY (instance_changed_id)
    REFERENCES public.softwaresourcecode (instance_id);


CREATE TABLE IF NOT EXISTS public.contactpoint_softwaresourcecode
(
    instance_softwaresourcecode_id character varying(1024) NOT NULL,
    instance_contactpoint_id character varying(1024) NOT NULL,
    PRIMARY KEY (instance_softwaresourcecode_id, instance_contactpoint_id)
);

ALTER TABLE IF EXISTS public.contactpoint_softwaresourcecode
    ADD FOREIGN KEY (instance_contactpoint_id)
    REFERENCES public.contactpoint (instance_id);

ALTER TABLE IF EXISTS public.contactpoint_softwaresourcecode
    ADD FOREIGN KEY (instance_softwaresourcecode_id)
    REFERENCES public.softwaresourcecode (instance_id);


CREATE TABLE IF NOT EXISTS public.softwaresourcecode_identifier
(
    id character varying(1024),
    type character varying(1024) NOT NULL,
    identifier character varying(1024) NOT NULL,
    instance_softwaresourcecode_id character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.softwaresourcecode_identifier
    ADD FOREIGN KEY (instance_softwaresourcecode_id)
    REFERENCES public.softwaresourcecode (instance_id);


CREATE TABLE IF NOT EXISTS public.softwaresourcecode_programminglanguage
(
    id character varying(1024) NOT NULL,
    language character varying(1024) NOT NULL,
    instance_softwaresourcecode_id character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.softwaresourcecode_programminglanguage
    ADD FOREIGN KEY (instance_softwaresourcecode_id)
    REFERENCES public.softwaresourcecode (instance_id);


CREATE TABLE IF NOT EXISTS public.softwaresourcecode_category
(
    category_id character varying(1024) NOT NULL,
    instance_softwaresourcecode_id character varying(1024) NOT NULL,
    PRIMARY KEY (category_id, instance_softwaresourcecode_id)
);

ALTER TABLE IF EXISTS public.softwaresourcecode_category
    ADD FOREIGN KEY (instance_softwaresourcecode_id)
    REFERENCES public.softwaresourcecode (instance_id);

ALTER TABLE IF EXISTS public.softwaresourcecode_category
    ADD FOREIGN KEY (category_id)
    REFERENCES public.category (id);


CREATE TABLE IF NOT EXISTS public.contract
(
    identifier character varying(1024) NOT NULL,
    status character varying(1024) NOT NULL,
    name character varying(1024) NOT NULL,
    type character varying(1024) NOT NULL,
    fileprovenance character varying(1024),

    instance_id character varying(1024),
    meta_id character varying(1024) NOT NULL,
    instance_changed_id character varying(1024),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id character varying(1024),
    change_comment character varying(1024),
    reviewer_meta_id character varying(1024),
    review_comment character varying(1024),
    version character varying(1024),
    state character varying(16),
    to_be_deleted boolean,
    PRIMARY KEY (instance_id)
);

ALTER TABLE IF EXISTS public.contract
    ADD FOREIGN KEY (reviewer_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

create index idx_contract_state on public.contract(state);

ALTER TABLE IF EXISTS public.contract
    ADD FOREIGN KEY (meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.contract
    ADD FOREIGN KEY (editor_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.contract
    ADD FOREIGN KEY (instance_changed_id)
    REFERENCES public.contract (instance_id);


CREATE TABLE IF NOT EXISTS public.service
(
    uid character varying(1024) NOT NULL,
    identifier character varying(1024),
    name character varying(1024),
    description text,
    type character varying(1024),
    pageURL character varying(1024),
    keywords text,
    provider character varying(1024),
    servicecontract character varying(1024),
    fileprovenance character varying(1024),

    instance_id character varying(1024),
    meta_id character varying(1024) NOT NULL,
    instance_changed_id character varying(1024),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id character varying(1024),
    change_comment character varying(1024),
    reviewer_meta_id character varying(1024),
    review_comment character varying(1024),
    version character varying(1024),
    state character varying(16),
    to_be_deleted boolean,
    PRIMARY KEY (instance_id)
);

ALTER TABLE IF EXISTS public.service
    ADD FOREIGN KEY (reviewer_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

create index idx_service_state on public.service(state);

ALTER TABLE IF EXISTS public.service
    ADD FOREIGN KEY (provider)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.service
    ADD FOREIGN KEY (servicecontract)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.service
    ADD FOREIGN KEY (meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.service
    ADD FOREIGN KEY (editor_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.service
    ADD FOREIGN KEY (instance_changed_id)
    REFERENCES public.service (instance_id);


CREATE TABLE IF NOT EXISTS public.contactpoint_service
(
    instance_service_id character varying(1024) NOT NULL,
    instance_contactpoint_id character varying(1024) NOT NULL,
    PRIMARY KEY (instance_contactpoint_id, instance_service_id)
);

ALTER TABLE IF EXISTS public.contactpoint_service
    ADD FOREIGN KEY (instance_contactpoint_id)
    REFERENCES public.contactpoint (instance_id);

ALTER TABLE IF EXISTS public.contactpoint_service
    ADD FOREIGN KEY (instance_service_id)
    REFERENCES public.service (instance_id);


CREATE TABLE IF NOT EXISTS public.service_spatial
(
    id character varying(1024) NOT NULL,
    location character varying(1024) NOT NULL,
    instance_service_id character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.service_spatial
    ADD FOREIGN KEY (instance_service_id)
    REFERENCES public.service (instance_id);


CREATE TABLE IF NOT EXISTS public.service_temporal
(
    id character varying(1024) NOT NULL,
    startDate timestamp,
    endDate timestamp,
    instance_service_id character varying(1024),
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.service_temporal
    ADD FOREIGN KEY (instance_service_id)
    REFERENCES public.service (instance_id);


CREATE TABLE IF NOT EXISTS public.service_category
(
    category_id character varying(1024) NOT NULL,
    instance_service_id character varying(1024) NOT NULL,
    PRIMARY KEY (instance_service_id, category_id)
);

ALTER TABLE IF EXISTS public.service_category
    ADD FOREIGN KEY (instance_service_id)
    REFERENCES public.service (instance_id);

ALTER TABLE IF EXISTS public.service_category
    ADD FOREIGN KEY (category_id)
    REFERENCES public.category (id);


CREATE TABLE IF NOT EXISTS public.publication
(
    uid character varying(1024) NOT NULL,
    name character varying(1024) NOT NULL,
    published timestamp,
    abstract character varying(1024),
    licenseURL character varying(1024),
    keywords text,
    issn character varying(1024),
    pages integer,
    volumenumber character varying(1024),
    author character varying(1024) NOT NULL,
    publisher character varying(1024),
    fileprovenance character varying(1024),

    instance_id character varying(1024),
    meta_id character varying(1024) NOT NULL,
    instance_changed_id character varying(1024),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id character varying(1024),
    change_comment character varying(1024),
    reviewer_meta_id character varying(1024),
    review_comment character varying(1024),
    version character varying(1024),
    state character varying(16),
    to_be_deleted boolean,
    PRIMARY KEY (instance_id)
);

ALTER TABLE IF EXISTS public.publication
    ADD FOREIGN KEY (reviewer_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

create index idx_publication_state on public.publication(state);

ALTER TABLE IF EXISTS public.publication
    ADD FOREIGN KEY (meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.publication
    ADD FOREIGN KEY (editor_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.publication
    ADD FOREIGN KEY (instance_changed_id)
    REFERENCES public.publication (instance_id);

ALTER TABLE IF EXISTS public.publication
    ADD FOREIGN KEY (publisher)
    REFERENCES public.edm_entity_id (meta_id);


CREATE TABLE IF NOT EXISTS public.contributor
(
    meta_person_id character varying(1024) NOT NULL,
    instance_publication_id character varying(1024) NOT NULL,
    PRIMARY KEY (meta_person_id, instance_publication_id)
);

ALTER TABLE IF EXISTS public.contributor
    ADD FOREIGN KEY (meta_person_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.contributor
    ADD FOREIGN KEY (instance_publication_id)
    REFERENCES public.publication (instance_id);


CREATE TABLE IF NOT EXISTS public.publication_category
(
    category_id character varying(1024) NOT NULL,
    instance_publication_id character varying(1024) NOT NULL,
    PRIMARY KEY (category_id, instance_publication_id)
);

ALTER TABLE IF EXISTS public.publication_category
    ADD FOREIGN KEY (instance_publication_id)
    REFERENCES public.publication (instance_id);

ALTER TABLE IF EXISTS public.publication_category
    ADD FOREIGN KEY (category_id)
    REFERENCES public.category (id);


CREATE TABLE IF NOT EXISTS public.publication_identifier
(
    id character varying(1024),
    type character varying(1024) NOT NULL,
    identifier character varying(1024) NOT NULL,
    instance_publication_id character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.publication_identifier
    ADD FOREIGN KEY (instance_publication_id)
    REFERENCES public.publication (instance_id);


CREATE TABLE IF NOT EXISTS public.facility
(
    uid character varying(1024) NOT NULL,
    description text,
    title character varying(1024),
    type character(1024),
    address_id character varying(1024),
    owner character varying(1024),
    fileprovenance character varying(1024),

    instance_id character varying(1024),
    meta_id character varying(1024) NOT NULL,
    instance_changed_id character varying(1024),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id character varying(1024),
    change_comment character varying(1024),
    reviewer_meta_id character varying(1024),
    review_comment character varying(1024),
    version character varying(1024),
    state character varying(16),
    to_be_deleted boolean,
    PRIMARY KEY (instance_id)
);

ALTER TABLE IF EXISTS public.facility
    ADD FOREIGN KEY (reviewer_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

create index idx_facility_state on public.facility(state);

ALTER TABLE IF EXISTS public.facility
    ADD FOREIGN KEY (owner)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.facility
    ADD FOREIGN KEY (meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.facility
    ADD FOREIGN KEY (editor_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.facility
    ADD FOREIGN KEY (instance_changed_id)
    REFERENCES public.facility (instance_id);

ALTER TABLE IF EXISTS public.facility
    ADD FOREIGN KEY (address_id)
    REFERENCES public.address (id);


CREATE TABLE IF NOT EXISTS public.contactpoint_facility
(
    instance_facility_id character varying(1024) NOT NULL,
    instance_contactpoint_id character varying(1024) NOT NULL,
    PRIMARY KEY (instance_facility_id, instance_contactpoint_id)
);

ALTER TABLE IF EXISTS public.contactpoint_facility
    ADD FOREIGN KEY (instance_facility_id)
    REFERENCES public.facility (instance_id);

ALTER TABLE IF EXISTS public.contactpoint_facility
    ADD FOREIGN KEY (instance_contactpoint_id)
    REFERENCES public.contactpoint (instance_id);


CREATE TABLE IF NOT EXISTS public.facility_pageurl
(
    id character varying(1024) NOT NULL,
    pageURL character varying(1024),
    instance_facility_id character varying(1024),
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.facility_pageurl
    ADD FOREIGN KEY (instance_facility_id)
    REFERENCES public.facility (instance_id);


CREATE TABLE IF NOT EXISTS public.facility_service
(
    instance_facility_id character varying(1024) NOT NULL,
    instance_service_id character varying(1024) NOT NULL,
    PRIMARY KEY (instance_facility_id, instance_service_id)
);

ALTER TABLE IF EXISTS public.facility_service
    ADD FOREIGN KEY (instance_facility_id)
    REFERENCES public.facility (instance_id);

ALTER TABLE IF EXISTS public.facility_service
    ADD FOREIGN KEY (instance_service_id)
    REFERENCES public.service (instance_id);


CREATE TABLE IF NOT EXISTS public.facility_facility
(
    instance_facility1_id character varying(1024) NOT NULL,
    instance_facility2_id character varying(1024) NOT NULL,
    PRIMARY KEY (instance_facility1_id, instance_facility2_id)
);

ALTER TABLE IF EXISTS public.facility_facility
    ADD FOREIGN KEY (instance_facility1_id)
    REFERENCES public.facility (instance_id);

ALTER TABLE IF EXISTS public.facility_facility
    ADD FOREIGN KEY (instance_facility2_id)
    REFERENCES public.facility (instance_id);


CREATE TABLE IF NOT EXISTS public.facility_category
(
    category_id character varying(1024) NOT NULL,
    instance_facility_id character varying(1024) NOT NULL,
    PRIMARY KEY (instance_facility_id, category_id)
);

ALTER TABLE IF EXISTS public.facility_category
    ADD FOREIGN KEY (instance_facility_id)
    REFERENCES public.facility (instance_id);

ALTER TABLE IF EXISTS public.facility_category
    ADD FOREIGN KEY (category_id)
    REFERENCES public.category (id);


CREATE TABLE IF NOT EXISTS public.facility_spatial
(
    id character varying(1024) NOT NULL,
    location character varying(1024) NOT NULL,
    instance_facility_id character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.facility_spatial
    ADD FOREIGN KEY (instance_facility_id)
    REFERENCES public.facility (instance_id);


CREATE TABLE IF NOT EXISTS public.equipment
(
    uid character varying(1024) NOT NULL,
    identifier character varying(1024),
    description text,
    name character varying(1024),
    type character(1024),
    manufacturer character varying(1024),
    pageURL character varying(1024),
    filter character varying(1024),
    dynamicrange character varying(1024),
    orientation character varying(1024),
    resolution character varying(1024),
    sampleperiod character varying(1024),
    owner character varying(1024),
    serialnumber character varying(1024),
    fileprovenance character varying(1024),

    instance_id character varying(1024),
    meta_id character varying(1024) NOT NULL,
    instance_changed_id character varying(1024),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id character varying(1024),
    change_comment character varying(1024),
    reviewer_meta_id character varying(1024),
    review_comment character varying(1024),
    version character varying(1024),
    state character varying(16),
    to_be_deleted boolean,
    PRIMARY KEY (instance_id)
);

ALTER TABLE IF EXISTS public.equipment
    ADD FOREIGN KEY (reviewer_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

create index idx_equipment_state on public.equipment(state);

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
    id character varying(1024) NOT NULL,
    unit character varying(1024) NOT NULL,
    value_ character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.equipment
    ADD FOREIGN KEY (dynamicrange)
    REFERENCES public.quantitativevalue (id);

ALTER TABLE IF EXISTS public.equipment
    ADD FOREIGN KEY (sampleperiod)
    REFERENCES public.quantitativevalue (id);


CREATE TABLE IF NOT EXISTS public.equipment_equipment
(
    instance_equipment1_id character varying(1024) NOT NULL,
    instance_equipment2_id character varying(1024) NOT NULL,
    PRIMARY KEY (instance_equipment1_id, instance_equipment2_id)
);

ALTER TABLE IF EXISTS public.equipment_equipment
    ADD FOREIGN KEY (instance_equipment1_id)
    REFERENCES public.equipment (instance_id);

ALTER TABLE IF EXISTS public.equipment_equipment
    ADD FOREIGN KEY (instance_equipment2_id)
    REFERENCES public.equipment (instance_id);


CREATE TABLE IF NOT EXISTS public.equipment_facility
(
    instance_equipment_id character varying(1024) NOT NULL,
    instance_facility_id character varying(1024) NOT NULL,
    PRIMARY KEY (instance_equipment_id, instance_facility_id)
);

ALTER TABLE IF EXISTS public.equipment_facility
    ADD FOREIGN KEY (instance_equipment_id)
    REFERENCES public.equipment (instance_id);

ALTER TABLE IF EXISTS public.equipment_facility
    ADD FOREIGN KEY (instance_facility_id)
    REFERENCES public.facility (instance_id);


CREATE TABLE IF NOT EXISTS public.contactpoint_equipment
(
    instance_equipment_id character varying(1024) NOT NULL,
    instance_contactpoint_id character varying(1024) NOT NULL,
    PRIMARY KEY (instance_equipment_id, instance_contactpoint_id)
);

ALTER TABLE IF EXISTS public.contactpoint_equipment
    ADD FOREIGN KEY (instance_equipment_id)
    REFERENCES public.equipment (instance_id);

ALTER TABLE IF EXISTS public.contactpoint_equipment
    ADD FOREIGN KEY (instance_contactpoint_id)
    REFERENCES public.contactpoint (instance_id);


CREATE TABLE IF NOT EXISTS public.equipment_spatial
(
    id character varying(1024) NOT NULL,
    location character varying(1024) NOT NULL,
    instance_equipment_id character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.equipment_spatial
    ADD FOREIGN KEY (instance_equipment_id)
    REFERENCES public.equipment (instance_id);


CREATE TABLE IF NOT EXISTS public.equipment_temporal
(
    id character varying(1024) NOT NULL,
    startDate timestamp,
    endDate timestamp,
    instance_equipment_id character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.equipment_temporal
    ADD FOREIGN KEY (instance_equipment_id)
    REFERENCES public.equipment (instance_id);


CREATE TABLE IF NOT EXISTS public.equipment_category
(
    category_id character varying(1024) NOT NULL,
    instance_equipment_id character varying(1024) NOT NULL,
    PRIMARY KEY (category_id, instance_equipment_id)
);

ALTER TABLE IF EXISTS public.equipment_category
    ADD FOREIGN KEY (instance_equipment_id)
    REFERENCES public.equipment (instance_id);

ALTER TABLE IF EXISTS public.equipment_category
    ADD FOREIGN KEY (category_id)
    REFERENCES public.category (id);


CREATE TABLE IF NOT EXISTS public.equipment_relation
(
    instance_equipment_id character varying(1024) NOT NULL,
    meta_id character varying(1024) NOT NULL,
    PRIMARY KEY (instance_equipment_id, meta_id)
);

ALTER TABLE IF EXISTS public.equipment_relation
    ADD FOREIGN KEY (instance_equipment_id)
    REFERENCES public.equipment (instance_id);

ALTER TABLE IF EXISTS public.equipment_relation
    ADD FOREIGN KEY (meta_id)
    REFERENCES public.edm_entity_id (meta_id);



CREATE TABLE IF NOT EXISTS public.dataproduct_implementation_status
(
    meta_dataprovider_id character varying(1024) NOT NULL,
    meta_dataproduct_id character varying(1024) NOT NULL,
    status character varying(1024) NOT NULL,

    instance_id character varying(1024),
    meta_id character varying(1024) NOT NULL,
    instance_changed_id character varying(1024),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id character varying(1024),
    change_comment character varying(1024),
    reviewer_meta_id character varying(1024),
    review_comment character varying(1024),
    version character varying(1024),
    state character varying(16),
    to_be_deleted boolean,
    PRIMARY KEY (instance_id)
);

ALTER TABLE IF EXISTS public.dataproduct_implementation_status
    ADD FOREIGN KEY (reviewer_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

create index idx_dataproduct_implementation_status_state on public.dataproduct_implementation_status(state);

ALTER TABLE IF EXISTS public.dataproduct_implementation_status
    ADD FOREIGN KEY (meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.dataproduct_implementation_status
    ADD FOREIGN KEY (editor_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.dataproduct_implementation_status
    ADD FOREIGN KEY (instance_changed_id)
    REFERENCES public.dataproduct_implementation_status (instance_id);

ALTER TABLE IF EXISTS public.dataproduct_implementation_status
    ADD FOREIGN KEY (meta_dataprovider_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.dataproduct_implementation_status
    ADD FOREIGN KEY (meta_dataproduct_id)
    REFERENCES public.edm_entity_id (meta_id);


CREATE TABLE IF NOT EXISTS public.service_implementation_status
(
    meta_serviceprovider_id character varying(1024) NOT NULL,
    meta_service_id character varying(1024) NOT NULL,
    status character varying(1024) NOT NULL,

    instance_id character varying(1024),
    meta_id character varying(1024) NOT NULL,
    instance_changed_id character varying(1024),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id character varying(1024),
    change_comment character varying(1024),
    reviewer_meta_id character varying(1024),
    review_comment character varying(1024),
    version character varying(1024),
    state character varying(16),
    to_be_deleted boolean,
    PRIMARY KEY (instance_id)
);

ALTER TABLE IF EXISTS public.service_implementation_status
    ADD FOREIGN KEY (reviewer_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

create index idx_service_implementation_status_state on public.service_implementation_status(state);

ALTER TABLE IF EXISTS public.service_implementation_status
    ADD FOREIGN KEY (meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.service_implementation_status
    ADD FOREIGN KEY (editor_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.service_implementation_status
    ADD FOREIGN KEY (instance_changed_id)
    REFERENCES public.service_implementation_status (instance_id);

ALTER TABLE IF EXISTS public.service_implementation_status
    ADD FOREIGN KEY (meta_serviceprovider_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.service_implementation_status
    ADD FOREIGN KEY (meta_service_id)
    REFERENCES public.edm_entity_id (meta_id);


INSERT INTO public.edm_entity_id (meta_id) 
VALUES ('ingestor');

INSERT INTO public.person (uid, instance_id, meta_id, state) 
VALUES ( 'ingestor', 'ingestor', 'ingestor', 'PUBLISHED');


INSERT INTO public.edm_entity_id (meta_id) 
VALUES ('test');

INSERT INTO public.person (uid, instance_id, meta_id, state) 
VALUES ( 'test', 'test', 'test', 'PUBLISHED');


INSERT INTO public.edm_entity_id (meta_id) 
VALUES ('admin');

INSERT INTO public.person (uid, instance_id, meta_id, state) 
VALUES ( 'admin', 'admin', 'admin', 'PUBLISHED');

INSERT INTO public.edm_entity_id (meta_id)
VALUES ('backoffice');

INSERT INTO public.person (uid, instance_id, meta_id, state)
VALUES ( 'backoffice', 'backoffice', 'backoffice', 'PUBLISHED');

END;
