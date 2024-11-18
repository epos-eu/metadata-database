\connect cerif;
BEGIN;

--
-- Data for Name: ontology; Type: TABLE DATA; Schema: public; Owner: root
--

INSERT INTO public.ontology (id, name, owner, datemodified, versioninfo, description, license) VALUES ('edm', 'epos data model', 'epos', NULL, NULL, NULL, NULL);
INSERT INTO public.ontology (id, name, owner, datemodified, versioninfo, description, license) VALUES ('epos', 'epos-dcat-ap', 'epos', '2021-03-10', '1.0', 'EPOS DCAT Application Profile is an extension of DCAT-AP for solid-Earth sciences communities.', NULL);

--
-- Data for Name: class; Type: TABLE DATA; Schema: public; Owner: root
--
/*EDM*/
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('literal', 'Literal', 'The class rdfs:Literal is the class of literal values such as strings and integers. Property values such as textual strings are examples of RDF literals.', NULL, 'rdfs:Literal');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('edmdataproduct', 'DataProduct', 'It represents Data and Data Product. A conceptual entity that represents the information published.', NULL, '');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('edmdistribution', 'Distribution', 'A physical embodiment of the Data Product in a particular format.', NULL, '');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('edmwebservice', 'WebService', 'Online interfaces (APIs) enabling a user or a machine to programmatically access the given resource	', NULL, '');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('edmoperation', 'Operation', 'A description of a web service operation.	', NULL, '');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('edmmapping', 'Mapping', 'This maps a variable used in the template to a property and may optionally specify whether that variable is required or not. The syntax of the template literal is specified by its datatype and defaults to the [RFC6570] URI Template syntax, which can be explicitly indicated by hydra:Rfc6570Template.', NULL, '');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('edmperson', 'Person', 'Human being', NULL, '');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('edmorganization', 'Organization', 'Institution or International organization	', NULL, '');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('edmsoftwaresourcecode', 'SoftwareSourceCode', 'Computer programming source code. Example:Full (compile ready) solutions, code snippet samples, scripts, templates.	', NULL, NULL);
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('edmsoftwareapplication', 'SoftwareApplication', 'This represents software packages, applications and programs. It also includes coding routines representing scientific model(s). ', NULL, '');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('edmservice', 'Service', 'Describes an offer of an RI to the community. It could be free or ask for something in return (money, publication of the datasets, etc.).', NULL, '');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('edmfacility', 'Facility', 'This refers to facilities with resources and related services used by the scientific community to conduct top-level research in their respective fields, ranging from social sciences to astronomy, genomics to nanotechnologies. Examples include laboratories, special habitats, libraries, databases, biological archives, etc. A type of facility could be a research infrastructure a higher aggregated entity.	', NULL, '');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('edmequipment', 'Equipment', 'Device', NULL, '');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('edmpublication', 'Publication', 'A text publication is a resource relating to a dataset, data product or other.	', NULL, '');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('edmcategory', 'Category', 'A subject of a Class	', NULL, '');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('edmcontactpoint', 'Contact Point', 'A Contact Point of a Class	', NULL, '');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('edmlocation', 'Location', 'A spatial region or named place. It can be represented using a controlled vocabulary or with geographic coordinates. In the latter case, the use of the Core Location vocabulary is recommended, following the approach described in the GeoDCAT-AP specification', NULL, '');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('edmperiodtime', 'Period Of Time', 'An interval of time that is named or defined by its start and end dates.', NULL, '');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('edmaddress', 'Address', 'Physical address of the item.	', NULL, '');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('edmquantitativevalue', 'QuantitativeValue', 'A point value or interval for product characteristics and other purposes.', NULL, '');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('edmcategoryscheme', 'CategoryScheme', 'A concept collection (e.g. controlled vocabulary) in which the Category is defined.', NULL, '');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('edmidentifier', 'Identifier', 'This Class contains the main identifier.', NULL, 'adms:Identifier');

/*EPOS*/
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposagent', 'Agent', 'An entity that is associated with Catalogues and/or Datasets. If the Agent is an organisation, the use of the Organization Ontology is recommended.	', NULL, 'foaf:aAgent');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposcatalogue', 'Catalogue', 'A catalogue or repository that hosts the Datasets being described.	', NULL, 'dcatCatalogue');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposdataset', 'Dataset', 'A conceptual entity that represents the information published.	', NULL, 'dcat:Dataset');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposresource', 'Resource', 'Anything described by RDF.', NULL, 'rdfs:Resource');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposcategory', 'Category', 'A subject of a Dataset.', NULL, 'skos:Concept');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposcategoryscheme', 'Category scheme', 'A concept collection (e.g. controlled vocabulary) in which the Category is defined. 	', NULL, 'skos:ConceptScheme');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposdistribution', 'Distribution', 'A physical embodiment of the Dataset in a particular format. 	', NULL, 'dcat:Distribution');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposlicensedocument', 'License document', 'A legal document giving official permission to do something with a resource. 	', NULL, 'dct:LicenseDocument');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposcataloguerecord', 'Catalogue Record', 'A description of a Dataset’s entry in the Catalogue.	', NULL, 'dcat:CatalogRecord ');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposchecksum', 'Checksum', 'A value that allows the contents of a file to be authenticated. This class allows the results of a variety of checksum and cryptographic message digest algorithms to be represented.	', NULL, 'spdx:Checksum');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposdocument', 'Document', 'A textual resource intended for human consumption that contains information, e.g. aweb page about a Dataset.	', NULL, 'foaf:Document');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposfrequency', 'Frequency', 'A rate at which something recurs, e.g. the publication of a Dataset.	', NULL, 'dct:Frequency');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposidentifier', 'Identifier', 'An identifier in a particular context, consisting of the string that is the identifier; an optional identifier for the identifier scheme; an optional identifier for the version of the identifier scheme; an optional identifier for the agency that manages the identifier scheme	', NULL, 'adms:Identifier');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposlinguisticsystem', 'Linguistic system', 'A system of signs, symbols, sounds, gestures, or rules used in communication, e.g. a language	', NULL, 'dct:LinguisticSystem');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposlocation', 'Location', 'A spatial region or named place. It can be represented using a controlled vocabulary or with geographic coordinates. In the latter case, the use of the Core Location Vocabulary is recommended, following the approach described in the GeoDCAT-AP specification.	', NULL, 'dct:Location');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposmediatype', 'Media type or extent', 'A media type or extent, e.g. the format of a computer file	', NULL, 'dct:MediaTypeOrExtent');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposperiodtime', 'Period of time', 'An interval of time that is named or defined by its start and end dates.	', NULL, 'dct:PeriodOfTime');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('epospublishertype', 'Publisher type', 'A type of organisation that acts as a publisher	', NULL, 'skos:Concept');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposrightsstatement', 'Rights statement', 'A statement about the intellectual property rights (IPR)() held in or over a resource, a legal document giving official permission to do something with a resource, or a statement about access rights.	', NULL, 'dct:RightsStatement');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposstandard', 'Standard', 'A standard or other specification to which a Dataset or Distribution conforms	', NULL, 'dct:Standard');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposstatus', 'Status', 'An indication of the maturity of a Distribution or the type of change of a Catalogue Record.	', NULL, 'skos:Concept');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposprovenance', 'Provenance Statement', 'A statement of any changes in ownership and custody of a resource since its creation that are significant for its authenticity, integrity, and interpretation	', NULL, 'dct:ProvenanceStatement');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposequipment', 'Equipment', 'Device	', NULL, 'epos:Equipment');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposking', 'Kind', 'A description following the vCard specification, e.g. to provide telephone number and e-mail address for a contact point. Note that the class Kind is the parent class for the four explicit types of vCards (Individual, Organization, Location, Group).	', NULL, 'vcard:Kind');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposfacility', 'Facility', 'This refers to facilities with resources and related services used by the scientific community to conduct top-level research in their respective fields, ranging from social sciences to astronomy, genomics to nanotechnologies. Examples include laboratories, special habitats, libraries, databases, biological archives, etc. A type of facility could be a research infrastructure a higher aggregated entity.	', NULL, 'epos:Facility');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('epossoftwareapplication', 'SoftwareApplication', 'This represents software packages, applications and programs.	', NULL, 'schema:SoftwareApplication');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('epossoftwaresourcecode', 'SoftwareSourceCode', 'Computer programming source code. Example:Full (compile ready) solutions, code snippet samples, scripts, templates.	', NULL, 'schema:SoftwareSourceCode');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('epospublication', 'Publication', 'a text publication is a resource relating to a dataset, data product or other. 	', NULL, 'epos:Publication');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposwebservice', 'WebService', 'Online interfaces (APIs) enabling a user or a machine to programmatically access the given resource.	', NULL, 'epos:WebService');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposservice', 'Service', 'Describes an offer of an RI to the community. It could be free or ask for something in return (money, publication of the datasets, etc.).	', NULL, 'schema:Service');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposproject', 'Project', 'This refers to associated projects for an organization.	', NULL, 'foaf:Project');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposoperation', 'Operation', 'A description of a web service operation.	', NULL, 'hydra:Operation');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposiritemplate', 'IriTemplate', 'An IriTemplate consists of a template literal and a set of mappings.	', NULL, 'hydra:IriTemplate');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposiritemplatemapping', 'IriTemplateMapping', 'This maps a variable used in the template to a property and may optionally specify whether that variable is required or not. The syntax of the template literal is specified by its datatype and defaults to the [RFC6570] URI Template syntax, which can be explicitly indicated by hydra:Rfc6570Template.	', NULL, 'hydra:IriTemplateMapping');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposapidocumentation', 'ApiDocumentation', 'This refers to the API documentation of .	', NULL, 'hydra:ApiDocumentation');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposcontactpoint', 'ContactPoint', 'A Contact Point of a Class	', NULL, 'schema:ContactPoint');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposorganization', 'Organization', 'Institution or International organization	', NULL, 'schema:Organization');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposperson', 'Person', 'Human being	', NULL, 'schema:Person');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposquantitativevalue', 'QuantitativeValue', 'A point value or interval for product characteristics and other purposes.	', NULL, 'schema:QuantitativeValue');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposaddress', 'Address', 'Physical address of the item.	', NULL, 'vcard:Address');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('epospostaladdress', 'PostalAddress', 'Physical address of the item.	', NULL, 'schema:PostalAddress');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('epospropertyvalue', 'PropertyValue', 'A property-value pair, e.g. representing a feature of a product or place. Use the property for the name of the property. 	', NULL, 'schema:PropertyValue');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposcontrolaction', 'ControlAction', 'An agent controls a device or application.	', NULL, 'schema:ControlAction');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposcreativework', 'CreativeWork', 'The most generic kind of creative work, including books, movies, photographs, software programs, etc.	', NULL, 'schema:CreativeWork');
INSERT INTO public.class (id, class_name, definition, isdefinedby, vocabulary) VALUES ('eposkind', 'Kind', 'A description following the vCard specification, e.g. to provide telephone number and e-mail address for a contact point. Note that the class Kind is the parent class for the four explicit types of vCards (Individual, Organization, Location, Group).	', NULL, NULL);

--
-- TOC entry 3361 (class 0 OID 26080)
-- Dependencies: 211
-- Data for Name: ontology_class; Type: TABLE DATA; Schema: public; Owner: root
--
/*EPOS*/
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposagent');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposcatalogue');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposdataset');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposresource');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposcategory');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposcategoryscheme');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposdistribution');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposlicensedocument');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposcataloguerecord');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposchecksum');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposdocument');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposfrequency');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposidentifier');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposlinguisticsystem');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposlocation');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposmediatype');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposperiodtime');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'epospublishertype');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposrightsstatement');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposstandard');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposstatus');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposprovenance');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposequipment');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposfacility');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'epossoftwareapplication');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'epossoftwaresourcecode');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'epospublication');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposwebservice');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposservice');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposproject');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposoperation');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposiritemplate');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposiritemplatemapping');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposapidocumentation');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposcontactpoint');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposorganization');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposperson');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposquantitativevalue');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposaddress');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'epospostaladdress');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'epospropertyvalue');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'eposkind');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('epos', 'literal');

/*EDM*/
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('edm', 'literal');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('edm', 'edmdataproduct');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('edm', 'edmdistribution');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('edm', 'edmwebservice');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('edm', 'edmoperation');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('edm', 'edmmapping');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('edm', 'edmperson');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('edm', 'edmorganization');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('edm', 'edmsoftwaresourcecode');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('edm', 'edmsoftwareapplication');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('edm', 'edmservice');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('edm', 'edmfacility');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('edm', 'edmequipment');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('edm', 'edmpublication');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('edm', 'edmcategory');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('edm', 'edmcontactpoint');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('edm', 'edmlocation');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('edm', 'edmperiodtime');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('edm', 'edmaddress');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('edm', 'edmquantitativevalue');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('edm', 'edmidentifier');
INSERT INTO public.ontology_class (ontology_id, class_id) VALUES ('edm', 'edmcategoryscheme');

--
-- Data for Name: class_mapping; Type: TABLE DATA; Schema: public; Owner: root
--

INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('edmaddress', 'eposaddress');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('edmaddress', 'epospostaladdress');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('edmcategory', 'eposcategory');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('edmcategoryscheme', 'eposcategoryscheme');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('edmcontactpoint', 'eposcontactpoint');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('edmdataproduct', 'eposdataset');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('edmdistribution', 'eposdistribution');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('edmequipment', 'eposequipment');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('edmfacility', 'eposfacility');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('edmidentifier', 'eposidentifier');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('edmidentifier', 'epospropertyvalue');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('edmlocation', 'eposlocation');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('edmmapping', 'eposiritemplatemapping');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('edmoperation', 'eposoperation');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('edmorganization', 'eposorganization');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('edmperiodtime', 'eposperiodtime');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('edmperson', 'eposperson');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('edmpublication', 'epospublication');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('edmquantitativevalue', 'eposquantitativevalue');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('edmservice', 'eposservice');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('edmsoftwaresourcecode', 'epossoftwaresourcecode');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('edmsoftwareapplication', 'epossoftwareapplication');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('edmoperation', 'eposresource');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('edmwebservice', 'eposwebservice');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('edmcontactpoint', 'eposkind');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('edmorganization', 'eposagent');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('edmwebservice', 'eposstandard');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('edmservice', 'eposresource');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('edmdataproduct', 'eposresource');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('edmwebservice', 'eposresource');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('literal', 'literal');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('literal', 'eposfrequency');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('literal', 'eposstatus');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('literal', 'eposrightsstatement');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('literal', 'eposapidocumentation');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('literal', 'eposcategory');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('literal', 'eposmediatype');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('literal', 'eposstandard');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('literal', 'eposlicensedocument');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('literal', 'eposresource');
INSERT INTO public.class_mapping (class1_id, class2_id) VALUES ('literal', 'eposdocument');
--
-- Data for Name: property; Type: TABLE DATA; Schema: public; Owner: root
--
/*EDM*/
/* edmdataproduct */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdataproduct1', 'UID', 'This property contains the main identifier for the Data Product, e.g. the URI or other unique identifier in the context of the Catalogue.', NULL, NULL, '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdataproduct2', 'Title', 'This property contains a name given to the Data Product. This property can be repeated for parallel language versions of the name.', NULL, NULL, '1', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdataproduct3', 'Description', 'This property contains a free-text account of the Data Product. This property can be repeated for parallel language versions of the description.', NULL, NULL, '1', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdataproduct4', 'Identifier', 'This property refers to a secondary identifier of the Data Product, such as MAST/ADS, DataCite, DOI, EZID or W3ID.', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdataproduct5', 'Created', 'This property contains the date on which the Data Product was created.', NULL, NULL, '0', '1', 'xsd:dateTime');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdataproduct6', 'Issued', 'This property contains the date of formal issuance (e.g., publication) of the Data Product.', NULL, NULL, '0', '1', 'xsd:dateTime');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdataproduct7', 'Modified', 'This property contains the most recent date on which the Data Product was changed or modified.', NULL, NULL, '0', '1', 'xsd:dateTime');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdataproduct8', 'Version Info', 'This property contains a version number or other version designation of the Data Product.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdataproduct9', 'Type', 'This property refers to the type of the Data Product. A controlled vocabulary for the values has not been established.', NULL, NULL, '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdataproduct10', 'Accrual Periodicity', 'This property refers to the frequency at which the Data Product is updated.', NULL, NULL, '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdataproduct11', 'Category', 'This property refers to a category of the Data Product. A Data Product may be associated with multiple categories.', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdataproduct12', 'Keywords', 'This property contains a keyword or tag describing the Data Product. Multiple entries in a keywords list are typically delimited by commas.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdataproduct13', 'Contact Point', 'This property contains contact information (i.e. Role) that can be used for sending comments about the Data Product.', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdataproduct14', 'Publisher', 'This property refers to an entity (organisation) responsible for making the Data Product available.', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdataproduct15', 'Spatial Extent', 'This property refers to a geographic region that is covered by the Data Product.', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdataproduct16', 'Temporal Extent', 'This property refers to a temporal period (i.e. startDate, endDate) that the Data Product covers.', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdataproduct17', 'Distribution', 'This property links the Data Product to an available Distribution.', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdataproduct18', 'Access Right', 'This property refers to information that indicates whether the Data Product is open data, has access restrictions or is not public.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdataproduct19', 'Is Part Of', 'This property refers to a related Data Product in which the described Data Product is physically or logically included.', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdataproduct20', 'Has Part', 'This property refers to a related Data Product that is part of the described Data Product.', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdataproduct21', 'Provenance', 'This property contains a statement about the lineage of a Data Product', NULL, NULL, '0', 'N', 'xsd:string');
/* edmdistribution */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdistribution1', 'UID', 'This property contains the main identifier for the Distribution.', NULL, NULL, '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdistribution2', 'Title', 'This property contains a name given to the Distribution. This property can be repeated for parallel language versions of the description.', NULL, NULL, '0', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdistribution3', 'Description', 'This property contains a free-text account of the Distribution. This property can be repeated for parallel language versions of the description.', NULL, NULL, '0', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdistribution4', 'Issued', 'This property contains the date of formal issuance (e.g., publication) of the Distribution.', NULL, NULL, '0', '1', 'xsd:date');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdistribution5', 'Modified', 'This property contains the most recent date on which the Distribution was changed or modified.', NULL, NULL, '0', '1', 'xsd:date');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdistribution6', 'Type', 'This property refers to the type of the Distribution.', NULL, NULL, '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdistribution7', 'Format', 'This property refers to the file format of the Distribution.', NULL, NULL, '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdistribution8', 'Licence', 'This property refers to the licence under which the Distribution is made available.', NULL, NULL, '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdistribution9', 'Download URL', 'This property contains a URL that is a direct link to a downloadable file in a given format.', NULL, NULL, '0', 'N', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdistribution10', 'Access URL', 'This property contains a URL that gives access to a Distribution of the Data Product. The resource at the access URL may contain information about how to get the Data Product.', NULL, NULL, '1', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmdistribution11', 'Access Service', 'This property refers to the WebService which supports selection of an extract, sub-set, or combination of data', NULL, NULL, '0', '1', NULL);
/* edmwebservice */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmwebservice1', 'UID', 'This property contains the main identifier for the Web Service.', NULL, NULL, '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmwebservice2', 'Description', 'This property contains a free-text description of the Web Service.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmwebservice3', 'Category', 'This property refers to a category of the Web Service. A Web Service may be associated with multiple categories.', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmwebservice4', 'Name', 'This property contains a name given to the Web Service.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmwebservice5', 'Entry Point', 'This property refers to the API definitions (e.g., WSDL, WADL)', NULL, NULL, '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmwebservice6', 'Contact Point', 'This property contains contact information (i.e. Role) that can be used for sending comments about the Web Service.', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmwebservice7', 'Provider', 'This property refers to an Organisation responsible for making the Web Service available.', NULL, NULL, '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmwebservice8', 'Date Published', 'This property contains the date of publication of the Web Service.', NULL, NULL, '0', '1', 'xsd:dateTime');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmwebservice9', 'Date Modified', 'This property contains the most recent date on which the Web Service was modified.', NULL, NULL, '0', '1', 'xsd:dateTime');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmwebservice10', 'Spatial Extent', 'This property refers to a geographical area covered by the Web Service.', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmwebservice11', 'Supported Operation', 'This property refers to a web service operation supported by the Web Service.', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmwebservice12', 'Documentation', 'This property refers to the API documentation.', NULL, NULL, '0', 'N', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmwebservice13', 'Keywords', 'This property contains the keywords used to describe the Web Service. Multiple entries in a keywords list are typically delimited by commas.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmwebservice14', 'License', 'This property refers to the licence under which the Web Service can be used or reused.', NULL, NULL, '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmwebservice15', 'Temporal Extent', 'This property refers to a temporal period (i.e. startDate, endDate) that the Web Service covers.', NULL, NULL, '0', 'N', NULL);
/*  edmoperation */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmoperation1', 'Method', 'The HTTP method', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmoperation2', 'Returns', 'This property is used to specify the output format of the Operation.The possible values are listed here:https://www.iana.org/assignments/media-types/media-types.xhtml', NULL, NULL, '0', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmoperation3', 'Template', 'The syntax of the template literal is specified by the [RFC6570] URI Template syntax.', NULL, NULL, '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmoperation4', 'Mapping', 'A variable-to-property mapping of the IRI template.', NULL, NULL, '0', 'N', NULL);
/* edmmapping */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmmapping1', 'Variable', 'This property contains the name of the parameter as required by web service specifications.', NULL, NULL, '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmmapping2', 'Label', 'This property contains a short string used to describe the meaning of the parameter.', NULL, NULL, '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmmapping3', 'Required', 'This property contains true if the property is required, falseotherwise.', NULL, NULL, '1', '1', 'xsd:boolean');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmmapping4', 'Range', 'This property contains the type of parameter', NULL, NULL, '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmmapping5', 'Default Value', 'This property contains the default value of the parameter.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmmapping6', 'Min Value', 'This property contains the minimum value of the parameter.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmmapping7', 'Max Value', 'This property contains the maximum value of the parameter.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmmapping8', 'Param Value', 'This property contains one of the possible values which should be used in the web service query. It could be repeated as many times as needed.', NULL, NULL, '0', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmmapping9', 'Property', 'This property contains the vocabulary term which indicates the semantic description of parameter.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmmapping10', 'Value Pattern', 'This property contains the regular expression for testing values according to the parameter', NULL, NULL, '0', '1', 'xsd:string');
/*  edmperson */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmperson1', 'Identifier', 'This property contains an identifier for the Person (e.g., ORCID, ScopusID, etc.).', NULL, NULL, '1', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmperson2', 'Family Name', 'This property contains the last name of the Person.', NULL, NULL, '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmperson3', 'Given Name', 'This property contains the first name of the Person.', NULL, NULL, '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmperson4', 'Address', 'This property contains the physical address of the Person.', NULL, NULL, '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmperson5', 'Email', 'This property contains the email address of the Person.', NULL, NULL, '0', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmperson6', 'Qualifications', 'This property contains the specific qualifications of the Person.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmperson7', 'Telephone', 'This property contains the telephone number of the Person.', NULL, NULL, '0', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmperson8', 'CV URL', 'This property refers to the URL of the Person curriculum vitae.', NULL, NULL, '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmperson9', 'Affiliation', 'This property refers to the organization to which the person is affiliated.', NULL, NULL, '0', 'N', NULL);
/*  edmorganization */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmorganization1', 'Identifier', 'This property contains an identifier for the Organization (e.g., PIC, ISNI, etc.).', NULL, NULL, '1', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmorganization2', 'Legal Name', 'This property contains the official name of the Organization.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmorganization3', 'Lei Code', 'This property contains the Organization identifier that uniquely identifies a legal entity as defined in ISO 17442.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmorganization4', 'Address', 'This property contains the physical address of the Organization.', NULL, NULL, '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmorganization5', 'Logo', 'This property contains the URL of the Organization logo.', NULL, NULL, '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmorganization6', 'URL', 'This property contains the URL of the Organization website.', NULL, NULL, '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmorganization7', 'Email', 'This property contains the email address of the Organization.', NULL, NULL, '0', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmorganization8', 'Telephone', 'This property contains the telephone number of the Organization.', NULL, NULL, '0', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmorganization9', 'Contact Point', 'This property refers to the Contact Point (i.e. Role) defined for the Organization', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmorganization10', 'Member Of', 'This property refers to an Organization to which this Organization belongs.', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmorganization11', 'Owns', 'This property refers to a Facility or Equipment of which it is the owner.', NULL, NULL, '0', 'N', NULL);
/* edmsoftwareapplication */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmsoftwareapplication1', 'Identifier', 'This property contains an identifier for the Software Application.', NULL, NULL, '1', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmsoftwareapplication2', 'Name', 'This property contains the name of the Software Application.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmsoftwareapplication3', 'Contact Point', 'This property refers to the Contact Point (i.e. Role) defined for the Software Application.', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmsoftwareapplication4', 'Description', 'This property contains the description of the Software Application.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmsoftwareapplication5', 'Download URL', 'If the Software can be downloaded this property contains the URL to download it.', NULL, NULL, '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmsoftwareapplication6', 'License URL', 'This property contains the URL of the license document that applies to the Software Application.', NULL, NULL, '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmsoftwareapplication7', 'Software Version', 'This property contains the version of the Software instance.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmsoftwareapplication8', 'Keywords', 'This property contains the keywords used to describe the Software Application. Multiple entries in a keywords list are typically delimited by commas.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmsoftwareapplication9', 'Category', 'This property refers to a category of the Software Application. A Software Application may be associated with multiple categories.', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmsoftwareapplication10', 'Requirements', 'Component dependency requirements for application. This includes runtime environments and shared libraries that are not included in the application distribution package, but required to run the application.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmsoftwareapplication11', 'Parameter', 'This property represents an input or output parameters of the Software Application', NULL, NULL, '0', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmsoftwareapplication12', 'Install URL', 'This property contains the URL at which the application may be installed.', NULL, NULL, '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmsoftwareapplication13', 'Main Entity of Page', 'This property refers to the web page URL which describes the Software Application.', NULL, NULL, '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmsoftwareapplication14', 'Relation', 'It represents the link to another Epos resource. e.g. Software, WebService, Operation linked to this software.', NULL, NULL, '0', 'N', NULL);
/* edmsoftwaresourcecode */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmsoftwaresourcecode1', 'Identifier', 'This property contains an identifier for the Software Source Code.', NULL, NULL, '1', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmsoftwaresourcecode2', 'Name', 'This property contains the name of the Software Source Code.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmsoftwaresourcecode3', 'Contact Point', 'This property refers to the Contact Point (i.e. Role) defined for the Software Source Code.', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmsoftwaresourcecode4', 'Description', 'This property contains the description of the Software Source Code.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmsoftwaresourcecode5', 'License URL', 'This property contains the URL of the license document that applies to the Software Source Code..', NULL, NULL, '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmsoftwaresourcecode6', 'Software Version', 'This property contains the version of the Software instance.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmsoftwaresourcecode7', 'Keywords', 'This property contains the keywords used to describe the Software Source Code. Multiple entries in a keywords list are typically delimited by commas.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmsoftwaresourcecode8', 'Category', 'This property refers to a category of the Software Source Code. A Software may be associated with multiple categories.', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmsoftwaresourcecode9', 'Code Repository', 'This property contains the link to the repository where the un-compiled, human readable code and related code is located (SVN, GitHub, CodePlex)', NULL, NULL, '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmsoftwaresourcecode10', 'Programming Language', 'This property contains the computer programming language used to develop the Software Source Code.', NULL, NULL, '0', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmsoftwaresourcecode11', 'Main Entity of Page', 'This property refers to the web page URL which describes the Software Source Code.', NULL, NULL, '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmsoftwaresourcecode12', 'Runtime Platform', 'This property refers to the runtime platform or script interpreter dependencies (Example - Java v1, Python2.3, .Net Framework 3.0).', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmsoftwaresourcecode13', 'Relation', 'This property refers the target Operating System / Product to which the code applies. If applies to several versions, just the product name can be used.', NULL, NULL, '0', 'N', NULL);
/* edmservice */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmservice1', 'Identifier', 'This property contains an identifier for the Service.', NULL, NULL, '1', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmservice2', 'Name', 'This property contains the name of the Service.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmservice3', 'Description', 'This property contains the description of the Service.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmservice4', 'Type', 'This property contains the type of service being offered.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmservice5', 'Contact Point', 'This property refers to the Contact Point (i.e. Role) defined for the Service.', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmservice6', 'Category', 'This property refers to a category of the Service. A Service may be associated with multiple categories.', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmservice7', 'Provider', 'This property refers to an Organisation or Person responsible for making the Service available.', NULL, NULL, '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmservice8', 'Spatial Extent', 'This property refers to a geographical area covered by the Service.', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmservice9', 'Temporal Extent', 'This property refers to a temporal period (i.e. startDate, endDate) that the Service covers.', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmservice10', 'Page URL', 'This property refers to a page about the Service.', NULL, NULL, '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmservice11', 'Keywords', 'This property contains the keywords used to describe the Service. Multiple entries in a keywords list are typically delimited by commas.', NULL, NULL, '0', '1', 'xsd:string');
/* edmfacility */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmfacility1', 'UID', 'This property contains the main identifier for the Facility.', NULL, NULL, '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmfacility2', 'Description', 'This property contains a free-text description of the Facility.', NULL, NULL, '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmfacility3', 'Title', 'This property contains a name given to the Facility.', NULL, NULL, '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmfacility4', 'Type', 'This property refers to the type of the Facility.', NULL, NULL, '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmfacility5', 'Contact Point', 'This property contains contact information (i.e. Role) that can be used for sending comments about the Facility', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmfacility6', 'Category', 'This property refers to a category of the Facility. A Facility may be associated with multiple categories.', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmfacility7', 'Is Part Of', 'This property refers to a Facility in which the described Facility is included.', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmfacility8', 'Spatial Extent', 'This property refers to a geographical location of the Facility.', NULL, NULL, '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmfacility9', 'Address', 'This property contains the physical address of the Facility.', NULL, NULL, '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmfacility10', 'Page URL', 'This property refers to a page or document about this Facility.', NULL, NULL, '0', 'N', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmfacility11', 'Relation', 'It represents the link to another Epos resource. e.g., Dataset, WebService, Service', NULL, NULL, '0', 'N', NULL);
/* edmequipment */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmequipment1', 'UID', 'This property contains the main identifier for the Equipment.', NULL, NULL, '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmequipment2', 'Description', 'This property contains a free-text description of the Equipment.', NULL, NULL, '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmequipment3', 'Name', 'This property contains a name given to the Equipment.', NULL, NULL, '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmequipment4', 'Manufacturer', 'This property refers to an Organisation responsible for manufacturing the Equipment.', NULL, NULL, '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmequipment5', 'Serial Number', 'This property contains the serial number for the Equipment.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmequipment6', 'Is Part Of', 'This property refers to an Equipment or a Facility in which the described Equipment is included.', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmequipment7', 'Contact Point', 'This property contains contact information (i.e. Role) that can be used for sending comments about the Equipment.', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmequipment8', 'Spatial Extent', 'This property refers to a geographical location of the Equipment.', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmequipment9', 'Temporal Extent', 'This property refers to a temporal period (i.e. startDate, endDate) that the Web Service covers.', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmequipment10', 'Page URL', 'This property refers to a page or document about the Equipment', NULL, NULL, '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmequipment11', 'Filter', 'This property describes the filter that the instrument uses to produce data.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmequipment12', 'Dynamic range', 'This property contains the full-scale measuring ability, in nT (unit and value).', NULL, NULL, '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmequipment13', 'Orientation', 'This property describes how the instrument is oriented.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmequipment14', 'Resolution', 'This property contains the resolution in nT.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmequipment15', 'Sample Period', 'This property contains the sample period in mS (unit and value)', NULL, NULL, '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmequipment16', 'Category', 'This property refers to a category of the Equipment. An Equipment may be associated with multiple categories.', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmequipment17', 'Relation', 'It represents the link to another Epos resource. e.g., Dataset, WebService, Service', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmequipment18', 'Type', 'This property refers to the type of the Equipment.', NULL, NULL, '0', '1', 'xsd:anyURI');
/* edmpublication */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmpublication1', 'Identifier', 'This property contains an identifier for the Publication.', NULL, NULL, '1', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmpublication2', 'Name', 'This property contains the name of the Publication.', NULL, NULL, '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmpublication3', 'Published', 'This property contains the date of first Publication.', NULL, NULL, '0', '1', 'xsd:dateTime');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmpublication4', 'Publisher', 'This property refers to an organization or person or agent which is the publisher of the Publication.', NULL, NULL, '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmpublication5', 'Abstract', 'This property contains the abstract of the Publication.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmpublication6', 'Author', 'This property refers to a Person which is the author of the Publication.', NULL, NULL, '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmpublication7', 'Contributor', 'This property refers to a Person which is a contributor of the Publication.', NULL, NULL, '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmpublication8', 'License URL', 'This property contains the URL of the license document that applies to the Publication.', NULL, NULL, '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmpublication9', 'Keywords', 'This property contains the keywords used to describe the Publication. Multiple entries in a keywords list are typically delimited by commas.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmpublication10', 'Issn', 'This property contains the International Standard Serial Number (ISSN) that identifies the Publication.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmpublication11', 'Pages', 'This property contains the number of pages of the Publication.', NULL, NULL, '0', '1', 'xsd:integer');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmpublication12', 'Volumes Number', 'This property contains the volume identifier of the Publication.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmpublication13', 'Category', 'This property refers to a category of the Publication. A Publication may be associated with multiple categories.', NULL, NULL, '0', 'N', NULL);
/* edmcategory */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmcategory1', 'Name', 'This property contains a preferred label of the category', NULL, NULL, '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmcategory2', 'Description', 'This property contains a description of the category', NULL, NULL, '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmcategory3', 'inScheme', 'Relates a resource (for example a concept) to a concept scheme in which it is included.', NULL, NULL, '1', '1', NULL);
/*edmcategoryscheme*/
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmcategoryscheme1', 'Title', 'This property contains a name of the category scheme.', NULL, NULL, '0', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmcategoryscheme2', 'Description', 'This property contains a description of the category scheme.', NULL, NULL, '0', 'N', 'xsd:string');
/* edmcontactpoint */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmcontactpoint1', 'UID', 'This property contains the main identifier for the Contact Point.', NULL, NULL, '1', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmcontactpoint2', 'Role', 'This property refers to the Contact Point role.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmcontactpoint3', 'Email', 'This property refers to the Contact Point Email.', NULL, NULL, '0', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmcontactpoint4', 'Telephone', 'This property refers to the Contact Point Telephone.', NULL, NULL, '0', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmcontactpoint5', 'Language', 'This property contains information about the language used by the Contact Point. Please use one of the language codes from the IETF BCP 47 standard', NULL, NULL, '0', 'N', 'xsd:string');
/* edmlocation */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmlocation1', 'Location', 'This property associates any resource with the corresponding geometry.', NULL, NULL, '0', '1', 'gsp:wktLiteral');
/* edmperiodtime */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmperiodtime2', 'End Date', 'This property contains the end of the period', NULL, NULL, '0', '1', 'xsd:dateTime');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmperiodtime1', 'Start Date', 'This property contains the start of the period', NULL, NULL, '0', '1', 'xsd:dateTime');
/* edmaddress */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmaddress1', 'Country', 'The country. For example, USA. You can also provide the two-letter ISO 3166-1 alpha-2 country code.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmaddress2', 'Postal Code', 'The postal code. For example, 94043.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmaddress3', 'Locality', 'The locality in which the street address is, and which is in the region. For example, Mountain View.', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmaddress4', 'Street', 'The street address. For example, 1600 Amphitheatre Pkwy.', NULL, NULL, '0', '1', 'xsd:string');
/* edmquantitativevalue */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmquantitativevalue1', 'Unit', 'The unit of measurement given using the UN/CEFACT Common Code (3 characters) or a URL', NULL, NULL, '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmquantitativevalue2', 'Value', 'The value of the quantitative value or property value node.The recommended type for values is Number.', NULL, NULL, '1', '1', 'xsd:double');
/* edmidentifier */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmidentifier1', 'Type', 'This property refers the identifier scheme referenced by its datatype (e.g., DDSS-ID, DOI, etc.).', NULL, NULL, '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('edmidentifier2', 'Identifier', 'This property contains a string that is an identifier in the context of the identifier scheme referenced by its datatype', NULL, NULL, '0', '1', 'xsd:string');
/*EPOS*/
/* eposagent */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposagent1', 'name', 'This property contains a name of the agent. This property can be repeated for different versions of the name (e.g. the name in different languages)', NULL, 'foaf:name', '1', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposagent2', 'type', 'This property refers to a type of the agent that makes the Catalogue or Dataset available', NULL, 'dct:type', '0', '1', NULL);
/* eposcatalogue */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcatalogue1', 'dataset', 'This property links the Catalogue with a Dataset that is part of the Catalogue.', NULL, 'dcat:dataset', '1', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcatalogue2', 'description', 'This property contains a free-text account of the Catalogue. This property can be repeated for parallel language versions of the description.', NULL, 'dct:description', '1', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcatalogue3', 'publisher', 'This property refers to an entity (organisation) responsible for making the Catalogue available. ', NULL, 'dct:publisher', '1', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcatalogue4', 'title', 'This property contains a name given to the Catalogue. This property can be repeated for parallel language versions of the name.', NULL, 'dct:title', '1', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcatalogue5', 'homepage', 'This property refers to a web page that acts as the main page for the Catalogue.', NULL, 'foaf:homepage', '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcatalogue6', 'language', 'This property refers to a language used in the textual metadata describing titles, descriptions, etc. of the Datasets in the Catalogue. This property can be repeated if the metadata is provided in multiple languages.', NULL, 'dct:language', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcatalogue7', 'license', 'This property refers to the licence under which the Catalogue can be used or reused.', NULL, 'dct:license', '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcatalogue8', 'issued', 'This property contains the date of formal issuance (e.g., publication) of the Catalogue.', NULL, 'dct:issued', '0', '1', 'xsd:dateTime');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcatalogue9', 'themeTaxonomy', 'This property refers to a knowledge organization system used to classify the Catalogue''s Datasets.', NULL, 'dcat:themeTaxonomy', '0', 'N', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcatalogue10', 'modified', 'This property contains the most recent date on which the Catalogue was modified.', NULL, 'dct:modified', '0', '1', 'xsd:dateTime');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcatalogue11', 'hasPart', 'This property refers to a related Catalogue that is part of the described Catalogue', NULL, 'dct:hasPart', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcatalogue12', 'isPartOf', 'This property refers to a related Catalogue in which the described Catalogue is physically or logically included.', NULL, 'dct:isPartOf', '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcatalogue13', 'record', 'This property refers to a Catalogue Record that is part of the Catalogue', NULL, 'dcat:record', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcatalogue14', 'rights', 'This property refers to a statement that specifies rights associated with the Catalogue.', NULL, 'dct:record', '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcatalogue15', 'spatial', 'This property refers to a geographical area covered by the Catalogue. ', NULL, 'dct:spatial', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcatalogue16', 'resource', 'This property links the Catalogue with a Resource.', NULL, 'epos:resource', '0', 'N', NULL);
/* *eposdataset* */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset1', 'description', 'This property contains a free-text account of the Dataset. This property can be repeated for parallel language versions of the description.', NULL, 'dct:description', '1', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset2', 'title', 'This property contains a name given to the Dataset. This property can be repeated for parallel language versions of the name.', NULL, 'dct:title', '1', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset3', 'contactPoint', 'This property contains contact information that can be used for sending comments about the Dataset. ', NULL, 'dcat:contactPoint', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset4', 'distribution', 'This property links the Dataset to an available Distribution.', NULL, 'dcat:distribution', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset5', 'keyword', 'This property contains a keyword or tag describing the Dataset.', NULL, 'dcat:keyword', '0', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset6', 'publisher', 'This property refers to an entity (organisation) responsible for making the Dataset available.', NULL, 'dct:publisher', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset7', 'theme', 'This property refers to a category of the Dataset. A Dataset may be associated with multiple themes.', NULL, 'dcat:theme', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset8', 'accessRights', 'This property refers to information that indicates whether the Dataset is open data, has access restrictions or is not public. A controlled vocabulary with three members (:public, :restricted, :non-public) will be created and maintained by the Publications Office of the EU. ', NULL, 'dct:accessRights', '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset9', 'conformsTo', 'This property refers to an implementing rule or other specification.', NULL, 'dct:conformsTo', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset10', 'page', 'This property refers to a page or document about this Dataset.', NULL, 'foaf:page', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset11', 'accrualPeriodicity', 'This property refers to the frequency at which the Dataset is updated.', NULL, 'dct:accrualPeriodicity', '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset12', 'hasVersion', 'This property refers to a related Dataset that is a version, edition, or adaptation of the described Dataset.', NULL, 'dct:hasVersion', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset13', 'identifier', 'This property contains the main identifier for the Dataset, e.g. the URI or other unique identifier in the context of the Catalogue.', NULL, 'dct:identifier', '1', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset14', 'isVersionOf', 'This property refers to a related Dataset of which the described Dataset is a version, edition, or adaptation.', NULL, 'dct:isVersionOf', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset15', 'landingPage', 'This property refers to a web page that provides access to the Dataset, its Distributions and/or additional information. It is intended to point to a landing page at the original data provider, not to a page on a site of a third party, such as an aggregator.', NULL, 'dcat:landingPage', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset16', 'language', 'This property refers to a language of the Dataset. This property can be repeated if there are multiple languages in the Dataset.', NULL, 'dct:language', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset17', 'identifier', 'This property refers to a secondary identifier of the Dataset, such as MAST/ADS, DataCite, DOI, EZID or W3ID.', NULL, 'adms:identifier', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset18', 'provenance', 'This property contains a statement about the lineage of a Dataset.', NULL, 'dct:provenance', '0', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset19', 'relation', 'This property refers to a related resource.', NULL, 'dct:relation', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset20', 'issued', 'This property contains the date of formal issuance (e.g., publication) of the Dataset.', NULL, 'dct:issued', '0', '1', 'xsd:dateTime');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset21', 'sample', 'This property refers to a sample distribution of the dataset', NULL, 'adms:sample', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset22', 'source', 'This property refers to a related Dataset from which the described Dataset is derived.', NULL, 'dct:source', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset23', 'spatial', 'This property refers to a geographic region that is covered by the Dataset. ', NULL, 'dct:spatial', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset24', 'temporal', 'This property refers to a temporal period that the Dataset covers.', NULL, 'dct:temporal', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset25', 'type', 'This property refers to the type of the Dataset. A controlled vocabulary for the values has not been established.', NULL, 'dct:type', '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset26', 'modified', 'This property contains the most recent date on which the Dataset was changed or modified.', NULL, 'dct:modified', '0', '1', 'xsd:dateTime');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset27', 'versionInfo', 'This property contains a version number or other version designation of the Dataset.', NULL, 'owl:versionInfo', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset28', 'versionNotes', 'This property contains a description of the differences between this version and a previous version of the Dataset. This property can be repeated for parallel language versions of the version notes.', NULL, 'adms:versionNotes', '0', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset29', 'isPartOf', 'This property refers to a related Dataset in which the described Dataset is physically or logically included.', NULL, 'dct:isPartOf', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset30', 'hasPart', 'This property refers to a related Dataset that is part of the described Dataset.', NULL, 'dct:hasPart', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdataset31', 'created', 'This property contains the date on which the Dataset was created.', NULL, 'dct:created', '0', '1', 'xsd:dateTime');
/* *eposperiodtime* */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposperiodtime1', 'startDate', 'This property contains the start of the period', NULL, 'schema:startDate', '0', '1', 'xsd:dateTime');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposperiodtime2', 'endDate', 'This property contains the end of the period', NULL, 'schema:endDate', '0', '1', 'xsd:dateTime');
/* *eposresource* */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposresource1', 'type', 'This property refers to the type of the Resource.', NULL, 'dct:type', '0', '1', NULL);
/* *eposcategory* */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcategory1', 'definition', 'This property contains a statement or formal explanation of the meaning of a concept.', NULL, 'skos:definition', '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcategory2', 'prefLabel', 'This property contains a preferred label of the category. This property can be repeated for parallel language versions of the label.', NULL, 'skos:prefLabel ', '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcategory3', 'inScheme', 'Relates a resource (for example a concept) to a concept scheme in which it is included.', NULL, 'skos:inScheme ', '1', '1', NULL);
/* *eposcategoryscheme* */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcategoryscheme1', 'title', 'This property contains a name of the category scheme. May be repeated for different versions of the name', NULL, 'dct:title', '1', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcategoryscheme2', 'description', 'This property contains a description of the category scheme.', NULL, 'dct:description', '1', 'N', 'xsd:string');
/* *eposdistribution* */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdistribution1', 'identifier', 'This property contains the main identifier for the Distribution.', NULL, 'dct:identifier', '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdistribution2', 'accessURL', 'This property contains a URL that gives access to a Distribution of the Dataset. The resource at the access URL may contain information about how to get the Dataset. ', NULL, 'dcat:accessURL', '1', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdistribution3', 'description', 'This property contains a free-text account of the Distribution. This property can be repeated for parallel language versions of the description.', NULL, 'dct:description', '0', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdistribution4', 'format', 'This property refers to the file format of the Distribution.', NULL, 'dct:format', '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdistribution5', 'license', 'This property refers to the licence under which the Distribution is made available.', NULL, 'dct:license', '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdistribution6', 'byteSize', 'This property contains the size of a Distribution in bytes.', NULL, 'dcat:byteSize', '0', '1', 'xsd:decimal');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdistribution7', 'checksum', 'This property provides a mechanism that can be used to verify that the contents of a distribution have not changed', NULL, 'spdx:checksum', '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdistribution8', 'page', 'This property refers to a page or document about this Distribution.', NULL, 'foaf:page', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdistribution9', 'downloadURL', 'This property contains a URL that is a direct link to a downloadable file in a given format. ', NULL, 'dcat:downloadURL', '0', 'N', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdistribution10', 'language', 'This property refers to a language used in the Distribution. This property can be repeated if the metadata is provided in multiple languages.', NULL, 'dct:language', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdistribution11', 'conformsTo', 'This property refers to an established schema to which the described Distribution conforms.', NULL, 'dct:conformsTo', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdistribution12', 'mediaType', 'This property refers to the media type of the Distribution as defined in the official register of media types managed by IANA.', NULL, 'dcat:mediaType', '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdistribution13', 'issued', 'This property contains the date of formal issuance (e.g., publication) of the Distribution.', NULL, 'dct:issued', '0', '1', 'xsd:date');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdistribution14', 'rights', 'This property refers to a statement that specifies rights associated with the Distribution.', NULL, 'dct:rights', '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdistribution15', 'status', 'This property refers to the maturity of the Distribution', NULL, 'adms:status', '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdistribution16', 'title', 'This property contains a name given to the Distribution. This property can be repeated for parallel language versions of the description.', NULL, 'dct:title', '0', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdistribution17', 'modified', 'This property contains the most recent date on which the Distribution was changed or modified.', NULL, 'dct:modified', '0', '1', 'xsd:date');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposdistribution18', 'type', 'This property refers to the type of the Distribution.', NULL, 'dct:type', '0', '1', 'xsd:anyURI');
/* *eposlicensedocument*/
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposlicensedocument1', 'type', 'This property refers to a type of licence, e.g. indicating public domain or royalties required.', NULL, 'dct:type', '0', '1', NULL);
/* *eposcataloguerecord*/
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcataloguerecord1', 'primaryTopic', 'This property links the Catalogue Record to the Dataset described in the record.', NULL, 'foaf:primaryTopic', '1', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcataloguerecord2', 'modified', 'This property contains the most recent date on which the Catalog Record was modified.', NULL, 'dct:modified', '1', '1', 'xsd:dateTime');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcataloguerecord3', 'conformsTo', 'This property refers to an Application Profile that the Dataset''s metadata conforms to', NULL, 'dct:conformsTo', '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcataloguerecord4', 'status', 'This property refers to¬†the type of the latest revision of a Dataset''s entry in the Catalogue. It MUST take one of the values :created, :updated or :deleted depending on whether this latest revision is a result of a creation, update or deletion.', NULL, 'adms:status', '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcataloguerecord5', 'issued', 'This property contains the date on which the description of the Dataset was included in the Catalogue.', NULL, 'dct:issued', '0', '1', 'xsd:dateTime');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcataloguerecord6', 'description', 'This property contains a free-text account of the record. This property can be repeated for parallel language versions of the description.', NULL, 'dct:description', '0', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcataloguerecord7', 'language', 'This property refers to a language used in the textual metadata describing titles, descriptions, etc. of the Dataset. This property can be repeated if the metadata is provided in multiple languages.', NULL, 'dct:language', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcataloguerecord8', 'source', 'This property refers to the original metadata that was used in creating metadata for the Dataset', NULL, 'dct:source', '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcataloguerecord9', 'title', 'This property contains a name given to the Catalogue Record. This property can be repeated for parallel language versions of the name.', NULL, 'dct:title', '0', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcataloguerecord10', 'identifier', 'This property contains the main identifier for the Catalog Record.', NULL, 'dct:identifier', '0', '1', 'xsd:string');
/* *eposchecksum*/
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposchecksum1', 'algorithm', 'This property identifies the algorithm used to produce the subject Checksum. Currently, SHA-1 is the only supported algorithm. It is anticipated that other algorithms will be supported at a later time.', NULL, 'spdx:algorithm', '1', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposchecksum2', 'checksumValue', 'This property provides a lower case hexadecimal encoded digest value produced using a specific algorithm.', NULL, 'spdx:checksumValue', '1', '1', 'xsd:hexBinary');
/* *eposidentifier*/
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposidentifier1', 'schemeAgency', 'This property refers the identifier scheme referenced by its datatype (e.g., DDSS-ID, DOI, etc.).', NULL, 'adms:schemeAgency', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposidentifier2', 'notation', 'This property contains a string that is an identifier in the context of the identifier scheme referenced by its datatype.', NULL, 'skos:notation', '0', '1', 'xsd:string');
/* eposlocation */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposlocation1', 'geometry', 'This property associates any resource with the corresponding geometry.', NULL, 'locn:geometry', '0', '1', 'gsp:wktLiteral');
/* *eposequipment*/
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposequipment1', 'description', 'This property contains a free-text description of the Equipment. ', NULL, 'schema:description', '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposequipment2', 'identifier', 'This property contains the main identifier for the Equipment.', NULL, 'schema:identifier', '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposequipment3', 'name', 'This property contains a name given to the Equipment.', NULL, 'schema:name', '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposequipment4', 'type', 'This property refers to the type of the Equipment.', NULL, 'dct:type', '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposequipment5', 'manufacturer', 'This property refers to an Organisation responsible for manufacturing the Equipment.', NULL, 'schema:manufacurer', '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposequipment6', 'serialNumber', 'This property contains the serial number for the Equipment.', NULL, 'schema:serialNumber', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposequipment7', 'isPartOf', 'This property refers to an Equipment or a Facility in which the described Equipment is included.', NULL, 'dct:isPartOf', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposequipment8', 'contactPoint', 'This property contains contact information that can be used for sending comments about the Equipment.', NULL, 'dcat:contactPoint', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposequipment9', 'spatial', 'This property refers to a geographical location of the Equipment. ', NULL, 'dct:spatial', '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposequipment10', 'filter', 'This property describes the filter that the instrument uses to produce data.', NULL, 'epos:filter', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposequipment11', 'dynamicRange', 'This property contains the full-scale measuring ability, in nT (unit and value).', NULL, 'epos:dynamicRange', '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposequipment12', 'orientation', 'This property describes how the instrument is oriented.', NULL, 'epos:orientation', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposequipment13', 'resolution', 'This property contains the resolution in nT.', NULL, 'epos:resolution', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposequipment14', 'samplePeriod', 'This property contains the sample period in mS (unit and value)', NULL, 'epos:samplePeriod', '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposequipment15', 'temporal', 'This property refers to a temporal period that the Web Service covers.', NULL, 'dct:temporal', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposequipment16', 'relation', 'This property refers to a related resource (e.g., Dataset, WebService, Service, etc.).', NULL, 'dct:relation', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposequipment17', 'theme', 'This property refers to a category of the Equipment. An Equipment may be associated with multiple themes.', NULL, 'dcat:theme', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposequipment18', 'page', 'This property refers to a page or document about the Equipment', NULL, 'foaf:page', '0', 'N', 'xsd:anyURI');
/* *eposfacility1*/
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposfacility1', 'description', 'This property contains a free-text description of the Facility.', NULL, 'dct:description', '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposfacility2', 'identifier', 'This property contains the main identifier for the Facility.', NULL, 'dct:identifier', '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposfacility3', 'title', 'This property contains a name given to the Facility.', NULL, 'dct:title', '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposfacility4', 'type', 'This property refers to the type of the Facility.', NULL, 'dct:type', '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposfacility5', 'theme', 'This property refers to a category of the Facility. A Facility may be associated with multiple themes.', NULL, 'dcat:theme', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposfacility6', 'isPartOf', 'This property refers to a Facility in which the described Facility is included.', NULL, 'dct:isPartOf', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposfacility7', 'hasAddress', 'This property contains the physical address of the Facility.', NULL, 'vcard:hasAddress', '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposfacility8', 'page', 'This property refers to a page or document about this Facility.', NULL, 'foaf:page', '0', 'N', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposfacility9', 'contactPoint', 'This property contains contact information that can be used for sending comments about the Facility.', NULL, 'dcat:contactPoint', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposfacility10', 'relation', 'This property refers to a related resource (e.g., Dataset, WebService, Service, etc).', NULL, 'dct:relation', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposfacility11', 'spatial', 'This property refers to a geographical location of the Facility. ', NULL, 'dct:spatial', '0', '1', NULL);
/* *epossoftwareapplication*/
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epossoftwareapplication1', 'identifier', 'This property contains the main identifier for the Software Application.', NULL, 'schema:identifier', '1', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epossoftwareapplication2', 'name', 'This property contains the name of the Software Application.', NULL, 'schema:name', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epossoftwareapplication3', 'contactPoint', 'This property refers to the Contact Point defined for the Software Application.', NULL, 'dcat:contactPoint', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epossoftwareapplication4', 'description', 'This property contains the description of the Software Application.', NULL, 'schema:description', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epossoftwareapplication5', 'downloadUrl', 'If the Software Application can be downloaded this property contains the URL to download it. ', NULL, 'schema:downloadUrl', '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epossoftwareapplication6', 'license', 'This property contains the URL of the license document that applies to the Software Application.', NULL, 'schema:license', '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epossoftwareapplication7', 'softwareVersion', 'This property contains the version of the Software Application instance.', NULL, 'schema:softwareVersion', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epossoftwareapplication8', 'mainEntityOfPage', 'This property refers to the web page URL which describes the Software Application.', NULL, 'schema:mainEntityOfPage', '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epossoftwareapplication9', 'keywords', 'This property contains the keywords used to describe the Software Application. Multiple entries in a keywords list are typically delimited by commas.', NULL, 'dcat:keywords', '0', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epossoftwareapplication10', 'theme', 'This property refers to a category of the Software Application. A Software may be associated with multiple themes.', NULL, 'dcat:theme', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epossoftwareapplication11', 'softwareRequirements', 'Component dependency requirements for application. This includes runtime environments and shared libraries that are not included in the application distribution package, but required to run the application.', NULL, 'schema:softwareRequirements', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epossoftwareapplication12', 'potentialAction', 'This property describes the object upon which the action is carried out and the result produced in the action.', NULL, 'schema:potentialAction', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epossoftwareapplication13', 'installUrl', 'This property contains the URL at which the application may be installed.', NULL, 'schema:installUrl', '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epossoftwareapplication14', 'relation', 'This property refers to the WebService Operation linked to the application.', NULL, 'dct:relation', '0', 'N', NULL);
/* *epossoftwaresourcecode*/
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epossoftwaresourcecode1', 'identifier', 'This property contains the main identifier for the Software Source Code.', NULL, 'schema:identifier', '1', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epossoftwaresourcecode2', 'name', 'This property contains the name of the Software Source Code.', NULL, 'schema:name', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epossoftwaresourcecode3', 'contactPoint', 'This property refers to the Contact Point defined for the Software Source Code.', NULL, 'dcat:contactPoint', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epossoftwaresourcecode4', 'description', 'This property contains the description of the Software Source Code.', NULL, 'schema:description', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epossoftwaresourcecode5', 'codeRepository', 'This property contains the link to the repository where the un-compiled, human readable code and related code is located (SVN, GitHub, CodePlex).', NULL, 'schema:codeRepository', '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epossoftwaresourcecode6', 'license', 'This property contains the URL of the license document that applies to the Software Source Code.', NULL, 'schema:license', '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epossoftwaresourcecode7', 'softwareVersion', 'This property contains the version of the Software Source Code instance.', NULL, 'schema:softwareVersion', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epossoftwaresourcecode8', 'programmingLanguage', 'This property contains the computer programming language used to develop the Software Source Code.', NULL, 'schema:programmingLanguage', '0', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epossoftwaresourcecode9', 'mainEntityOfPage', 'This property refers to the web page URL which describes the Software Source Code.', NULL, 'schema:mainEntityOfPage', '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epossoftwaresourcecode10', 'keywords', 'This property contains the keywords used to describe the Software Source Code. Multiple entries in a keywords list are typically delimited by commas.', NULL, 'schema:keywords', '0', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epossoftwaresourcecode11', 'theme', 'This property refers to a category of the Software Source Code. A Software may be associated with multiple themes.', NULL, 'dcat:theme', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epossoftwaresourcecode12', 'runtimePlatform', 'This property refers to the runtime platform or script interpreter dependencies (Example - Java v1, Python2.3, .Net Framework 3.0).', NULL, 'schema:runtimePlatform', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epossoftwaresourcecode13', 'targetProduct', 'This property refers the target Operating System / Product to which the code applies. If applies to several versions, just the product name can be used.', NULL, 'schema:targetProduct', '0', 'N', NULL);
/* *epospublication* */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epospublication1', 'identifier', 'This property contains the main identifier for the Publication.', NULL, 'schema:identifier', '1', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epospublication2', 'name', 'This property contains the name of the Publication.', NULL, 'schema:name', '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epospublication3', 'datePublished', 'This property contains the date of first Publication.', NULL, 'schema:datePublished', '0', '1', 'xsd:dateTime');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epospublication4', 'publisher', 'This property refers to an organization or person or agent which is the publisher of the Publication.', NULL, 'schema:publisher', '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epospublication5', 'abstract', 'This property contains the abstract of the Publication.', NULL, 'dct:abstract', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epospublication6', 'author', 'This property refers to a Person which is the author of the Publication.', NULL, 'schema:author', '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epospublication7', 'contributor', 'This property refers to a Person which is a contributor of the Publication.', NULL, 'schema:contributor', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epospublication8', 'license', 'This property contains the URL of the license document that applies to the Publication.', NULL, 'schema:license', '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epospublication9', 'keywords', 'This property contains the keywords used to describe the Publication. Multiple entries in a keywords list are typically delimited by commas.', NULL, 'schema:keywords', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epospublication10', 'issn', 'This property contains the International Standard Serial Number (ISSN) that identifies the Publication.', NULL, 'schema:issn', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epospublication11', 'numberOfPages', 'This property contains the number of pages of the Publication.', NULL, 'schema:numberOfPages', '0', '1', 'xsd:integer');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epospublication12', 'volumeNumber', 'This property contains the volume identifier of the Publication.', NULL, 'schema:volumeNumber', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epospublication13', 'theme', 'This property refers to a category of the Publication. A Publication may be associated with multiple themes.', NULL, 'dcat:theme', '1', 'N', NULL);
/* *eposwebservice* */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposwebservice1', 'identifier', 'This property contains the main identifier for the Web Service.', NULL, 'schema:identifier', '1', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposwebservice2', 'description', 'This property contains a free-text description of the Web Service.', NULL, 'schema:description', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposwebservice3', 'theme', 'This property refers to a category of the Web Service. A Web Service may be associated with multiple themes.', NULL, 'dcat:theme', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposwebservice4', 'name', 'This property contains a name given to the Web Service.', NULL, 'schema:name', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposwebservice5', 'entrypoint', 'This property refers to the API definitions (e.g., WSDL, WADL)', NULL, 'hydra:entrypoint', '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposwebservice6', 'contactPoint', 'This property contains contact information that can be used for sending comments about the Web Service.', NULL, 'dcat:contactPoint', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposwebservice7', 'provider', 'This property refers to an Organisation responsible for making the Web Service available.', NULL, 'schema:provider', '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposwebservice8', 'datePublished', 'This property contains the date of publication of the Web Service.', NULL, 'schema:datePublished', '0', '1', 'xsd:dateTime');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposwebservice9', 'dateModified', 'This property contains the most recent date on which the Web Service was modified.', NULL, 'schema:dateModified', '0', '1', 'xsd:dateTime');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposwebservice10', 'spatial', 'This property refers to a geographical area covered by the Web Service. ', NULL, 'dct:spatial', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposwebservice11', 'supportedOperation', 'This property refers to a web service operation supported by the Web Service.', NULL, 'hydra:supportedOperation', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposwebservice12', 'conformsTo', 'This property refers to the API documentation.', NULL, 'dct:conformsTo', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposwebservice13', 'keywords', 'This property contains the keywords used to describe the Web Service. Multiple entries in a keywords list are typically delimited by commas.', NULL, 'schema:keywords', '0', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposwebservice14', 'license', 'This property refers to the licence under which the Web Service can be used or reused.', NULL, 'dct:license', '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposwebservice15', 'temporal', 'This property refers to a temporal period that the Web Service covers.', NULL, 'dct:temporal', '0', 'N', NULL);
/* *eposservice* */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposservice1', 'identifier', 'This property contains the main identifier for the Service.', NULL, 'schema:identifier', '1', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposservice2', 'name', 'This property contains the name of the Service.', NULL, 'schema:name', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposservice3', 'contactPoint', 'This property refers to the Contact Point defined for the Service.', NULL, 'dcat:contactPoint', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposservice12', 'contactPoint', 'This property refers to the Contact Point defined for the Service.', NULL, 'schema:contactPoint', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposservice4', 'description', 'This property contains the description of the Service.', NULL, 'schema:description', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposservice5', 'serviceType', 'This property contains the type of service being offered.', NULL, 'schema:serviceType', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposservice6', 'provider', 'This property refers to an Organisation or Person responsible for making the Service available.', NULL, 'schema:provider', '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposservice7', 'keywords', 'This property contains the keywords used to describe the Service. Multiple entries in a keywords list are typically delimited by commas.', NULL, 'schema:keywords', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposservice8', 'theme', 'This property refers to a category of the Service. A Service may be associated with multiple themes.', NULL, 'dcat:theme', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposservice9', 'temporal', 'This property refers to a temporal period that the Service covers.', NULL, 'dct:temporal', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposservice10', 'spatial', 'This property refers to a geographical area covered by the Service. ', NULL, 'dct:spatial', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposservice11', 'url', 'This property refers to a page about the Service.', NULL, 'schema:url', '0', '1', 'xsd:anyURI');
/* *eposoperation* */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposoperation1', 'method', 'The HTTP method', NULL, 'hydra:method', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposoperation2', 'property', 'This property refers to the IriTemplate of the Web Service operation. This describes the endpoint and parameters mapping for the operation.', NULL, 'hydra:property', '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposoperation3', 'returns', 'This property is used to specify the output format of the Operation. The possible values are listed here:  https://www.iana.org/assignments/media-types/media-types.xhtml', NULL, 'hydra:returns', '0', 'N', 'xsd:string');
/* *eposiritemplate* */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposiritemplate1', 'template', 'The syntax of the template literal is specified by the [RFC6570] URI Template syntax.', NULL, 'hydra:template', '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposiritemplate2', 'mapping', 'A variable-to-property mapping of the IRI template.', NULL, 'hydra:mapping', '0', 'N', NULL);
/* *eposiritemplatemapping* */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposiritemplatemapping1', 'variable', 'This property contains the name of the parameter as required by web service specifications.', NULL, 'hydra:variable', '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposiritemplatemapping2', 'label', 'This property contains a short string used to describe the meaning of the parameter.', NULL, 'rdfs:label', '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposiritemplatemapping3', 'required', 'This property contains true if the property is required, false otherwise.', NULL, 'hydra:required', '1', '1', 'xsd:boolean');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposiritemplatemapping4', 'range', 'This property contains the type of parameter (e.g., xsd:string, xsd:Boolean, xsd:date, xsd:dateTime).', NULL, 'rdfs:range', '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposiritemplatemapping5', 'defaultValue', 'This property contains the default value of the parameter.', NULL, 'schema:defaultValue', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposiritemplatemapping6', 'minValue', 'This property contains the minimum value of the parameter.', NULL, 'schema:minValue', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposiritemplatemapping7', 'maxValue', 'This property contains the maximum value of the parameter.', NULL, 'schema:maxValue', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposiritemplatemapping8', 'paramValue', 'This property contains one of the possible values which should be used in the web service query. It could be repeated as many times as needed.', NULL, 'http:paramValue', '0', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposiritemplatemapping9', 'property', 'This property contains the vocabulary term which indicates the semantic description of parameter.', NULL, 'hydra:property', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposiritemplatemapping10', 'valuePattern', 'This property contains the regular expression for testing values according to the parameter''s specification.', NULL, 'schema:valuePattern', '0', '1', 'xsd:string');
/* *eposcontactpoint* */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcontactpoint1', 'contactType', 'This property contains information about the role of the Contact Point.', NULL, 'schema:contactType', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcontactpoint2', 'name', 'This property contains the name of the Contact Point.', NULL, 'schema:name', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcontactpoint3', 'email', 'This property contains the email address of the Contact Point.', NULL, 'schema:email', '0', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcontactpoint4', 'availableLanguage', 'This property contains information about the language used by the Contact Point. Please use one of the language codes from the IETF BCP 47 standard.', NULL, 'schema:availableLanguage', '0', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposcontactpoint5', 'telephone', 'This property contains the telephone number of the Contact Point.', NULL, 'schema:telephone', '0', 'N', 'xsd:string');
/* *eposorganization* */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposorganization1', 'identifier', 'This property contains the main identifier for the Organization (e.g., PIC, ISNI, etc.).', NULL, 'schema:identifier', '1', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposorganization2', 'legalName', 'This property contains the official name of the Organization.', NULL, 'schema:legalName', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposorganization3', 'leiCode', 'This property contains the Organization identifier that uniquely identifies a legal entity as defined in ISO 17442.', NULL, 'schema:leiCode', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposorganization4', 'address', 'This property contains the physical address of the Organization.', NULL, 'schema:address', '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposorganization5', 'logo', 'This property contains the URL of the Organization logo.', NULL, 'schema:logo', '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposorganization6', 'url', 'This property contains the URL of the Organization website.', NULL, 'schema:url', '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposorganization7', 'email', 'This property contains the email address of the Organization.', NULL, 'schema:email', '0', 'N', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposorganization8', 'telephone', 'This property contains the telephone number of the Organization.', NULL, 'schema:telephone', '0', 'N', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposorganization9', 'contactPoint', 'This property refers to the Contact Point defined for the Organization.', NULL, 'schema:contactPoint', '0', 'N', NULL); /* TODO controllare se non ci sta bisogno anche di questa: INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality) VALUES ('eposorganization13', 'contactPoint', 'This property refers to the Contact Point defined for the Organization.', NULL, 'schema:contactPoint', '0', 'N'); */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposorganization10', 'memberOf', 'This property refers to an Organization to which this Organization belongs.', NULL, 'schema:memberOf', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposorganization11', 'owns', 'This property refers to a Facility or Equipment of which it is the owner.', NULL, 'schema:owns', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposorganization12', 'associatedProject', 'This property refers to a Project in which the Organization is involved.', NULL, 'epos:associatedProject', '0', 'N', NULL);
/* *eposperson* */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposperson1', 'identifier', 'This property contains the main identifier for the Person (e.g., ORCID, ScopusID, etc.).', NULL, 'schema:identifier', '1', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposperson2', 'familyName', 'This property contains the last name of the Person.', NULL, 'schema:familyName', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposperson3', 'givenName', 'This property contains the first name of the Person.', NULL, 'schema:givenName', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposperson4', 'contactPoint', 'This property refers to the Contact Point role defined for the Person. ', NULL, 'schema:contactPoint', '0', 'N', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposperson5', 'address', 'This property contains the physical address of the Person.', NULL, 'schema:address', '0', '1', NULL);
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposperson6', 'email', 'This property contains the email address of the Person.', NULL, 'schema:email', '0', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposperson7', 'qualifications', 'This property contains the specific qualifications of the Person.', NULL, 'schema:qualifications', '0', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposperson8', 'telephone', 'This property contains the telephone number of the Person.', NULL, 'schema:telephone', '0', 'N', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposperson9', 'url', 'This property refers to the URL of the Person curriculum vitae.', NULL, 'schema:url', '0', '1', 'xsd:anyURI');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposperson10', 'affiliation', 'This property refers to the organization to which the person is affiliated.', NULL, 'schema:affiliation', '0', 'N', NULL);
/* *eposquantitativevalue* */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposquantitativevalue1', 'unitCode', 'The unit of measurement given using the UN/CEFACT Common Code (3 characters) or a URL. Other codes than the UN/CEFACT Common Code may be used with a prefix followed by a colon.', NULL, 'schema:unitCode', '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposquantitativevalue2', 'value', 'The value of the quantitative value or property value node.The recommended type for values is Number.', NULL, 'schema:value', '1', '1', 'xsd:double');
/* *eposaddress* */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposaddress1', 'country-name', 'The country name associated with the address of the object', NULL, 'vcard:country-name', '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposaddress2', 'postal-code', 'The postal code associated with the address of the object', NULL, 'vcard:postal-code', '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposaddress3', 'locality', 'The locality (e.g. city or town) associated with the address of the object', NULL, 'vcard:locality', '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposaddress4', 'street-address', 'The street address associated with the address of the object', NULL, 'vcard:street-address', '1', '1', 'xsd:string');
/* *epospostaladdress* */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epospostaladdress1', 'addressCountry', 'The country. For example, USA. You can also provide the two-letter ISO 3166-1 alpha-2 country code.', NULL, 'schema:addressCountry', '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epospostaladdress2', 'postalCode', 'The postal code. For example, 94043.', NULL, 'schema:postalCode', '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epospostaladdress3', 'addressLocality', 'The locality in which the street address is, and which is in the region. For example, Mountain View.', NULL, 'schema:addressLocality', '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epospostaladdress4', 'streetAddress', 'The street address. For example, 1600 Amphitheatre Pkwy.', NULL, 'schema:streetAddress', '1', '1', 'xsd:string');
/* *eposapidocumentation* */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposapidocumentation1', 'title', 'This property contains the title of the Api documentation.', NULL, 'hydra:title', '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposapidocumentation2', 'description', 'This property contains a description of the Api documentation.', NULL, 'hydra:description', '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('eposapidocumentation3', 'entrypoint', 'This property refers to the API entry point.', NULL, 'hydra:entrypoint', '1', '1', 'xsd:anyURI');
/* *epospropertyvalue* */
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epospropertyvalue1', 'propertyID', 'A commonly used identifier for the characteristic represented by the property, e.g. a manufacturer or a standard code for a property. propertyID can be (1) a prefixed string, mainly meant to be used with standards for product properties; (2) a site-specific, non-prefixed string (e.g. the primary key of the property or the vendor-specific id of the property), or (3) a URL indicating the type of the property, either pointing to an external vocabulary, or a Web resource that describes the property (e.g. a glossary entry). Standards bodies should promote a standard prefix for the identifiers of properties from their standards.', NULL, 'schema:propertyID', '1', '1', 'xsd:string');
INSERT INTO public.property (id, property_name, property_description, isdefinedby, vocabulary, mincardinality, maxcardinality, type) VALUES ('epospropertyvalue2', 'value', 'The value of the quantitative value or property value node.The recommended type for values is Number.', NULL, 'schema:value', '1', '1', 'xsd:string');


