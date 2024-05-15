BEGIN;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS public.category_scheme
(
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    uid VARCHAR(255) NOT NULL,
    name VARCHAR(255),
    code VARCHAR(255),
    description TEXT,
    logo VARCHAR(255),
    homepage VARCHAR(255),
    color VARCHAR(255),
    orderitemnumber VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS public.category
(
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    in_scheme UUID REFERENCES public.category_scheme (id),
    uid VARCHAR(255) NOT NULL,
    description TEXT,
    name VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS public.category_ispartof
(
    category1_id UUID NOT NULL,
    category2_id UUID NOT NULL,
    PRIMARY KEY (category1_id, category2_id),
    FOREIGN KEY (category1_id) REFERENCES public.category (id),
    FOREIGN KEY (category2_id) REFERENCES public.category (id)
);

CREATE TABLE IF NOT EXISTS public.hastopconcept
(
    category_scheme_id UUID NOT NULL,
    category_id UUID NOT NULL,
    PRIMARY KEY (category_scheme_id, category_id),
    FOREIGN KEY (category_scheme_id) REFERENCES public.category_scheme (id),
    FOREIGN KEY (category_id) REFERENCES public.category (id)
);

END;