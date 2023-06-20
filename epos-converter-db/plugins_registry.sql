BEGIN;

CREATE TABLE plugin_header (
	id SERIAL PRIMARY KEY,
	plugin_id VARCHAR(100) NOT NULL,
	version VARCHAR(20) NOT NULL,
	install_location VARCHAR(300) NOT NULL,
	proxy_type VARCHAR(25) NOT NULL,
	name VARCHAR(200) NOT NULL,
	repo_access_restriction BOOLEAN, -- could be null if plugin has been bundled with the container
	repo_location VARCHAR(300), -- could be null if plugin has been bundled with the container
	author_name VARCHAR(200),
	author_contact VARCHAR(200),
	description VARCHAR(300),
	UNIQUE(plugin_id, version)
);

CREATE TABLE plugin_status (
	hdr_id INTEGER NOT NULL PRIMARY KEY,
	installed BOOLEAN NOT NULL DEFAULT FALSE,
	enabled BOOLEAN NOT NULL DEFAULT FALSE,
	CONSTRAINT fk_hdr_id
		FOREIGN KEY(hdr_id)
			REFERENCES plugin_header(id)
);

CREATE TABLE repo_plugin_artifact (
	id SERIAL PRIMARY KEY,
	hdr_id INTEGER NOT NULL,
	artifact_location VARCHAR(300) NOT NULL,
	CONSTRAINT fk_hdr_id
		FOREIGN KEY(hdr_id)
			REFERENCES plugin_header(id)
);

CREATE TABLE conv_desc (
	id SERIAL PRIMARY KEY,
	hdr_id INTEGER NOT NULL,
	req_type VARCHAR(500) NOT NULL,
	req_content_type VARCHAR(100) NOT NULL,
	resp_content_type VARCHAR(100) NOT NULL,
	UNIQUE(hdr_id, req_type, req_content_type, resp_content_type),
	CONSTRAINT fk_hdr_id
		FOREIGN KEY(hdr_id)
			REFERENCES plugin_header(id)
);

CREATE TABLE conv_invocation_desc (
	id SERIAL PRIMARY KEY,
	conv_desc_id INTEGER NOT NULL,
	ordinal INTEGER NOT NULL,
	invocation_detail VARCHAR(300) NOT NULL,
	UNIQUE(ordinal, conv_desc_id),
	CONSTRAINT fk_conv_desc_id
		FOREIGN KEY(conv_desc_id)
			REFERENCES conv_desc(id)
);

END;