--
-- Data for Name: domain; Type: TABLE DATA; Schema: public; Owner: root
--
/*EDM*/
/* *edmdataproduct* */
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdataproduct1', 'edmdataproduct');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdataproduct2', 'edmdataproduct');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdataproduct3', 'edmdataproduct');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdataproduct4', 'edmdataproduct');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdataproduct5', 'edmdataproduct');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdataproduct6', 'edmdataproduct');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdataproduct7', 'edmdataproduct');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdataproduct8', 'edmdataproduct');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdataproduct9', 'edmdataproduct');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdataproduct10', 'edmdataproduct');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdataproduct11', 'edmdataproduct');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdataproduct12', 'edmdataproduct');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdataproduct13', 'edmdataproduct');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdataproduct14', 'edmdataproduct');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdataproduct15', 'edmdataproduct');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdataproduct16', 'edmdataproduct');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdataproduct17', 'edmdataproduct');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdataproduct18', 'edmdataproduct');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdataproduct19', 'edmdataproduct');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdataproduct20', 'edmdataproduct');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdataproduct21', 'edmdataproduct');
/* *edmdistribution* */
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdistribution1', 'edmdistribution');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdistribution2', 'edmdistribution');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdistribution3', 'edmdistribution');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdistribution4', 'edmdistribution');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdistribution5', 'edmdistribution');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdistribution6', 'edmdistribution');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdistribution7', 'edmdistribution');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdistribution8', 'edmdistribution');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdistribution9', 'edmdistribution');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdistribution10', 'edmdistribution');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmdistribution11', 'edmdistribution');
/* edmwebservice* */
INSERT INTO public.domain (property_id, class_id) VALUES ('edmwebservice1', 'edmwebservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmwebservice2', 'edmwebservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmwebservice3', 'edmwebservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmwebservice4', 'edmwebservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmwebservice5', 'edmwebservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmwebservice6', 'edmwebservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmwebservice7', 'edmwebservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmwebservice8', 'edmwebservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmwebservice9', 'edmwebservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmwebservice10', 'edmwebservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmwebservice11', 'edmwebservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmwebservice12', 'edmwebservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmwebservice13', 'edmwebservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmwebservice14', 'edmwebservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmwebservice15', 'edmwebservice');
/* *edmoperation* */
INSERT INTO public.domain (property_id, class_id) VALUES ('edmoperation1', 'edmoperation');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmoperation2', 'edmoperation');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmoperation3', 'edmoperation');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmoperation4', 'edmoperation');
/* *edmmapping* */
INSERT INTO public.domain (property_id, class_id) VALUES ('edmmapping1', 'edmmapping');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmmapping2', 'edmmapping');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmmapping3', 'edmmapping');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmmapping4', 'edmmapping');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmmapping5', 'edmmapping');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmmapping6', 'edmmapping');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmmapping7', 'edmmapping');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmmapping8', 'edmmapping');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmmapping9', 'edmmapping');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmmapping10', 'edmmapping');
/* *edmperson* */
INSERT INTO public.domain (property_id, class_id) VALUES ('edmperson1', 'edmperson');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmperson2', 'edmperson');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmperson3', 'edmperson');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmperson4', 'edmperson');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmperson5', 'edmperson');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmperson6', 'edmperson');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmperson7', 'edmperson');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmperson8', 'edmperson');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmperson9', 'edmperson');
/* *edmorganization* */
INSERT INTO public.domain (property_id, class_id) VALUES ('edmorganization1', 'edmorganization');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmorganization2', 'edmorganization');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmorganization3', 'edmorganization');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmorganization4', 'edmorganization');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmorganization5', 'edmorganization');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmorganization6', 'edmorganization');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmorganization7', 'edmorganization');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmorganization8', 'edmorganization');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmorganization9', 'edmorganization');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmorganization10', 'edmorganization');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmorganization11', 'edmorganization');
/* *edmsoftwareapplication* */
INSERT INTO public.domain (property_id, class_id) VALUES ('edmsoftwareapplication1', 'edmsoftwareapplication');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmsoftwareapplication2', 'edmsoftwareapplication');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmsoftwareapplication3', 'edmsoftwareapplication');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmsoftwareapplication4', 'edmsoftwareapplication');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmsoftwareapplication5', 'edmsoftwareapplication');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmsoftwareapplication6', 'edmsoftwareapplication');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmsoftwareapplication7', 'edmsoftwareapplication');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmsoftwareapplication8', 'edmsoftwareapplication');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmsoftwareapplication9', 'edmsoftwareapplication');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmsoftwareapplication10', 'edmsoftwareapplication');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmsoftwareapplication11', 'edmsoftwareapplication');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmsoftwareapplication12', 'edmsoftwareapplication');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmsoftwareapplication13', 'edmsoftwareapplication');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmsoftwareapplication14', 'edmsoftwareapplication');
/* *edmsoftwaresourcecode* */
INSERT INTO public.domain (property_id, class_id) VALUES ('edmsoftwaresourcecode1', 'edmsoftwaresourcecode');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmsoftwaresourcecode2', 'edmsoftwaresourcecode');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmsoftwaresourcecode3', 'edmsoftwaresourcecode');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmsoftwaresourcecode4', 'edmsoftwaresourcecode');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmsoftwaresourcecode5', 'edmsoftwaresourcecode');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmsoftwaresourcecode6', 'edmsoftwaresourcecode');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmsoftwaresourcecode7', 'edmsoftwaresourcecode');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmsoftwaresourcecode8', 'edmsoftwaresourcecode');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmsoftwaresourcecode9', 'edmsoftwaresourcecode');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmsoftwaresourcecode10', 'edmsoftwaresourcecode');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmsoftwaresourcecode11', 'edmsoftwaresourcecode');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmsoftwaresourcecode12', 'edmsoftwaresourcecode');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmsoftwaresourcecode13', 'edmsoftwaresourcecode');
/* *edmservice* */
INSERT INTO public.domain (property_id, class_id) VALUES ('edmservice1', 'edmservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmservice2', 'edmservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmservice3', 'edmservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmservice4', 'edmservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmservice5', 'edmservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmservice6', 'edmservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmservice7', 'edmservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmservice8', 'edmservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmservice9', 'edmservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmservice10', 'edmservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmservice11', 'edmservice');
/* *edmfacility* */
INSERT INTO public.domain (property_id, class_id) VALUES ('edmfacility1', 'edmfacility');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmfacility2', 'edmfacility');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmfacility3', 'edmfacility');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmfacility4', 'edmfacility');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmfacility5', 'edmfacility');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmfacility6', 'edmfacility');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmfacility7', 'edmfacility');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmfacility8', 'edmfacility');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmfacility9', 'edmfacility');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmfacility10', 'edmfacility');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmfacility11', 'edmfacility');
/* *edmequipment* */
INSERT INTO public.domain (property_id, class_id) VALUES ('edmequipment1', 'edmequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmequipment2', 'edmequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmequipment3', 'edmequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmequipment4', 'edmequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmequipment5', 'edmequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmequipment6', 'edmequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmequipment7', 'edmequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmequipment8', 'edmequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmequipment9', 'edmequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmequipment10', 'edmequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmequipment11', 'edmequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmequipment12', 'edmequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmequipment13', 'edmequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmequipment14', 'edmequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmequipment15', 'edmequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmequipment16', 'edmequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmequipment17', 'edmequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmequipment18', 'edmequipment');
/* *edmpublication* */
INSERT INTO public.domain (property_id, class_id) VALUES ('edmpublication1', 'edmpublication');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmpublication2', 'edmpublication');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmpublication3', 'edmpublication');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmpublication4', 'edmpublication');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmpublication5', 'edmpublication');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmpublication6', 'edmpublication');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmpublication7', 'edmpublication');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmpublication8', 'edmpublication');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmpublication9', 'edmpublication');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmpublication10', 'edmpublication');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmpublication11', 'edmpublication');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmpublication12', 'edmpublication');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmpublication13', 'edmpublication');
/* *edmcategory* */
INSERT INTO public.domain (property_id, class_id) VALUES ('edmcategory1', 'edmcategory');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmcategory2', 'edmcategory');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmcategory3', 'edmcategory');
/* *edmcategoryscheme* */
INSERT INTO public.domain (property_id, class_id) VALUES ('edmcategoryscheme1', 'edmcategoryscheme');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmcategoryscheme2', 'edmcategoryscheme');
/* *edmcontactpoint* */
INSERT INTO public.domain (property_id, class_id) VALUES ('edmcontactpoint1', 'edmcontactpoint');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmcontactpoint2', 'edmcontactpoint');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmcontactpoint3', 'edmcontactpoint');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmcontactpoint4', 'edmcontactpoint');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmcontactpoint5', 'edmcontactpoint');
/* *edmlocation* */
INSERT INTO public.domain (property_id, class_id) VALUES ('edmlocation1', 'edmlocation');
/* *edmperiodtime* */
INSERT INTO public.domain (property_id, class_id) VALUES ('edmperiodtime1', 'edmperiodtime');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmperiodtime2', 'edmperiodtime');
/* *edmaddress* */
INSERT INTO public.domain (property_id, class_id) VALUES ('edmaddress1', 'edmaddress');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmaddress2', 'edmaddress');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmaddress3', 'edmaddress');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmaddress4', 'edmaddress');
/* *edmquantitativevalue* */
INSERT INTO public.domain (property_id, class_id) VALUES ('edmquantitativevalue1', 'edmquantitativevalue');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmquantitativevalue2', 'edmquantitativevalue');
/* *edmidentifier* */
INSERT INTO public.domain (property_id, class_id) VALUES ('edmidentifier1', 'edmidentifier');
INSERT INTO public.domain (property_id, class_id) VALUES ('edmidentifier2', 'edmidentifier');

