BEGIN;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS public.edm_entity_id
(
    meta_id UUID DEFAULT uuid_generate_v4() PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS public.role
(
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    name VARCHAR(1024),
    description TEXT
);

CREATE TABLE IF NOT EXISTS public.group_
(
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    name VARCHAR(1024),
    description TEXT
);

CREATE TABLE IF NOT EXISTS public.group_user_
(
    meta_person_id UUID,
    group_id UUID,
    role_id UUID,
    PRIMARY KEY (meta_person_id, group_id),
    FOREIGN KEY (group_id) REFERENCES public.group_ (id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (role_id) REFERENCES public.role (id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (meta_person_id) REFERENCES public.edm_entity_id (meta_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS public.authorization_
(
    group_id UUID,
    meta_id UUID,
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

END;