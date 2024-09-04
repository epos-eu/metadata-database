BEGIN;

CREATE TABLE plugin (
	id character varying(1024) NOT NULL PRIMARY KEY,
	software_source_code_id VARCHAR(1024) NOT NULL,
	software_application_id VARCHAR(1024) NOT NULL,
	version VARCHAR(1024) NOT NULL,
	proxy_type VARCHAR(1024) NOT NULL,
	runtime VARCHAR(1024) NOT NULL,
	execution VARCHAR(1024) NOT NULL,
	installed BOOLEAN NOT NULL DEFAULT FALSE,
	enabled BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE plugin_relations (
	id character varying(1024) NOT NULL PRIMARY KEY,
	plugin_id character varying(1024) NOT NULL,
	relation_id VARCHAR(1024) NOT NULL,
	relation_type VARCHAR(1024) NOT NULL
);


END;