/* EPOS DCAT */
/* *eposagent* */
INSERT INTO public.domain (property_id, class_id) VALUES ('eposagent1', 'eposagent');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposagent2', 'eposagent');
/* *eposcatalogue* */
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcatalogue1', 'eposcatalogue');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcatalogue2', 'eposcatalogue');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcatalogue3', 'eposcatalogue');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcatalogue4', 'eposcatalogue');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcatalogue5', 'eposcatalogue');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcatalogue6', 'eposcatalogue');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcatalogue7', 'eposcatalogue');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcatalogue8', 'eposcatalogue');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcatalogue9', 'eposcatalogue');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcatalogue10', 'eposcatalogue');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcatalogue11', 'eposcatalogue');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcatalogue12', 'eposcatalogue');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcatalogue13', 'eposcatalogue');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcatalogue14', 'eposcatalogue');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcatalogue15', 'eposcatalogue');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcatalogue16', 'eposcatalogue');
/* *eposdataset* */
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset1', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset2', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset3', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset4', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset5', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset6', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset7', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset8', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset9', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset10', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset11', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset12', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset13', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset14', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset15', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset16', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset17', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset18', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset19', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset20', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset21', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset22', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset23', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset24', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset25', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset26', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset27', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset28', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset29', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset30', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdataset31', 'eposdataset');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposresource1', 'eposresource');
/* *eposcategory* */
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcategory1', 'eposcategory');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcategory2', 'eposcategory');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcategory3', 'eposcategory');
/* *eposcategoryscheme* */
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcategoryscheme1', 'eposcategoryscheme');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcategoryscheme2', 'eposcategoryscheme');
/* *eposdistribution* */
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdistribution1', 'eposdistribution');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdistribution2', 'eposdistribution');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdistribution3', 'eposdistribution');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdistribution4', 'eposdistribution');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdistribution5', 'eposdistribution');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdistribution6', 'eposdistribution');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdistribution7', 'eposdistribution');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdistribution8', 'eposdistribution');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdistribution9', 'eposdistribution');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdistribution10', 'eposdistribution');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdistribution11', 'eposdistribution');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdistribution12', 'eposdistribution');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdistribution13', 'eposdistribution');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdistribution14', 'eposdistribution');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdistribution15', 'eposdistribution');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdistribution16', 'eposdistribution');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdistribution17', 'eposdistribution');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposdistribution18', 'eposdistribution');
/* *eposlicensedocument* */
INSERT INTO public.domain (property_id, class_id) VALUES ('eposlicensedocument1', 'eposlicensedocument');
/* *eposcataloguerecord* */
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcataloguerecord1', 'eposcataloguerecord');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcataloguerecord2', 'eposcataloguerecord');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcataloguerecord3', 'eposcataloguerecord');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcataloguerecord4', 'eposcataloguerecord');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcataloguerecord5', 'eposcataloguerecord');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcataloguerecord6', 'eposcataloguerecord');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcataloguerecord7', 'eposcataloguerecord');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcataloguerecord8', 'eposcataloguerecord');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcataloguerecord9', 'eposcataloguerecord');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcataloguerecord10', 'eposcataloguerecord');
/* *eposchecksum* */
INSERT INTO public.domain (property_id, class_id) VALUES ('eposchecksum1', 'eposchecksum');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposchecksum2', 'eposchecksum');
/* *eposidentifier* */
INSERT INTO public.domain (property_id, class_id) VALUES ('eposidentifier1', 'eposidentifier');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposidentifier2', 'eposidentifier');
/* *eposlocation* */
INSERT INTO public.domain (property_id, class_id) VALUES ('eposlocation1', 'eposlocation');
/* *eposperiodtime* */
INSERT INTO public.domain (property_id, class_id) VALUES ('eposperiodtime1', 'eposperiodtime');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposperiodtime2', 'eposperiodtime');
/* *eposequipment* */
INSERT INTO public.domain (property_id, class_id) VALUES ('eposequipment1', 'eposequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposequipment2', 'eposequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposequipment3', 'eposequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposequipment4', 'eposequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposequipment5', 'eposequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposequipment6', 'eposequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposequipment7', 'eposequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposequipment8', 'eposequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposequipment9', 'eposequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposequipment10', 'eposequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposequipment11', 'eposequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposequipment12', 'eposequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposequipment13', 'eposequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposequipment14', 'eposequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposequipment15', 'eposequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposequipment16', 'eposequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposequipment17', 'eposequipment');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposequipment18', 'eposequipment');
/* *eposfacility* */
INSERT INTO public.domain (property_id, class_id) VALUES ('eposfacility1', 'eposfacility');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposfacility2', 'eposfacility');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposfacility3', 'eposfacility');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposfacility4', 'eposfacility');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposfacility5', 'eposfacility');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposfacility6', 'eposfacility');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposfacility7', 'eposfacility');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposfacility8', 'eposfacility');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposfacility9', 'eposfacility');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposfacility10', 'eposfacility');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposfacility11', 'eposfacility');
/* *epossoftwareapplication* */
INSERT INTO public.domain (property_id, class_id) VALUES ('epossoftwareapplication1', 'epossoftwareapplication');
INSERT INTO public.domain (property_id, class_id) VALUES ('epossoftwareapplication2', 'epossoftwareapplication');
INSERT INTO public.domain (property_id, class_id) VALUES ('epossoftwareapplication3', 'epossoftwareapplication');
INSERT INTO public.domain (property_id, class_id) VALUES ('epossoftwareapplication4', 'epossoftwareapplication');
INSERT INTO public.domain (property_id, class_id) VALUES ('epossoftwareapplication5', 'epossoftwareapplication');
INSERT INTO public.domain (property_id, class_id) VALUES ('epossoftwareapplication6', 'epossoftwareapplication');
INSERT INTO public.domain (property_id, class_id) VALUES ('epossoftwareapplication7', 'epossoftwareapplication');
INSERT INTO public.domain (property_id, class_id) VALUES ('epossoftwareapplication8', 'epossoftwareapplication');
INSERT INTO public.domain (property_id, class_id) VALUES ('epossoftwareapplication9', 'epossoftwareapplication');
INSERT INTO public.domain (property_id, class_id) VALUES ('epossoftwareapplication10', 'epossoftwareapplication');
INSERT INTO public.domain (property_id, class_id) VALUES ('epossoftwareapplication11', 'epossoftwareapplication');
INSERT INTO public.domain (property_id, class_id) VALUES ('epossoftwareapplication12', 'epossoftwareapplication');
INSERT INTO public.domain (property_id, class_id) VALUES ('epossoftwareapplication13', 'epossoftwareapplication');
INSERT INTO public.domain (property_id, class_id) VALUES ('epossoftwareapplication14', 'epossoftwareapplication');
/* *epossoftwaresourcecode* */
INSERT INTO public.domain (property_id, class_id) VALUES ('epossoftwaresourcecode1', 'epossoftwaresourcecode');
INSERT INTO public.domain (property_id, class_id) VALUES ('epossoftwaresourcecode2', 'epossoftwaresourcecode');
INSERT INTO public.domain (property_id, class_id) VALUES ('epossoftwaresourcecode3', 'epossoftwaresourcecode');
INSERT INTO public.domain (property_id, class_id) VALUES ('epossoftwaresourcecode4', 'epossoftwaresourcecode');
INSERT INTO public.domain (property_id, class_id) VALUES ('epossoftwaresourcecode5', 'epossoftwaresourcecode');
INSERT INTO public.domain (property_id, class_id) VALUES ('epossoftwaresourcecode6', 'epossoftwaresourcecode');
INSERT INTO public.domain (property_id, class_id) VALUES ('epossoftwaresourcecode7', 'epossoftwaresourcecode');
INSERT INTO public.domain (property_id, class_id) VALUES ('epossoftwaresourcecode8', 'epossoftwaresourcecode');
INSERT INTO public.domain (property_id, class_id) VALUES ('epossoftwaresourcecode9', 'epossoftwaresourcecode');
INSERT INTO public.domain (property_id, class_id) VALUES ('epossoftwaresourcecode10', 'epossoftwaresourcecode');
INSERT INTO public.domain (property_id, class_id) VALUES ('epossoftwaresourcecode11', 'epossoftwaresourcecode');
INSERT INTO public.domain (property_id, class_id) VALUES ('epossoftwaresourcecode12', 'epossoftwaresourcecode');
INSERT INTO public.domain (property_id, class_id) VALUES ('epossoftwaresourcecode13', 'epossoftwaresourcecode');
/* *epospublication* */
INSERT INTO public.domain (property_id, class_id) VALUES ('epospublication1', 'epospublication');
INSERT INTO public.domain (property_id, class_id) VALUES ('epospublication2', 'epospublication');
INSERT INTO public.domain (property_id, class_id) VALUES ('epospublication3', 'epospublication');
INSERT INTO public.domain (property_id, class_id) VALUES ('epospublication4', 'epospublication');
INSERT INTO public.domain (property_id, class_id) VALUES ('epospublication5', 'epospublication');
INSERT INTO public.domain (property_id, class_id) VALUES ('epospublication6', 'epospublication');
INSERT INTO public.domain (property_id, class_id) VALUES ('epospublication7', 'epospublication');
INSERT INTO public.domain (property_id, class_id) VALUES ('epospublication8', 'epospublication');
INSERT INTO public.domain (property_id, class_id) VALUES ('epospublication9', 'epospublication');
INSERT INTO public.domain (property_id, class_id) VALUES ('epospublication10', 'epospublication');
INSERT INTO public.domain (property_id, class_id) VALUES ('epospublication11', 'epospublication');
INSERT INTO public.domain (property_id, class_id) VALUES ('epospublication12', 'epospublication');
INSERT INTO public.domain (property_id, class_id) VALUES ('epospublication13', 'epospublication');
/* *eposwebservice* */
INSERT INTO public.domain (property_id, class_id) VALUES ('eposwebservice1', 'eposwebservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposwebservice2', 'eposwebservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposwebservice3', 'eposwebservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposwebservice4', 'eposwebservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposwebservice5', 'eposwebservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposwebservice6', 'eposwebservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposwebservice7', 'eposwebservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposwebservice8', 'eposwebservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposwebservice9', 'eposwebservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposwebservice10', 'eposwebservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposwebservice11', 'eposwebservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposwebservice12', 'eposwebservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposwebservice13', 'eposwebservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposwebservice14', 'eposwebservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposwebservice15', 'eposwebservice');
/* *eposservice* */
INSERT INTO public.domain (property_id, class_id) VALUES ('eposservice1', 'eposservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposservice2', 'eposservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposservice3', 'eposservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposservice12', 'eposservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposservice4', 'eposservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposservice5', 'eposservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposservice6', 'eposservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposservice7', 'eposservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposservice8', 'eposservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposservice9', 'eposservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposservice10', 'eposservice');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposservice11', 'eposservice');
/* *eposoperation* */
INSERT INTO public.domain (property_id, class_id) VALUES ('eposoperation1', 'eposoperation');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposoperation2', 'eposoperation');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposoperation3', 'eposoperation');
/* *eposiritemplate* */
INSERT INTO public.domain (property_id, class_id) VALUES ('eposiritemplate1', 'eposiritemplate');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposiritemplate2', 'eposiritemplate');
/* *eposiritemplatemapping* */
INSERT INTO public.domain (property_id, class_id) VALUES ('eposiritemplatemapping1', 'eposiritemplatemapping');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposiritemplatemapping2', 'eposiritemplatemapping');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposiritemplatemapping3', 'eposiritemplatemapping');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposiritemplatemapping4', 'eposiritemplatemapping');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposiritemplatemapping5', 'eposiritemplatemapping');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposiritemplatemapping6', 'eposiritemplatemapping');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposiritemplatemapping7', 'eposiritemplatemapping');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposiritemplatemapping8', 'eposiritemplatemapping');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposiritemplatemapping9', 'eposiritemplatemapping');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposiritemplatemapping10', 'eposiritemplatemapping');
/* *eposcontactpoint* */
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcontactpoint1', 'eposcontactpoint');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcontactpoint2', 'eposcontactpoint');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcontactpoint3', 'eposcontactpoint');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcontactpoint4', 'eposcontactpoint');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposcontactpoint5', 'eposcontactpoint');
/* *eposorganization* */
INSERT INTO public.domain (property_id, class_id) VALUES ('eposorganization1', 'eposorganization');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposorganization2', 'eposorganization');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposorganization3', 'eposorganization');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposorganization4', 'eposorganization');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposorganization5', 'eposorganization');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposorganization6', 'eposorganization');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposorganization7', 'eposorganization');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposorganization8', 'eposorganization');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposorganization9', 'eposorganization'); /* todo vedere se non aggiungere INSERT INTO public.domain (property_id, class_id) VALUES ('eposorganization13', 'eposorganization'); */
INSERT INTO public.domain (property_id, class_id) VALUES ('eposorganization10', 'eposorganization');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposorganization11', 'eposorganization');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposorganization12', 'eposorganization');
/* *eposperson* */
INSERT INTO public.domain (property_id, class_id) VALUES ('eposperson1', 'eposperson');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposperson2', 'eposperson');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposperson3', 'eposperson');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposperson4', 'eposperson');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposperson5', 'eposperson');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposperson6', 'eposperson');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposperson7', 'eposperson');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposperson8', 'eposperson');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposperson9', 'eposperson');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposperson10', 'eposperson');
/* *eposquantitativevalue* */
INSERT INTO public.domain (property_id, class_id) VALUES ('eposquantitativevalue1', 'eposquantitativevalue');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposquantitativevalue2', 'eposquantitativevalue');
/* *eposaddress* */
INSERT INTO public.domain (property_id, class_id) VALUES ('eposaddress1', 'eposaddress');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposaddress2', 'eposaddress');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposaddress3', 'eposaddress');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposaddress4', 'eposaddress');
/* *epospostaladdress* */
INSERT INTO public.domain (property_id, class_id) VALUES ('epospostaladdress1', 'epospostaladdress');
INSERT INTO public.domain (property_id, class_id) VALUES ('epospostaladdress2', 'epospostaladdress');
INSERT INTO public.domain (property_id, class_id) VALUES ('epospostaladdress3', 'epospostaladdress');
INSERT INTO public.domain (property_id, class_id) VALUES ('epospostaladdress4', 'epospostaladdress');
/* *epospropertyvalue* */
INSERT INTO public.domain (property_id, class_id) VALUES ('epospropertyvalue1', 'epospropertyvalue');
INSERT INTO public.domain (property_id, class_id) VALUES ('epospropertyvalue2', 'epospropertyvalue');
/* *eposapidocumentation* */
INSERT INTO public.domain (property_id, class_id) VALUES ('eposapidocumentation1', 'eposapidocumentation');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposapidocumentation2', 'eposapidocumentation');
INSERT INTO public.domain (property_id, class_id) VALUES ('eposapidocumentation3', 'eposapidocumentation');

