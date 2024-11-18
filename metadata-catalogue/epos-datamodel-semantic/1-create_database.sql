\connect cerif;
BEGIN;
--
-- Name: ontology; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.ontology (
    id character varying NOT NULL,
    name character varying NOT NULL,
    owner character varying,
    datemodified date,
    versioninfo character varying,
    description character varying,
    license character varying
);

-- Name: ontology ontology_pkey; Type: CONSTRAINT; Schema: public; Owner: root
ALTER TABLE ONLY public.ontology
    ADD CONSTRAINT ontology_pkey PRIMARY KEY (id);
    
--
-- Name: class; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.class (
    id character varying NOT NULL,
    class_name character varying NOT NULL,
    definition character varying,
    isdefinedby character varying,
    vocabulary character varying
);

-- Name: class class_pkey; Type: CONSTRAINT; Schema: public; Owner: root
ALTER TABLE ONLY public.class
    ADD CONSTRAINT class_pkey PRIMARY KEY (id);
    
--
-- Name: ontology_class; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.ontology_class (
    ontology_id character varying NOT NULL,
    class_id character varying NOT NULL
);

-- Name: ontology_class ontology_class_pkey; Type: CONSTRAINT; Schema: public; Owner: root
ALTER TABLE ONLY public.ontology_class
    ADD CONSTRAINT ontology_class_pkey PRIMARY KEY (ontology_id, class_id);
-- Name: ontology_class class_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
ALTER TABLE ONLY public.ontology_class
    ADD CONSTRAINT class_fk FOREIGN KEY (class_id) REFERENCES public.class(id); 
-- Name: ontology_class ontology_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
ALTER TABLE ONLY public.ontology_class
    ADD CONSTRAINT ontology_fk FOREIGN KEY (ontology_id) REFERENCES public.ontology(id);  
        
--
-- Name: class_mapping; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.class_mapping (
    class1_id character varying NOT NULL,
    class2_id character varying NOT NULL
);

-- Name: class_mapping class_mapping_pkey; Type: CONSTRAINT; Schema: public; Owner: root
ALTER TABLE ONLY public.class_mapping
    ADD CONSTRAINT class_mapping_pkey PRIMARY KEY (class1_id, class2_id);
-- Name: class_mapping class1_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
ALTER TABLE ONLY public.class_mapping
    ADD CONSTRAINT class1_fk FOREIGN KEY (class1_id) REFERENCES public.class(id);
-- Name: class_mapping class2_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
ALTER TABLE ONLY public.class_mapping
    ADD CONSTRAINT class2_fk FOREIGN KEY (class2_id) REFERENCES public.class(id);

--
-- Name: domain; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.domain (
    property_id character varying NOT NULL,
    class_id character varying NOT NULL
);

-- Name: domain domain_pkey; Type: CONSTRAINT; Schema: public; Owner: root
ALTER TABLE ONLY public.domain
    ADD CONSTRAINT domain_pkey PRIMARY KEY (property_id, class_id);
-- Name: domain classfk; Type: FK CONSTRAINT; Schema: public; Owner: root
ALTER TABLE ONLY public.domain
    ADD CONSTRAINT classfk FOREIGN KEY (class_id) REFERENCES public.class(id);
    
--
-- Name: range; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.range (
    property_id character varying NOT NULL,
    range_id character varying NOT NULL
);

-- Name: range range_pkey; Type: CONSTRAINT; Schema: public; Owner: root
ALTER TABLE ONLY public.range
    ADD CONSTRAINT range_pkey PRIMARY KEY (property_id, range_id);

-- Name: range rangefk; Type: FK CONSTRAINT; Schema: public; Owner: root
ALTER TABLE ONLY public.range
    ADD CONSTRAINT rangefk FOREIGN KEY (range_id) REFERENCES public.class(id);

--
-- Name: property; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.property (
    id character varying NOT NULL,
    property_name character varying NOT NULL,
    property_description character varying,
    isdefinedby character varying,
    vocabulary character varying,
    mincardinality character varying,
    maxcardinality character varying,
    type character varying
);

-- Name: property property_pkey; Type: CONSTRAINT; Schema: public; Owner: root
ALTER TABLE ONLY public.property
    ADD CONSTRAINT property_pkey PRIMARY KEY (id);
-- Name: domain propertyfk; Type: FK CONSTRAINT; Schema: public; Owner: root
ALTER TABLE ONLY public.domain
    ADD CONSTRAINT propertyfk FOREIGN KEY (property_id) REFERENCES public.property(id);
-- Name: range propertyfk; Type: FK CONSTRAINT; Schema: public; Owner: root
ALTER TABLE ONLY public.range
    ADD CONSTRAINT propertyfk FOREIGN KEY (property_id) REFERENCES public.property(id);

--
-- Name: source_to_target_mapping; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.source_to_target_mapping (
    property_source character varying NOT NULL,
    property_target character varying NOT NULL
);

-- Name: source_to_target_mapping mapping_pkey; Type: CONSTRAINT; Schema: public; Owner: root
ALTER TABLE ONLY public.source_to_target_mapping
    ADD CONSTRAINT mapping_pkey_primary PRIMARY KEY (property_source, property_target);
-- Name: source_to_target_mapping sourcefk; Type: FK CONSTRAINT; Schema: public; Owner: root
ALTER TABLE ONLY public.source_to_target_mapping
    ADD CONSTRAINT sourcefk FOREIGN KEY (property_source) REFERENCES public.property(id);
-- Name: source_to_target_mapping targetfk; Type: FK CONSTRAINT; Schema: public; Owner: root
ALTER TABLE ONLY public.source_to_target_mapping
    ADD CONSTRAINT targetfk FOREIGN KEY (property_target) REFERENCES public.property(id);

END;
