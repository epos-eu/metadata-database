BEGIN;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

/* COMMON */

CREATE TABLE IF NOT EXISTS public.versioningstatus
(
    id character varying(100),
    meta_id character varying(100),
    provenance character varying(1024),
    entity_id character varying(100),
    table_name character varying(1024),
    editor_id character varying(1024),
    reviewer_id character varying(100),
    review_comment character varying(1024),
    change_comment text,
    change_timestamp timestamptz,
    version character varying(1024),
    status character varying(16),
    PRIMARY KEY (id, meta_id)
);

/* ROLES AND GROUPS */

CREATE TABLE IF NOT EXISTS public.edm_entity_id
(
    meta_id character varying(100) PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS public.role
(
    id character varying(100) PRIMARY KEY,
    name character varying(1024),
    description TEXT
);

CREATE TABLE IF NOT EXISTS public.group_
(
    id character varying(100) PRIMARY KEY,
    name character varying(1024),
    description TEXT
);

CREATE TABLE IF NOT EXISTS public.group_user_
(
    meta_person_id character varying(100),
    group_id character varying(100),
    role_id character varying(100),
    PRIMARY KEY (meta_person_id, group_id),
    FOREIGN KEY (group_id) REFERENCES public.group_ (id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (role_id) REFERENCES public.role (id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (meta_person_id) REFERENCES public.edm_entity_id (meta_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS public.authorization_
(
    group_id character varying(100),
    meta_id character varying(100),
    PRIMARY KEY (group_id, meta_id),
    FOREIGN KEY (group_id) REFERENCES public.group_ (id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (meta_id) REFERENCES public.edm_entity_id (meta_id) ON DELETE CASCADE ON UPDATE CASCADE
);

/* INSERT INITIAL DATA */
INSERT INTO public.role (id, name, description)
VALUES 
    (uuid_generate_v4(), 'ADMIN', 'ADMIN User'),
    (uuid_generate_v4(), 'REVIEWER', 'REVIEWER User'),
    (uuid_generate_v4(), 'EDITOR', 'EDITOR User'),
    (uuid_generate_v4(), 'VIEWER', 'VIEWER User');

INSERT INTO public.group_ (id, name, description)
VALUES 
    (uuid_generate_v4(), 'ALL', 'Basic group'),
    (uuid_generate_v4(), 'MASTER_TABLE', 'Group of the master table');


/* ADDRESS */

CREATE TABLE IF NOT EXISTS public.address
(
    uid character varying(100),
    id character varying(100),
    meta_id character varying(100),
    country character varying(255),
    countrycode character varying(10),
    street character varying(255),
    postal_code character varying(20),
    locality character varying(255),
    PRIMARY KEY (id, meta_id),
    FOREIGN KEY (id, meta_id) REFERENCES public.versioningstatus (id, meta_id)
);


/* CATEGORIES AND CATEGORIES SCHEMES */


CREATE TABLE IF NOT EXISTS public.category_scheme
(
    id character varying(100) PRIMARY KEY,
    uid character varying(255) NOT NULL,
    name character varying(255),
    code character varying(255),
    description TEXT,
    logo character varying(255),
    homepage character varying(255),
    color character varying(255),
    orderitemnumber character varying(255)
);

CREATE TABLE IF NOT EXISTS public.category
(
    id character varying(100) PRIMARY KEY,
    in_scheme character varying(100) REFERENCES public.category_scheme (id),
    uid character varying(255) NOT NULL,
    description TEXT,
    name character varying(255)
);

CREATE TABLE IF NOT EXISTS public.category_ispartof
(
    category1_id character varying(100) NOT NULL,
    category2_id character varying(100) NOT NULL,
    PRIMARY KEY (category1_id, category2_id),
    FOREIGN KEY (category1_id) REFERENCES public.category (id),
    FOREIGN KEY (category2_id) REFERENCES public.category (id)
);

CREATE TABLE IF NOT EXISTS public.hastopconcept
(
    category_scheme_id character varying(100) NOT NULL,
    category_id character varying(100) NOT NULL,
    PRIMARY KEY (category_scheme_id, category_id),
    FOREIGN KEY (category_scheme_id) REFERENCES public.category_scheme (id),
    FOREIGN KEY (category_id) REFERENCES public.category (id)
);

/* PERSON */


CREATE TABLE IF NOT EXISTS public.person
(
    uid character varying(1024) NOT NULL,
    auth_identifier character varying(1024),
    familyname character varying(1024),
    givenname character varying(1024),
    qualifications character varying(1024),
    cvurl character varying(1024),
    address_id character varying(100),
    fileprovenance character varying(1024),
    tmpRole character varying(1024),
    instance_id character varying(100),
    meta_id character varying(100) NOT NULL,
    instance_changed_id character varying(100),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id character varying(100),
    change_comment character varying(1024),
    reviewer_meta_id character varying(100),
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
    id character varying(100),
    type character varying(1024) NOT NULL,
    identifier character varying(1024) NOT NULL,
    instance_person_id character varying(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_person_id) REFERENCES public.person (instance_id)
);

CREATE TABLE IF NOT EXISTS public.person_email
(
    id character varying(100),
    email character varying(1024),
    instance_person_id character varying(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_person_id) REFERENCES public.person (instance_id)
);

CREATE TABLE IF NOT EXISTS public.person_telephone
(
    id character varying(100),
    telnumber character varying(1024) NOT NULL,
    instance_person_id character varying(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_person_id) REFERENCES public.person (instance_id)
);

/* CONTACTPOINT */


CREATE TABLE IF NOT EXISTS public.contactpoint
(
    uid character varying(1024) NOT NULL,
    role character varying(1024),
    meta_person_id character varying(100),
    meta_organization_id character varying(100),
    fileprovenance character varying(1024),
    instance_id character varying(100),
    meta_id character varying(100) NOT NULL,
    instance_changed_id character varying(100),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id character varying(100),
    change_comment character varying(1024),
    reviewer_meta_id character varying(100),
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
    id character varying(100),
    email character varying(1024),
    instance_contactpoint_id character varying(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_contactpoint_id) REFERENCES public.contactpoint (instance_id)
);

CREATE TABLE IF NOT EXISTS public.contactpoint_language
(
    id character varying(100),
    language character varying(1024),
    instance_contactpoint_id character varying(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_contactpoint_id) REFERENCES public.contactpoint (instance_id)
);

CREATE TABLE IF NOT EXISTS public.contactpoint_telephone
(
    id character varying(100),
    telnumber character varying(1024) NOT NULL,
    instance_contactpoint_id character varying(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_contactpoint_id) REFERENCES public.contactpoint (instance_id)
);


/* ORGANIZATION */


CREATE TABLE IF NOT EXISTS public.organization
(
    uid character varying(1024) NOT NULL,
    acronym character varying(1024),
    leicode character varying(1024),
    address_id character varying(100),
    logo character varying(1024),
    URL character varying(1024),
    type character varying(1024),
    maturity character varying(1024),
    fileprovenance character varying(1024),
    instance_id character varying(100),
    meta_id character varying(100) NOT NULL,
    instance_changed_id character varying(100),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id character varying(100),
    change_comment character varying(1024),
    reviewer_meta_id character varying(100),
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
    instance_organization1_id character varying(100) NOT NULL,
    instance_organization2_id character varying(100) NOT NULL,
    PRIMARY KEY (instance_organization1_id, instance_organization2_id),
    FOREIGN KEY (instance_organization1_id) REFERENCES public.organization (instance_id),
    FOREIGN KEY (instance_organization2_id) REFERENCES public.organization (instance_id)
);

CREATE TABLE IF NOT EXISTS public.affiliation
(
    instance_person_id character varying(100) NOT NULL,
    meta_organization_id character varying(100) NOT NULL,
    PRIMARY KEY (instance_person_id, meta_organization_id),
    FOREIGN KEY (instance_person_id) REFERENCES public.person (instance_id),
    FOREIGN KEY (meta_organization_id) REFERENCES public.edm_entity_id (meta_id)
);

CREATE TABLE IF NOT EXISTS public.organization_identifier
(
    id character varying(100),
    type character varying(1024) NOT NULL,
    identifier character varying(1024) NOT NULL,
    instance_organization_id character varying(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_organization_id) REFERENCES public.organization (instance_id)
);

CREATE TABLE IF NOT EXISTS public.organization_email
(
    id character varying(100),
    email character varying(1024) NOT NULL,
    instance_organization_id character varying(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_organization_id) REFERENCES public.organization (instance_id)
);

CREATE TABLE IF NOT EXISTS public.organization_legalname
(
    id character varying(100),
    legalname character varying(1024) NOT NULL,
    instance_organization_id character varying(100) NOT NULL,
    language character varying(1024),
    PRIMARY KEY (id),
    FOREIGN KEY (instance_organization_id) REFERENCES public.organization (instance_id)
);

CREATE TABLE IF NOT EXISTS public.organization_telephone
(
    id character varying(100),
    number character varying(1024) NOT NULL,
    instance_organization_id character varying(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_organization_id) REFERENCES public.organization (instance_id)
);

CREATE TABLE IF NOT EXISTS public.contactpoint_organization
(
    instance_organization_id character varying(100) NOT NULL,
    instance_contactpoint_id character varying(100) NOT NULL,
    PRIMARY KEY (instance_organization_id, instance_contactpoint_id),
    FOREIGN KEY (instance_organization_id) REFERENCES public.organization (instance_id),
    FOREIGN KEY (instance_contactpoint_id) REFERENCES public.contactpoint (instance_id)
);

CREATE TABLE IF NOT EXISTS public.organization_owner
(
    meta_id character varying(100) NOT NULL,
    instance_organization_id character varying(100) NOT NULL,
    PRIMARY KEY (meta_id, instance_organization_id),
    FOREIGN KEY (meta_id) REFERENCES public.edm_entity_id (meta_id),
    FOREIGN KEY (instance_organization_id) REFERENCES public.organization (instance_id)
);

/* DATAPRODUCT */


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
    instance_id character varying(100),
    meta_id character varying(100) NOT NULL,
    instance_changed_id character varying(100),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id character varying(100),
    change_comment character varying(1024),
    reviewer_meta_id character varying(100),
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
    instance_dataproduct1_id character varying(100) NOT NULL,
    instance_dataproduct2_id character varying(100) NOT NULL,
    PRIMARY KEY (instance_dataproduct1_id, instance_dataproduct2_id),
    FOREIGN KEY (instance_dataproduct1_id) REFERENCES public.dataproduct (instance_id),
    FOREIGN KEY (instance_dataproduct2_id) REFERENCES public.dataproduct (instance_id)
);

CREATE TABLE IF NOT EXISTS public.ispartof_dataproduct
(
    instance_dataproduct1_id character varying(100) NOT NULL,
    instance_dataproduct2_id character varying(100) NOT NULL,
    PRIMARY KEY (instance_dataproduct1_id, instance_dataproduct2_id),
    FOREIGN KEY (instance_dataproduct1_id) REFERENCES public.dataproduct (instance_id),
    FOREIGN KEY (instance_dataproduct2_id) REFERENCES public.dataproduct (instance_id)
);

CREATE TABLE IF NOT EXISTS public.publisher
(
    instance_dataproduct_id character varying(100) NOT NULL,
    meta_organization_id character varying(100) NOT NULL,
    PRIMARY KEY (instance_dataproduct_id, meta_organization_id),
    FOREIGN KEY (instance_dataproduct_id) REFERENCES public.dataproduct (instance_id),
    FOREIGN KEY (meta_organization_id) REFERENCES public.edm_entity_id (meta_id)
);

CREATE TABLE IF NOT EXISTS public.contactpoint_dataproduct
(
    instance_dataproduct_id character varying(100) NOT NULL,
    instance_contactpoint_id character varying(100) NOT NULL,
    PRIMARY KEY (instance_dataproduct_id, instance_contactpoint_id),
    FOREIGN KEY (instance_dataproduct_id) REFERENCES public.dataproduct (instance_id),
    FOREIGN KEY (instance_contactpoint_id) REFERENCES public.contactpoint (instance_id)
);

CREATE TABLE IF NOT EXISTS public.dataproduct_title
(
    id character varying(100),
    title character varying(1024) NOT NULL,
    lang character varying(20),
    instance_dataproduct_id character varying(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_dataproduct_id) REFERENCES public.dataproduct (instance_id)
);

CREATE TABLE IF NOT EXISTS public.dataproduct_description
(
    id character varying(100),
    description text NOT NULL,
    lang character varying(20),
    instance_dataproduct_id character varying(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_dataproduct_id) REFERENCES public.dataproduct (instance_id)
);

CREATE TABLE IF NOT EXISTS public.dataproduct_category
(
    category_id character varying(100) NOT NULL,
    instance_dataproduct_id character varying(100) NOT NULL,
    PRIMARY KEY (category_id, instance_dataproduct_id),
    FOREIGN KEY (category_id) REFERENCES public.category (id),
    FOREIGN KEY (instance_dataproduct_id) REFERENCES public.dataproduct (instance_id)
);

CREATE TABLE IF NOT EXISTS public.dataproduct_provenance
(
    id character varying(100),
    provenance character varying(1024) NOT NULL,
    instance_dataproduct_id character varying(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_dataproduct_id) REFERENCES public.dataproduct (instance_id)
);

CREATE TABLE IF NOT EXISTS public.dataproduct_identifier
(
    id character varying(100),
    type character varying(1024) NOT NULL,
    identifier character varying(1024) NOT NULL,
    instance_dataproduct_id character varying(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_dataproduct_id) REFERENCES public.dataproduct (instance_id)
);

CREATE TABLE IF NOT EXISTS public.dataproduct_spatial
(
    id character varying(100),
    location character varying(1024) NOT NULL,
    instance_dataproduct_id character varying(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_dataproduct_id) REFERENCES public.dataproduct (instance_id)
);

CREATE TABLE IF NOT EXISTS public.dataproduct_temporal
(
    id character varying(100),
    startDate timestamp,
    endDate timestamp,
    instance_dataproduct_id character varying(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_dataproduct_id) REFERENCES public.dataproduct (instance_id)
);

CREATE TABLE IF NOT EXISTS public.dataproduct_relation
(
    meta_id character varying(100) NOT NULL,
    instance_dataproduct_id character varying(100) NOT NULL,
    PRIMARY KEY (meta_id, instance_dataproduct_id),
    FOREIGN KEY (meta_id) REFERENCES public.edm_entity_id (meta_id),
    FOREIGN KEY (instance_dataproduct_id) REFERENCES public.dataproduct (instance_id)
);


/* DISTRIBUTION */


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
    instance_id character varying(100),
    meta_id character varying(100) NOT NULL,
    instance_changed_id character varying(100),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id character varying(100),
    change_comment character varying(1024),
    reviewer_meta_id character varying(100),
    review_comment character varying(1024),
    version character varying(1024),
    state character varying(16),
    to_be_deleted boolean,
    PRIMARY KEY (instance_id)
);

ALTER TABLE IF EXISTS public.distribution
    ADD FOREIGN KEY (reviewer_meta_id) REFERENCES public.edm_entity_id (meta_id),
    ADD FOREIGN KEY (editor_meta_id) REFERENCES public.edm_entity_id (meta_id),
    ADD FOREIGN KEY (instance_changed_id) REFERENCES public.distribution (instance_id),
    ADD FOREIGN KEY (meta_id) REFERENCES public.edm_entity_id (meta_id);

CREATE TABLE IF NOT EXISTS public.is_distribution
(
    instance_dataproduct_id character varying(100) NOT NULL,
    instance_distribution_id character varying(100) NOT NULL,
    PRIMARY KEY (instance_dataproduct_id, instance_distribution_id),
    FOREIGN KEY (instance_dataproduct_id) REFERENCES public.dataproduct (instance_id),
    FOREIGN KEY (instance_distribution_id) REFERENCES public.distribution (instance_id)
);

CREATE TABLE IF NOT EXISTS public.distribution_title
(
    id character varying(100),
    title character varying(1024) NOT NULL,
    lang character varying(20),
    instance_distribution_id character varying(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_distribution_id) REFERENCES public.distribution (instance_id)
);

CREATE TABLE IF NOT EXISTS public.distribution_description
(
    id character varying(100),
    description text NOT NULL,
    lang character varying(20),
    instance_distribution_id character varying(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_distribution_id) REFERENCES public.distribution (instance_id)
);

CREATE TABLE IF NOT EXISTS public.distribution_downloadurl
(
    id character varying(100),
    downloadURL character varying(1024) NOT NULL,
    instance_distribution_id character varying(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_distribution_id) REFERENCES public.distribution (instance_id)
);

/* WEBSERVICE */


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
    provider character varying(100),
    aaaitypes character varying(1024),
    fileprovenance character varying(1024),
    instance_id character varying(100),
    meta_id character varying(100) NOT NULL,
    instance_changed_id character varying(100),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id character varying(100),
    change_comment character varying(1024),
    reviewer_meta_id character varying(100),
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
    id character varying(100),
    type character varying(1024) NOT NULL,
    identifier character varying(1024) NOT NULL,
    webservice_instance_id character varying(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (webservice_instance_id) REFERENCES public.webservice (instance_id)
);

CREATE TABLE IF NOT EXISTS public.contactpoint_webservice
(
    instance_webservice_id character varying(100) NOT NULL,
    instance_contactpoint_id character varying(100) NOT NULL,
    PRIMARY KEY (instance_webservice_id, instance_contactpoint_id),
    FOREIGN KEY (instance_webservice_id) REFERENCES public.webservice (instance_id),
    FOREIGN KEY (instance_contactpoint_id) REFERENCES public.contactpoint (instance_id)
);

CREATE TABLE IF NOT EXISTS public.webservice_category
(
    category_id character varying(100) NOT NULL,
    instance_webservice_id character varying(100) NOT NULL,
    PRIMARY KEY (instance_webservice_id, category_id),
    FOREIGN KEY (instance_webservice_id) REFERENCES public.webservice (instance_id),
    FOREIGN KEY (category_id) REFERENCES public.category (id)
);

CREATE TABLE IF NOT EXISTS public.webservice_documentation
(
    id character varying(100),
    documentation character varying(1024) NOT NULL,
    instance_webservice_id character varying(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_webservice_id) REFERENCES public.webservice (instance_id)
);

CREATE TABLE IF NOT EXISTS public.webservice_temporal
(
    id character varying(100),
    startDate timestamp,
    endDate timestamp,
    instance_webservice_id character varying(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_webservice_id) REFERENCES public.webservice (instance_id)
);

CREATE TABLE IF NOT EXISTS public.webservice_spatial
(
    id character varying(100),
    location character varying(1024) NOT NULL,
    instance_webservice_id character varying(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_webservice_id) REFERENCES public.webservice (instance_id)
);

/* OPERATION */


CREATE TABLE IF NOT EXISTS public.operation
(
    uid character varying(1024) NOT NULL,
    method character varying(1024),
    template text,
    supportedoperation character varying(1024),
    fileprovenance character varying(1024),
    instance_id character varying(100),
    meta_id character varying(100) NOT NULL,
    instance_changed_id character varying(100),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id character varying(100),
    change_comment character varying(1024),
    reviewer_meta_id character varying(100),
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
    instance_operation_id character varying(100) NOT NULL,
    instance_webservice_id character varying(100) NOT NULL,
    PRIMARY KEY (instance_webservice_id, instance_operation_id),
    FOREIGN KEY (instance_webservice_id) REFERENCES public.webservice (instance_id),
    FOREIGN KEY (instance_operation_id) REFERENCES public.operation (instance_id)
);

CREATE TABLE IF NOT EXISTS public.distribution_accessurl
(
    instance_operation_id character varying(100) NOT NULL,
    instance_distribution_id character varying(100) NOT NULL,
    PRIMARY KEY (instance_distribution_id, instance_operation_id),
    FOREIGN KEY (instance_distribution_id) REFERENCES public.distribution (instance_id),
    FOREIGN KEY (instance_operation_id) REFERENCES public.operation (instance_id)
);

CREATE TABLE IF NOT EXISTS public.webservice_relation
(
    instance_webservice_id character varying(100) NOT NULL,
    instance_webservice_id_0 character varying(100) NOT NULL,
    PRIMARY KEY (instance_webservice_id, instance_webservice_id_0),
    FOREIGN KEY (instance_webservice_id) REFERENCES public.webservice (instance_id),
    FOREIGN KEY (instance_webservice_id_0) REFERENCES public.webservice (instance_id)
);

CREATE TABLE IF NOT EXISTS public.operation_returns
(
    id character varying(100),
    instance_operation_id character varying(100),
    returns character varying(1024),
    PRIMARY KEY (id),
    FOREIGN KEY (instance_operation_id) REFERENCES public.operation (instance_id)
);


/* MAPPING */


CREATE TABLE IF NOT EXISTS public.mapping
(
    id character varying(100),
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
    ismappingof character varying(100),
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.mapping
    ADD FOREIGN KEY (ismappingof) REFERENCES public.operation (instance_id);

CREATE TABLE IF NOT EXISTS public.mapping_paramvalue
(
    id character varying(100),
    instance_mapping_id character varying(100) NOT NULL,
    paramvalue character varying(1024) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_mapping_id) REFERENCES public.mapping (id)
);


/* SOFTWAREAPPLICATION */


CREATE TABLE IF NOT EXISTS public.softwareapplication
(
    uid character varying(100),
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
    instance_id character varying(100),
    meta_id character varying(100) NOT NULL,
    instance_changed_id character varying(100),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id character varying(100),
    change_comment character varying(1024),
    reviewer_meta_id character varying(100),
    review_comment character varying(1024),
    version character varying(1024),
    state character varying(16),
    to_be_deleted boolean,
    PRIMARY KEY (uid)
);

ALTER TABLE IF EXISTS public.softwareapplication
    ADD FOREIGN KEY (reviewer_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.softwareapplication
    ADD FOREIGN KEY (meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.softwareapplication
    ADD FOREIGN KEY (editor_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.softwareapplication
    ADD FOREIGN KEY (instance_changed_id)
    REFERENCES public.softwareapplication (uid);


CREATE TABLE IF NOT EXISTS public.contactpoint_softwareapplication
(
    instance_softwareapplication_id character varying(100) NOT NULL,
    instance_contactpoint_id character varying(100) NOT NULL,
    PRIMARY KEY (instance_softwareapplication_id, instance_contactpoint_id)
);

ALTER TABLE IF EXISTS public.contactpoint_softwareapplication
    ADD FOREIGN KEY (instance_softwareapplication_id)
    REFERENCES public.softwareapplication (uid);

ALTER TABLE IF EXISTS public.contactpoint_softwareapplication
    ADD FOREIGN KEY (instance_contactpoint_id)
    REFERENCES public.contactpoint (instance_id);


CREATE TABLE IF NOT EXISTS public.softwareapplication_identifier
(
    id character varying(100),
    type character varying(1024) NOT NULL,
    identifier character varying(1024) NOT NULL,
    instance_softwareapplication_id character varying(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_softwareapplication_id)
    REFERENCES public.softwareapplication (uid)
);


CREATE TABLE IF NOT EXISTS public.softwareapplication_parameters
(
    id character varying(100),
    encodingformat character varying(1024),
    conformsto character varying(1024),
    action character varying(1024) NOT NULL,
    instance_softwareapplication_id character varying(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_softwareapplication_id)
    REFERENCES public.softwareapplication (uid)
);


CREATE TABLE IF NOT EXISTS public.softwareapplication_operation
(
    instance_operation_id character varying(100) NOT NULL,
    instance_softwareapplication_id character varying(100) NOT NULL,
    PRIMARY KEY (instance_softwareapplication_id, instance_operation_id)
);

ALTER TABLE IF EXISTS public.softwareapplication_operation
    ADD FOREIGN KEY (instance_softwareapplication_id)
    REFERENCES public.softwareapplication (uid);

ALTER TABLE IF EXISTS public.softwareapplication_operation
    ADD FOREIGN KEY (instance_operation_id)
    REFERENCES public.operation (instance_id);


CREATE TABLE IF NOT EXISTS public.softwareapplication_category
(
    category_id character varying(100) NOT NULL,
    instance_softwareapplication_id character varying(100) NOT NULL,
    PRIMARY KEY (instance_softwareapplication_id, category_id)
);

ALTER TABLE IF EXISTS public.softwareapplication_category
    ADD FOREIGN KEY (instance_softwareapplication_id)
    REFERENCES public.softwareapplication (uid);

ALTER TABLE IF EXISTS public.softwareapplication_category
    ADD FOREIGN KEY (category_id)
    REFERENCES public.category (id);

/* SOFTWARESOURCECODE */


CREATE TABLE IF NOT EXISTS public.softwaresourcecode
(
    uid character varying(100),
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
    instance_id character varying(100),
    meta_id character varying(100) NOT NULL,
    instance_changed_id character varying(100),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id character varying(100),
    change_comment character varying(1024),
    reviewer_meta_id character varying(100),
    review_comment character varying(1024),
    version character varying(1024),
    state character varying(16),
    to_be_deleted boolean,
    PRIMARY KEY (uid)
);

ALTER TABLE IF EXISTS public.softwaresourcecode
    ADD FOREIGN KEY (reviewer_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.softwaresourcecode
    ADD FOREIGN KEY (meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.softwaresourcecode
    ADD FOREIGN KEY (editor_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

ALTER TABLE IF EXISTS public.softwaresourcecode
    ADD FOREIGN KEY (instance_changed_id)
    REFERENCES public.softwaresourcecode (uid);


CREATE TABLE IF NOT EXISTS public.contactpoint_softwaresourcecode
(
    instance_softwaresourcecode_id character varying(100) NOT NULL,
    instance_contactpoint_id character varying(100) NOT NULL,
    PRIMARY KEY (instance_softwaresourcecode_id, instance_contactpoint_id)
);

ALTER TABLE IF EXISTS public.contactpoint_softwaresourcecode
    ADD FOREIGN KEY (instance_softwaresourcecode_id)
    REFERENCES public.softwaresourcecode (uid);

ALTER TABLE IF EXISTS public.contactpoint_softwaresourcecode
    ADD FOREIGN KEY (instance_contactpoint_id)
    REFERENCES public.contactpoint (instance_id);


CREATE TABLE IF NOT EXISTS public.softwaresourcecode_identifier
(
    id character varying(100),
    type character varying(1024) NOT NULL,
    identifier character varying(1024) NOT NULL,
    instance_softwaresourcecode_id character varying(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_softwaresourcecode_id)
    REFERENCES public.softwaresourcecode (uid)
);


CREATE TABLE IF NOT EXISTS public.softwaresourcecode_programminglanguage
(
    id character varying(100),
    language character varying(1024) NOT NULL,
    instance_softwaresourcecode_id character varying(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (instance_softwaresourcecode_id)
    REFERENCES public.softwaresourcecode (uid)
);


CREATE TABLE IF NOT EXISTS public.softwaresourcecode_category
(
    category_id character varying(100) NOT NULL,
    instance_softwaresourcecode_id character varying(100) NOT NULL,
    PRIMARY KEY (category_id, instance_softwaresourcecode_id)
);

ALTER TABLE IF EXISTS public.softwaresourcecode_category
    ADD FOREIGN KEY (instance_softwaresourcecode_id)
    REFERENCES public.softwaresourcecode (uid);

ALTER TABLE IF EXISTS public.softwaresourcecode_category
    ADD FOREIGN KEY (category_id)
    REFERENCES public.category (id);

/* CONTRACT */


CREATE TABLE IF NOT EXISTS public.contract
(
    identifier character varying(1024) NOT NULL,
    status character varying(1024) NOT NULL,
    name character varying(1024) NOT NULL,
    type character varying(1024) NOT NULL,
    fileprovenance character varying(1024),
    instance_id character varying(100),
    meta_id character varying(100) NOT NULL,
    instance_changed_id character varying(100),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id character varying(100),
    change_comment character varying(1024),
    reviewer_meta_id character varying(100),
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


/* SERVICE */


CREATE TABLE IF NOT EXISTS public.service
(
    uid character varying(1024) NOT NULL,
    identifier character varying(1024),
    name character varying(1024),
    description text,
    type character varying(1024),
    pageURL character varying(1024),
    keywords text,
    provider character varying(100),
    servicecontract character varying(100),
    fileprovenance character varying(1024),
    instance_id character varying(100),
    meta_id character varying(100) NOT NULL,
    instance_changed_id character varying(100),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id character varying(100),
    change_comment character varying(1024),
    reviewer_meta_id character varying(100),
    review_comment character varying(1024),
    version character varying(1024),
    state character varying(16),
    to_be_deleted boolean,
    PRIMARY KEY (instance_id)
);

CREATE INDEX IF NOT EXISTS idx_service_state ON public.service(state);

ALTER TABLE IF EXISTS public.service
    ADD FOREIGN KEY (reviewer_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

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
    instance_service_id character varying(100) NOT NULL,
    instance_contactpoint_id character varying(100) NOT NULL,
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
    id character varying(100) NOT NULL,
    location character varying(1024) NOT NULL,
    instance_service_id character varying(100) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.service_spatial
    ADD FOREIGN KEY (instance_service_id)
    REFERENCES public.service (instance_id);

CREATE TABLE IF NOT EXISTS public.service_temporal
(
    id character varying(100) NOT NULL,
    startDate timestamp,
    endDate timestamp,
    instance_service_id character varying(100) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.service_temporal
    ADD FOREIGN KEY (instance_service_id)
    REFERENCES public.service (instance_id);

CREATE TABLE IF NOT EXISTS public.service_category
(
    category_id character varying(100) NOT NULL,
    instance_service_id character varying(100) NOT NULL,
    PRIMARY KEY (instance_service_id, category_id)
);

ALTER TABLE IF EXISTS public.service_category
    ADD FOREIGN KEY (instance_service_id)
    REFERENCES public.service (instance_id);

ALTER TABLE IF EXISTS public.service_category
    ADD FOREIGN KEY (category_id)
    REFERENCES public.category (id);


/* PUBLICATION */


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
    publisher character varying(100),
    fileprovenance character varying(1024),
    instance_id character varying(100),
    meta_id character varying(100) NOT NULL,
    instance_changed_id character varying(100),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id character varying(100),
    change_comment character varying(1024),
    reviewer_meta_id character varying(100),
    review_comment character varying(1024),
    version character varying(1024),
    state character varying(16),
    to_be_deleted boolean,
    PRIMARY KEY (instance_id)
);

CREATE INDEX IF NOT EXISTS idx_publication_state ON public.publication(state);

ALTER TABLE IF EXISTS public.publication
    ADD FOREIGN KEY (reviewer_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

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
    meta_person_id character varying(100) NOT NULL,
    instance_publication_id character varying(100) NOT NULL,
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
    category_id character varying(100) NOT NULL,
    instance_publication_id character varying(100) NOT NULL,
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
    id character varying(100) NOT NULL,
    type character varying(1024) NOT NULL,
    identifier character varying(1024) NOT NULL,
    instance_publication_id character varying(100) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.publication_identifier
    ADD FOREIGN KEY (instance_publication_id)
    REFERENCES public.publication (instance_id);


/* FACILITY */


CREATE TABLE IF NOT EXISTS public.facility
(
    uid character varying(1024) NOT NULL,
    identifier character varying(1024),
    description text,
    title character varying(1024),
    type character(1024),
    address_id character varying(100),
    owner character varying(100),
    keywords text,
    fileprovenance character varying(1024),
    instance_id character varying(100),
    meta_id character varying(100) NOT NULL,
    instance_changed_id character varying(100),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id character varying(100),
    change_comment character varying(1024),
    reviewer_meta_id character varying(100),
    review_comment character varying(1024),
    version character varying(1024),
    state character varying(16),
    to_be_deleted boolean,
    PRIMARY KEY (instance_id)
);

CREATE INDEX IF NOT EXISTS idx_facility_state ON public.facility(state);

ALTER TABLE IF EXISTS public.facility
    ADD FOREIGN KEY (reviewer_meta_id)
    REFERENCES public.edm_entity_id (meta_id);

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

CREATE TABLE IF NOT EXISTS public.contactpoint_facility
(
    instance_facility_id character varying(100) NOT NULL,
    instance_contactpoint_id character varying(100) NOT NULL,
    PRIMARY KEY (instance_facility_id, instance_contactpoint_id)
);

CREATE TABLE IF NOT EXISTS public.facility_pageurl
(
    id character varying(100) NOT NULL,
    pageURL character varying(1024),
    instance_facility_id character varying(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.facility_service
(
    instance_facility_id character varying(100) NOT NULL,
    instance_service_id character varying(100) NOT NULL,
    PRIMARY KEY (instance_facility_id, instance_service_id)
);

CREATE TABLE IF NOT EXISTS public.facility_facility
(
    instance_facility1_id character varying(100) NOT NULL,
    instance_facility2_id character varying(100) NOT NULL,
    PRIMARY KEY (instance_facility1_id, instance_facility2_id)
);

CREATE TABLE IF NOT EXISTS public.facility_category
(
    category_id character varying(100) NOT NULL,
    instance_facility_id character varying(100) NOT NULL,
    PRIMARY KEY (instance_facility_id, category_id)
);

CREATE TABLE IF NOT EXISTS public.facility_spatial
(
    id character varying(100) NOT NULL,
    location character varying(1024) NOT NULL,
    instance_facility_id character varying(100) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.contactpoint_facility
    ADD FOREIGN KEY (instance_facility_id)
    REFERENCES public.facility (instance_id);

ALTER TABLE IF EXISTS public.contactpoint_facility
    ADD FOREIGN KEY (instance_contactpoint_id)
    REFERENCES public.contactpoint (instance_id);

ALTER TABLE IF EXISTS public.facility_pageurl
    ADD FOREIGN KEY (instance_facility_id)
    REFERENCES public.facility (instance_id);

ALTER TABLE IF EXISTS public.facility_service
    ADD FOREIGN KEY (instance_facility_id)
    REFERENCES public.facility (instance_id);

ALTER TABLE IF EXISTS public.facility_service
    ADD FOREIGN KEY (instance_service_id)
    REFERENCES public.service (instance_id);

ALTER TABLE IF EXISTS public.facility_facility
    ADD FOREIGN KEY (instance_facility1_id)
    REFERENCES public.facility (instance_id);

ALTER TABLE IF EXISTS public.facility_facility
    ADD FOREIGN KEY (instance_facility2_id)
    REFERENCES public.facility (instance_id);

ALTER TABLE IF EXISTS public.facility_category
    ADD FOREIGN KEY (instance_facility_id)
    REFERENCES public.facility (instance_id);

ALTER TABLE IF EXISTS public.facility_category
    ADD FOREIGN KEY (category_id)
    REFERENCES public.category (id);

ALTER TABLE IF EXISTS public.facility_spatial
    ADD FOREIGN KEY (instance_facility_id)
    REFERENCES public.facility (instance_id);

/* EQUIPMENT */


CREATE TABLE IF NOT EXISTS public.equipment
(
    uid character varying(1024) NOT NULL,
    identifier character varying(1024),
    description text,
    name character varying(1024),
    type character(1024),
    manufacturer character varying(100),
    keywords text,
    pageURL character varying(1024),
    filter character varying(1024),
    dynamicrange character varying(100),
    orientation character varying(1024),
    resolution character varying(1024),
    sampleperiod character varying(100),
    owner character varying(100),
    serialnumber character varying(1024),
    fileprovenance character varying(1024),
    instance_id character varying(100),
    meta_id character varying(100) NOT NULL,
    instance_changed_id character varying(100),
    change_timestamp timestamptz,
    operation character varying(1024),
    editor_meta_id character varying(100),
    change_comment character varying(1024),
    reviewer_meta_id character varying(100),
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
    id character varying(100) NOT NULL,
    unit character varying(1024) NOT NULL,
    value_ character varying(1024) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.equipment_equipment
(
    instance_equipment1_id character varying(100) NOT NULL,
    instance_equipment2_id character varying(100) NOT NULL,
    PRIMARY KEY (instance_equipment1_id, instance_equipment2_id)
);

CREATE TABLE IF NOT EXISTS public.equipment_facility
(
    instance_equipment_id character varying(100) NOT NULL,
    instance_facility_id character varying(100) NOT NULL,
    PRIMARY KEY (instance_equipment_id, instance_facility_id)
);

CREATE TABLE IF NOT EXISTS public.contactpoint_equipment
(
    instance_equipment_id character varying(100) NOT NULL,
    instance_contactpoint_id character varying(100) NOT NULL,
    PRIMARY KEY (instance_equipment_id, instance_contactpoint_id)
);

CREATE TABLE IF NOT EXISTS public.equipment_spatial
(
    id character varying(100) NOT NULL,
    location character varying(1024) NOT NULL,
    instance_equipment_id character varying(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.equipment_temporal
(
    id character varying(100) NOT NULL,
    startDate timestamp,
    endDate timestamp,
    instance_equipment_id character varying(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.equipment_category
(
    category_id character varying(100) NOT NULL,
    instance_equipment_id character varying(100) NOT NULL,
    PRIMARY KEY (category_id, instance_equipment_id)
);

CREATE TABLE IF NOT EXISTS public.equipment_relation
(
    instance_equipment_id character varying(100) NOT NULL,
    meta_id character varying(100) NOT NULL,
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