--
-- TOC entry 3364 (class 0 OID 26138)
-- Dependencies: 214
-- Data for Name: range; Type: TABLE DATA; Schema: public; Owner: root
--
/* EDM */
/* *edmdataproduct* */
INSERT INTO public.range (property_id, range_id) VALUES ('edmdataproduct1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmdataproduct2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmdataproduct3', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmdataproduct4', 'edmidentifier');
INSERT INTO public.range (property_id, range_id) VALUES ('edmdataproduct5', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmdataproduct6', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmdataproduct7', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmdataproduct8', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmdataproduct9', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmdataproduct10', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmdataproduct11', 'edmcategory');
INSERT INTO public.range (property_id, range_id) VALUES ('edmdataproduct12', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmdataproduct13', 'edmcontactpoint');
INSERT INTO public.range (property_id, range_id) VALUES ('edmdataproduct14', 'edmorganization');
INSERT INTO public.range (property_id, range_id) VALUES ('edmdataproduct15', 'edmlocation');
INSERT INTO public.range (property_id, range_id) VALUES ('edmdataproduct16', 'edmperiodtime');
INSERT INTO public.range (property_id, range_id) VALUES ('edmdataproduct17', 'edmdistribution');
INSERT INTO public.range (property_id, range_id) VALUES ('edmdataproduct18', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmdataproduct19', 'edmdataproduct');
INSERT INTO public.range (property_id, range_id) VALUES ('edmdataproduct20', 'edmdataproduct');
INSERT INTO public.range (property_id, range_id) VALUES ('edmdataproduct21', 'literal');
/* *edmdistribution* */
INSERT INTO public.range (property_id, range_id) VALUES ('edmdistribution1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmdistribution2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmdistribution3', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmdistribution4', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmdistribution5', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmdistribution6', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmdistribution7', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmdistribution8', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmdistribution9', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmdistribution10', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmdistribution11', 'edmwebservice');
/* *edmwebservice* */
INSERT INTO public.range (property_id, range_id) VALUES ('edmwebservice1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmwebservice2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmwebservice3', 'edmcategory');
INSERT INTO public.range (property_id, range_id) VALUES ('edmwebservice4', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmwebservice5', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmwebservice6', 'edmcontactpoint');
INSERT INTO public.range (property_id, range_id) VALUES ('edmwebservice7', 'edmorganization');
INSERT INTO public.range (property_id, range_id) VALUES ('edmwebservice8', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmwebservice9', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmwebservice10', 'edmlocation');
INSERT INTO public.range (property_id, range_id) VALUES ('edmwebservice11', 'edmoperation');
INSERT INTO public.range (property_id, range_id) VALUES ('edmwebservice12', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmwebservice13', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmwebservice14', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmwebservice15', 'edmperiodtime');
/* *edmoperation* */
INSERT INTO public.range (property_id, range_id) VALUES ('edmoperation1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmoperation2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmoperation3', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmoperation4', 'edmmapping');
/* *edmmapping* */
INSERT INTO public.range (property_id, range_id) VALUES ('edmmapping1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmmapping2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmmapping3', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmmapping4', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmmapping5', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmmapping6', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmmapping7', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmmapping8', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmmapping9', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmmapping10', 'literal');
/* *edmperson* */
INSERT INTO public.range (property_id, range_id) VALUES ('edmperson1', 'edmidentifier');
INSERT INTO public.range (property_id, range_id) VALUES ('edmperson2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmperson3', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmperson4', 'edmaddress');
INSERT INTO public.range (property_id, range_id) VALUES ('edmperson5', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmperson6', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmperson7', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmperson8', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmperson9', 'edmorganization');
/* *edmorganization* */
INSERT INTO public.range (property_id, range_id) VALUES ('edmorganization1', 'edmidentifier');
INSERT INTO public.range (property_id, range_id) VALUES ('edmorganization2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmorganization3', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmorganization4', 'edmaddress');
INSERT INTO public.range (property_id, range_id) VALUES ('edmorganization5', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmorganization6', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmorganization7', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmorganization8', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmorganization9', 'edmcontactpoint');
INSERT INTO public.range (property_id, range_id) VALUES ('edmorganization10', 'edmorganization');
INSERT INTO public.range (property_id, range_id) VALUES ('edmorganization11', 'edmfacility');
INSERT INTO public.range (property_id, range_id) VALUES ('edmorganization11', 'edmequipment');
/* *edmsoftwareapplication* */
INSERT INTO public.range (property_id, range_id) VALUES ('edmsoftwareapplication1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmsoftwareapplication2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmsoftwareapplication3', 'edmcontactpoint');
INSERT INTO public.range (property_id, range_id) VALUES ('edmsoftwareapplication4', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmsoftwareapplication5', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmsoftwareapplication6', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmsoftwareapplication7', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmsoftwareapplication8', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmsoftwareapplication9', 'edmcategory');
INSERT INTO public.range (property_id, range_id) VALUES ('edmsoftwareapplication10', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmsoftwareapplication11', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmsoftwareapplication12', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmsoftwareapplication13', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmsoftwareapplication14', 'edmoperation');
/* *edmsoftwaresourcecode* */
INSERT INTO public.range (property_id, range_id) VALUES ('edmsoftwaresourcecode1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmsoftwaresourcecode2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmsoftwaresourcecode3', 'edmcontactpoint');
INSERT INTO public.range (property_id, range_id) VALUES ('edmsoftwaresourcecode4', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmsoftwaresourcecode5', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmsoftwaresourcecode6', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmsoftwaresourcecode7', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmsoftwaresourcecode8', 'edmcategory');
INSERT INTO public.range (property_id, range_id) VALUES ('edmsoftwaresourcecode9', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmsoftwaresourcecode10', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmsoftwaresourcecode11', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmsoftwaresourcecode12', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmsoftwaresourcecode13', 'edmsoftwareapplication');
/* *edmservice* */
INSERT INTO public.range (property_id, range_id) VALUES ('edmservice1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmservice2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmservice3', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmservice4', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmservice5', 'edmcontactpoint');
INSERT INTO public.range (property_id, range_id) VALUES ('edmservice6', 'edmcategory');
INSERT INTO public.range (property_id, range_id) VALUES ('edmservice7', 'edmorganization');
INSERT INTO public.range (property_id, range_id) VALUES ('edmservice7', 'edmperson');
INSERT INTO public.range (property_id, range_id) VALUES ('edmservice8', 'edmlocation');
INSERT INTO public.range (property_id, range_id) VALUES ('edmservice9', 'edmperiodtime');
INSERT INTO public.range (property_id, range_id) VALUES ('edmservice10', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmservice11', 'literal');
/* *edmequipment* */
INSERT INTO public.range (property_id, range_id) VALUES ('edmequipment1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmequipment2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmequipment3', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmequipment4', 'edmorganization');
INSERT INTO public.range (property_id, range_id) VALUES ('edmequipment5', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmequipment6', 'edmfacility');
INSERT INTO public.range (property_id, range_id) VALUES ('edmequipment6', 'edmequipment');
INSERT INTO public.range (property_id, range_id) VALUES ('edmequipment7', 'edmcontactpoint');
INSERT INTO public.range (property_id, range_id) VALUES ('edmequipment8', 'edmlocation');
INSERT INTO public.range (property_id, range_id) VALUES ('edmequipment9', 'edmperiodtime');
INSERT INTO public.range (property_id, range_id) VALUES ('edmequipment10', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmequipment11', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmequipment12', 'edmquantitativevalue');
INSERT INTO public.range (property_id, range_id) VALUES ('edmequipment13', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmequipment14', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmequipment15', 'edmquantitativevalue');
INSERT INTO public.range (property_id, range_id) VALUES ('edmequipment16', 'edmcategory');
INSERT INTO public.range (property_id, range_id) VALUES ('edmequipment17', 'edmdataproduct');
INSERT INTO public.range (property_id, range_id) VALUES ('edmequipment17', 'edmwebservice');
INSERT INTO public.range (property_id, range_id) VALUES ('edmequipment17', 'edmservice');
INSERT INTO public.range (property_id, range_id) VALUES ('edmequipment18', 'literal');
/* *edmfacility* */
INSERT INTO public.range (property_id, range_id) VALUES ('edmfacility1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmfacility2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmfacility3', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmfacility4', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmfacility5', 'edmcontactpoint');
INSERT INTO public.range (property_id, range_id) VALUES ('edmfacility6', 'edmcategory');
INSERT INTO public.range (property_id, range_id) VALUES ('edmfacility7', 'edmfacility');
INSERT INTO public.range (property_id, range_id) VALUES ('edmfacility8', 'edmlocation');
INSERT INTO public.range (property_id, range_id) VALUES ('edmfacility9', 'edmaddress');
INSERT INTO public.range (property_id, range_id) VALUES ('edmfacility10', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmfacility11', 'edmdataproduct');
INSERT INTO public.range (property_id, range_id) VALUES ('edmfacility11', 'edmwebservice');
INSERT INTO public.range (property_id, range_id) VALUES ('edmfacility11', 'edmservice');
/* edmpublication */
INSERT INTO public.range (property_id, range_id) VALUES ('edmpublication1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmpublication2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmpublication3', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmpublication4', 'edmperson');
INSERT INTO public.range (property_id, range_id) VALUES ('edmpublication4', 'edmorganization');
INSERT INTO public.range (property_id, range_id) VALUES ('edmpublication5', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmpublication6', 'edmperson');
INSERT INTO public.range (property_id, range_id) VALUES ('edmpublication7', 'edmperson');
INSERT INTO public.range (property_id, range_id) VALUES ('edmpublication8', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmpublication9', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmpublication10', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmpublication11', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmpublication12', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmpublication13', 'edmcategory');
/* edmcategory */
INSERT INTO public.range (property_id, range_id) VALUES ('edmcategory1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmcategory2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmcategory3', 'edmcategoryscheme');
/* edmcategoryscheme */
INSERT INTO public.range (property_id, range_id) VALUES ('edmcategoryscheme1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmcategoryscheme2', 'literal');
/* edmcontactpoint */
INSERT INTO public.range (property_id, range_id) VALUES ('edmcontactpoint1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmcontactpoint2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmcontactpoint3', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmcontactpoint4', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmcontactpoint5', 'literal');
/* edmlocation */
INSERT INTO public.range (property_id, range_id) VALUES ('edmlocation1', 'literal');
/* edmperiodtime */
INSERT INTO public.range (property_id, range_id) VALUES ('edmperiodtime1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmperiodtime2', 'literal');
/* edmaddress */
INSERT INTO public.range (property_id, range_id) VALUES ('edmaddress1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmaddress2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmaddress3', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmaddress4', 'literal');
/* edmquantitativevalue */
INSERT INTO public.range (property_id, range_id) VALUES ('edmquantitativevalue1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmquantitativevalue2', 'literal');
/* edmidentifier */
INSERT INTO public.range (property_id, range_id) VALUES ('edmidentifier1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('edmidentifier2', 'literal');
/* EPOS */
/* eposagent */
INSERT INTO public.range (property_id, range_id) VALUES ('eposagent1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposagent2', 'eposcategory');
/* eposcatalogue */
INSERT INTO public.range (property_id, range_id) VALUES ('eposcatalogue1', 'eposdataset');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcatalogue2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcatalogue3', 'eposagent');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcatalogue4', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcatalogue5', 'eposdocument');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcatalogue6', 'eposlinguisticsystem');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcatalogue7', 'eposlicensedocument');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcatalogue8', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcatalogue9', 'eposcategoryscheme');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcatalogue10', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcatalogue11', 'eposcatalogue');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcatalogue12', 'eposcatalogue');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcatalogue13', 'eposcataloguerecord');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcatalogue14', 'eposrightsstatement');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcatalogue15', 'eposlocation');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcatalogue16', 'eposresource');
/* eposdataset */
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset3', 'eposkind');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset4', 'eposdistribution');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset5', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset6', 'eposagent');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset7', 'eposcategory');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset8', 'eposrightsstatement');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset9', 'eposstandard');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset10', 'eposdocument');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset11', 'eposfrequency');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset12', 'eposdataset');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset13', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset14', 'eposdataset');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset15', 'eposdocument');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset16', 'eposlinguisticsystem');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset17', 'eposidentifier');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset18', 'eposstatus');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset19', 'eposresource');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset20', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset21', 'eposdistribution');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset22', 'eposdataset');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset23', 'eposlocation');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset24', 'eposperiodtime');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset25', 'eposcategory');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset26', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset27', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset28', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset29', 'eposdataset');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset30', 'eposdataset');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdataset31', 'literal');
/* eposresource */
INSERT INTO public.range (property_id, range_id) VALUES ('eposresource1', 'eposcategory');
/* eposcategory */
INSERT INTO public.range (property_id, range_id) VALUES ('eposcategory1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcategory2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcategory3', 'eposcategoryscheme');
/* eposcategoryscheme */
INSERT INTO public.range (property_id, range_id) VALUES ('eposcategoryscheme1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcategoryscheme2', 'literal');
/* eposdistribution */
INSERT INTO public.range (property_id, range_id) VALUES ('eposdistribution1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdistribution2', 'eposresource');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdistribution3', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdistribution4', 'eposmediatype');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdistribution5', 'eposlicensedocument');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdistribution6', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdistribution7', 'eposchecksum');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdistribution8', 'eposdocument');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdistribution9', 'eposresource');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdistribution10', 'eposlinguisticsystem');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdistribution11', 'eposstandard');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdistribution12', 'eposmediatype');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdistribution13', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdistribution14', 'eposrightsstatement');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdistribution15', 'eposcategory');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdistribution16', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdistribution17', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposdistribution18', 'eposcategory');
/* eposlicensedocument */
INSERT INTO public.range (property_id, range_id) VALUES ('eposlicensedocument1', 'eposcategory');
/* eposcataloguerecord */
INSERT INTO public.range (property_id, range_id) VALUES ('eposcataloguerecord1', 'eposdataset');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcataloguerecord2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcataloguerecord3', 'eposresource');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcataloguerecord4', 'eposcategory');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcataloguerecord5', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcataloguerecord6', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcataloguerecord7', 'eposlinguisticsystem');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcataloguerecord8', 'eposcataloguerecord');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcataloguerecord9', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcataloguerecord10', 'literal');
/* eposchecksum */
INSERT INTO public.range (property_id, range_id) VALUES ('eposchecksum1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposchecksum2', 'literal');
/* eposidentifier */
INSERT INTO public.range (property_id, range_id) VALUES ('eposidentifier1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposidentifier2', 'literal');
/* eposlocation */
INSERT INTO public.range (property_id, range_id) VALUES ('eposlocation1', 'literal');
/* eposperiodtime */
INSERT INTO public.range (property_id, range_id) VALUES ('eposperiodtime1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposperiodtime2', 'literal');
/* eposequipment */
INSERT INTO public.range (property_id, range_id) VALUES ('eposequipment1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposequipment2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposequipment3', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposequipment4', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposequipment5', 'eposorganization');
INSERT INTO public.range (property_id, range_id) VALUES ('eposequipment6', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposequipment7', 'eposequipment');
INSERT INTO public.range (property_id, range_id) VALUES ('eposequipment7', 'eposfacility');
INSERT INTO public.range (property_id, range_id) VALUES ('eposequipment8', 'eposcontactpoint');
INSERT INTO public.range (property_id, range_id) VALUES ('eposequipment9', 'eposlocation');
INSERT INTO public.range (property_id, range_id) VALUES ('eposequipment10', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposequipment11', 'eposquantitativevalue');
INSERT INTO public.range (property_id, range_id) VALUES ('eposequipment12', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposequipment13', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposequipment14', 'eposquantitativevalue');
INSERT INTO public.range (property_id, range_id) VALUES ('eposequipment15', 'eposperiodtime');
INSERT INTO public.range (property_id, range_id) VALUES ('eposequipment16', 'eposresource');
INSERT INTO public.range (property_id, range_id) VALUES ('eposequipment17', 'eposcategory');
INSERT INTO public.range (property_id, range_id) VALUES ('eposequipment18', 'literal');
/* *facility* */
INSERT INTO public.range (property_id, range_id) VALUES ('eposfacility1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposfacility2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposfacility3', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposfacility4', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposfacility5', 'eposcategory');
INSERT INTO public.range (property_id, range_id) VALUES ('eposfacility6', 'eposfacility');
INSERT INTO public.range (property_id, range_id) VALUES ('eposfacility7', 'eposaddress');
INSERT INTO public.range (property_id, range_id) VALUES ('eposfacility8', 'eposdocument');
INSERT INTO public.range (property_id, range_id) VALUES ('eposfacility9', 'eposcontactpoint');
INSERT INTO public.range (property_id, range_id) VALUES ('eposfacility10', 'eposresource');
INSERT INTO public.range (property_id, range_id) VALUES ('eposfacility11', 'eposlocation');
/* epossoftwareapplication  */
INSERT INTO public.range (property_id, range_id) VALUES ('epossoftwareapplication1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epossoftwareapplication2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epossoftwareapplication3', 'eposcontactpoint');
INSERT INTO public.range (property_id, range_id) VALUES ('epossoftwareapplication4', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epossoftwareapplication5', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epossoftwareapplication6', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epossoftwareapplication7', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epossoftwareapplication8', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epossoftwareapplication9', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epossoftwareapplication10', 'eposcategory');
INSERT INTO public.range (property_id, range_id) VALUES ('epossoftwareapplication11', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epossoftwareapplication12', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epossoftwareapplication13', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epossoftwareapplication14', 'eposoperation');
/* epossoftwaresourcecode1  */
INSERT INTO public.range (property_id, range_id) VALUES ('epossoftwaresourcecode1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epossoftwaresourcecode2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epossoftwaresourcecode3', 'eposcontactpoint');
INSERT INTO public.range (property_id, range_id) VALUES ('epossoftwaresourcecode4', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epossoftwaresourcecode5', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epossoftwaresourcecode6', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epossoftwaresourcecode7', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epossoftwaresourcecode8', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epossoftwaresourcecode9', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epossoftwaresourcecode10', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epossoftwaresourcecode11', 'eposcategory');
INSERT INTO public.range (property_id, range_id) VALUES ('epossoftwaresourcecode12', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epossoftwaresourcecode13', 'epossoftwareapplication');
/* epospublication  */
INSERT INTO public.range (property_id, range_id) VALUES ('epospublication1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epospublication2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epospublication3', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epospublication4', 'eposorganization');
INSERT INTO public.range (property_id, range_id) VALUES ('epospublication4', 'eposperson');
INSERT INTO public.range (property_id, range_id) VALUES ('epospublication5', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epospublication6', 'eposperson');
INSERT INTO public.range (property_id, range_id) VALUES ('epospublication7', 'eposperson');
INSERT INTO public.range (property_id, range_id) VALUES ('epospublication8', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epospublication9', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epospublication10', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epospublication11', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epospublication12', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epospublication13', 'eposcategory');
/* eposwebservice  */
INSERT INTO public.range (property_id, range_id) VALUES ('eposwebservice1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposwebservice2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposwebservice3', 'eposcategory');
INSERT INTO public.range (property_id, range_id) VALUES ('eposwebservice4', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposwebservice5', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposwebservice6', 'eposcontactpoint');
INSERT INTO public.range (property_id, range_id) VALUES ('eposwebservice7', 'eposorganization');
INSERT INTO public.range (property_id, range_id) VALUES ('eposwebservice8', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposwebservice9', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposwebservice10', 'eposlocation');
INSERT INTO public.range (property_id, range_id) VALUES ('eposwebservice11', 'eposoperation');
INSERT INTO public.range (property_id, range_id) VALUES ('eposwebservice12', 'eposapidocumentation');
INSERT INTO public.range (property_id, range_id) VALUES ('eposwebservice13', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposwebservice14', 'eposlicensedocument');
INSERT INTO public.range (property_id, range_id) VALUES ('eposwebservice15', 'eposperiodtime');
/* eposservice  */
INSERT INTO public.range (property_id, range_id) VALUES ('eposservice1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposservice2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposservice3', 'eposcontactpoint');
INSERT INTO public.range (property_id, range_id) VALUES ('eposservice12', 'eposcontactpoint');
INSERT INTO public.range (property_id, range_id) VALUES ('eposservice4', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposservice5', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposservice6', 'eposorganization');
INSERT INTO public.range (property_id, range_id) VALUES ('eposservice6', 'eposperson');
INSERT INTO public.range (property_id, range_id) VALUES ('eposservice7', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposservice8', 'eposcategory');
INSERT INTO public.range (property_id, range_id) VALUES ('eposservice9', 'eposperiodtime');
INSERT INTO public.range (property_id, range_id) VALUES ('eposservice10', 'eposlocation');
INSERT INTO public.range (property_id, range_id) VALUES ('eposservice11', 'literal');
/* eposoperation  */
INSERT INTO public.range (property_id, range_id) VALUES ('eposoperation1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposoperation2', 'eposiritemplate');
INSERT INTO public.range (property_id, range_id) VALUES ('eposoperation3', 'literal');
/* eposiritemplate  */
INSERT INTO public.range (property_id, range_id) VALUES ('eposiritemplate1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposiritemplate2', 'eposiritemplatemapping');
/* eposiritemplatemapping  */
INSERT INTO public.range (property_id, range_id) VALUES ('eposiritemplatemapping1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposiritemplatemapping2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposiritemplatemapping3', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposiritemplatemapping4', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposiritemplatemapping5', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposiritemplatemapping6', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposiritemplatemapping7', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposiritemplatemapping8', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposiritemplatemapping9', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposiritemplatemapping10', 'literal');
/* eposcontactpoint  */
INSERT INTO public.range (property_id, range_id) VALUES ('eposcontactpoint1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcontactpoint2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcontactpoint3', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcontactpoint4', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposcontactpoint5', 'literal');
/* eposorganization  */
INSERT INTO public.range (property_id, range_id) VALUES ('eposorganization1', 'epospropertyvalue');
INSERT INTO public.range (property_id, range_id) VALUES ('eposorganization2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposorganization3', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposorganization4', 'epospostaladdress');
INSERT INTO public.range (property_id, range_id) VALUES ('eposorganization5', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposorganization6', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposorganization7', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposorganization8', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposorganization9', 'eposcontactpoint'); /*  todo vedere di non aggoiungere questa INSERT INTO public.range (property_id, range_id) VALUES ('eposorganization13', 'eposcontactpoint'); */
INSERT INTO public.range (property_id, range_id) VALUES ('eposorganization10', 'eposorganization');
INSERT INTO public.range (property_id, range_id) VALUES ('eposorganization11', 'eposequipment');
INSERT INTO public.range (property_id, range_id) VALUES ('eposorganization11', 'eposfacility');
INSERT INTO public.range (property_id, range_id) VALUES ('eposorganization12', 'eposproject');
/* eposperson  */
INSERT INTO public.range (property_id, range_id) VALUES ('eposperson1', 'epospropertyvalue');
INSERT INTO public.range (property_id, range_id) VALUES ('eposperson2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposperson3', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposperson4', 'eposcontactpoint');
INSERT INTO public.range (property_id, range_id) VALUES ('eposperson5', 'epospostaladdress');
INSERT INTO public.range (property_id, range_id) VALUES ('eposperson6', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposperson7', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposperson8', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposperson9', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposperson10', 'eposorganization');
/* eposquantitativevalue  */
INSERT INTO public.range (property_id, range_id) VALUES ('eposquantitativevalue1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposquantitativevalue2', 'literal');
/* eposaddress  */
INSERT INTO public.range (property_id, range_id) VALUES ('eposaddress1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposaddress2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposaddress3', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposaddress4', 'literal');
/* epospostaladdress */
INSERT INTO public.range (property_id, range_id) VALUES ('epospostaladdress1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epospostaladdress2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epospostaladdress3', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epospostaladdress4', 'literal');
/* epospropertyvalue */
INSERT INTO public.range (property_id, range_id) VALUES ('epospropertyvalue1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('epospropertyvalue2', 'literal');
/* eposapidocumentation */
INSERT INTO public.range (property_id, range_id) VALUES ('eposapidocumentation1', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposapidocumentation2', 'literal');
INSERT INTO public.range (property_id, range_id) VALUES ('eposapidocumentation3', 'literal');


END;
