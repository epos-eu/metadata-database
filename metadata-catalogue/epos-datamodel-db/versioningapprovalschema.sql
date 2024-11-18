BEGIN;

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


CREATE TABLE IF NOT EXISTS public.group
(
    id character varying(1024) NOT NULL,
    name character varying(1024),
    description text,
    PRIMARY KEY (id)
);

INSERT INTO public.role (id, name, description)
VALUES ('ALL', 'ALL', 'Basic group');

INSERT INTO public.role (id, name, description)
VALUES ('MASTER_TABLE', 'Master Table', 'Group of the master table');

CREATE TABLE IF NOT EXISTS public.group_user
(
    meta_person_id character varying(1024) NOT NULL,
    group_id character varying(1024) NOT NULL,
    role_id character varying(1024) NOT NULL,
    PRIMARY KEY (meta_person_id, group_id)
);

ALTER TABLE IF EXISTS  public.group_user
    ADD FOREIGN KEY (meta_person_id)
    references public.person (meta_id);

ALTER TABLE IF EXISTS  public.group_user
    ADD FOREIGN KEY (group_id)
    references public.group (id);

ALTER TABLE IF EXISTS  public.group_user
    ADD FOREIGN KEY (role_id)
    references public.role (id);


CREATE TABLE IF NOT EXISTS public.authorization
(
    group_id character varying(1024) NOT NULL,
    meta_id character varying(1024) NOT NULL,
    PRIMARY KEY (group_id, meta_id)
);

ALTER TABLE IF EXISTS  public.authorization
    ADD FOREIGN KEY (group_id)
    references public.group (id);

ALTER TABLE IF EXISTS  public.authorization
    ADD FOREIGN KEY (meta_id)
    references public.edm_entity_id (meta_id);


INSERT INTO public.edm_entity_id (meta_id)
VALUES ('fixedUser4_metaid');

END;
