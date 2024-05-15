BEGIN;

CREATE TABLE IF NOT EXISTS public.address
(
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    country VARCHAR(255),
    countrycode VARCHAR(10),
    street VARCHAR(255),
    postal_code VARCHAR(20),
    locality VARCHAR(255)
);

END;