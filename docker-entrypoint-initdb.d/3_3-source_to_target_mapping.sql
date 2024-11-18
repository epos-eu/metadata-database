\connect cerif;
\connect cerif;
BEGIN;

--
-- TOC entry 3365 (class 0 OID 26155)
-- Dependencies: 215
-- Data for Name: source_to_target_mapping; Type: TABLE DATA; Schema: public; Owner: root
--
/* edmaddress->eposaddress */
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmaddress1', 'eposaddress1');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmaddress2', 'eposaddress2');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmaddress3', 'eposaddress3');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmaddress4', 'eposaddress4');
/* edmaddress->epospostaladdress */
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmaddress1', 'epospostaladdress1');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmaddress2', 'epospostaladdress2');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmaddress3', 'epospostaladdress3');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmaddress4', 'epospostaladdress4');
/* edmcategory->eposcategory */
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmcategory1', 'eposcategory1');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmcategory2', 'eposcategory2');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmcategory3', 'eposcategory3');
/* edmcategoryscheme->eposcategoryscheme */
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmcategoryscheme1', 'eposcategoryscheme1');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmcategoryscheme2', 'eposcategoryscheme2');
/* edmedmcontactpoint->eposedmcontactpoint */
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmcontactpoint1', 'eposperson4');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmcontactpoint2', 'eposcontactpoint1');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmcontactpoint3', 'eposcontactpoint3');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmcontactpoint4', 'eposcontactpoint5');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmcontactpoint5', 'eposcontactpoint4');
/* edmdataproduct->eposdataproduct */
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdataproduct2', 'eposdataset2');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdataproduct3', 'eposdataset1');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdataproduct13', 'eposdataset3');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdataproduct17', 'eposdataset4');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdataproduct12', 'eposdataset5');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdataproduct14', 'eposdataset6');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdataproduct11', 'eposdataset7');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdataproduct18', 'eposdataset8');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdataproduct10', 'eposdataset11');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdataproduct4', 'eposdataset17');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdataproduct21', 'eposdataset18');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdataproduct6', 'eposdataset20');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdataproduct15', 'eposdataset23');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdataproduct16', 'eposdataset24');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdataproduct9', 'eposdataset25');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdataproduct7', 'eposdataset26');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdataproduct8', 'eposdataset27');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdataproduct19', 'eposdataset29');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdataproduct20', 'eposdataset30');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdataproduct5', 'eposdataset31');
/* edmdistribution->eposdistribution */
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdistribution1', 'eposdistribution1');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdistribution2', 'eposdistribution16');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdistribution3', 'eposdistribution3');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdistribution4', 'eposdistribution13');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdistribution5', 'eposdistribution17');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdistribution6', 'eposdistribution18');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdistribution7', 'eposdistribution4');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdistribution8', 'eposdistribution5');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdistribution9', 'eposdistribution9');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdistribution10', 'eposdistribution2');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmdistribution11', 'eposdistribution11');
/* edmequipment->eposequipment */
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmequipment1', 'eposequipment2');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmequipment2', 'eposequipment1');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmequipment3', 'eposequipment3');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmequipment4', 'eposequipment5');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmequipment5', 'eposequipment6');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmequipment6', 'eposequipment7');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmequipment7', 'eposequipment8');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmequipment8', 'eposequipment9');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmequipment9', 'eposequipment15');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmequipment10', 'eposequipment18');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmequipment11', 'eposequipment10');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmequipment12', 'eposequipment11');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmequipment13', 'eposequipment12');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmequipment14', 'eposequipment13');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmequipment15', 'eposequipment14');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmequipment16', 'eposequipment17');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmequipment17', 'eposequipment16');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmequipment18', 'eposequipment4');
/* edmfacility->eposfacility */
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmfacility1', 'eposfacility2');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmfacility2', 'eposfacility1');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmfacility3', 'eposfacility3');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmfacility4', 'eposfacility4');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmfacility5', 'eposfacility9');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmfacility6', 'eposfacility5');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmfacility7', 'eposfacility6');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmfacility8', 'eposfacility11');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmfacility9', 'eposfacility7');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmfacility10', 'eposfacility8');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmfacility11', 'eposfacility10');
/* edmidentifier->eposidentifier */
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmidentifier1', 'eposidentifier1');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmidentifier2', 'eposidentifier2');
/* edmidentifier->epospropertyvalue */
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmidentifier1', 'epospropertyvalue1');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmidentifier2', 'epospropertyvalue2');
/* edmlocation->eposlocation */
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmlocation1', 'eposlocation1');
/* edmmapping->eposiritemplatemapping */
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmmapping1', 'eposiritemplatemapping1');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmmapping2', 'eposiritemplatemapping2');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmmapping3', 'eposiritemplatemapping3');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmmapping4', 'eposiritemplatemapping4');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmmapping5', 'eposiritemplatemapping5');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmmapping6', 'eposiritemplatemapping6');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmmapping7', 'eposiritemplatemapping7');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmmapping8', 'eposiritemplatemapping8');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmmapping9', 'eposiritemplatemapping9');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmmapping10', 'eposiritemplatemapping10');
/* edmoperation->eposoperation */
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmoperation1', 'eposoperation1');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmoperation2', 'eposoperation3');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmoperation3', 'eposiritemplate1');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmoperation4', 'eposiritemplate2');
/* edmorganization->eposorganization */
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmorganization1', 'eposorganization1');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmorganization2', 'eposorganization2');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmorganization3', 'eposorganization3');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmorganization4', 'eposorganization4');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmorganization5', 'eposorganization5');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmorganization6', 'eposorganization6');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmorganization7', 'eposorganization7');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmorganization8', 'eposorganization8');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmorganization9', 'eposorganization9');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmorganization10', 'eposorganization10');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmorganization11', 'eposorganization11');
/* edmperson->eposperson */
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmperson1', 'eposperson1');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmperson2', 'eposperson2');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmperson3', 'eposperson3');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmperson4', 'eposperson5');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmperson5', 'eposperson6');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmperson6', 'eposperson7');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmperson7', 'eposperson8');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmperson8', 'eposperson9');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmperson9', 'eposperson10');
/* edmperiodtime->eposperiodtime */
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmperiodtime1', 'eposperiodtime1');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmperiodtime2', 'eposperiodtime2');
/* edmpublication->epospublication */
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmpublication1', 'epospublication1');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmpublication2', 'epospublication2');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmpublication3', 'epospublication3');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmpublication4', 'epospublication4');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmpublication5', 'epospublication5');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmpublication6', 'epospublication6');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmpublication7', 'epospublication7');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmpublication8', 'epospublication8');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmpublication9', 'epospublication9');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmpublication10', 'epospublication10');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmpublication11', 'epospublication11');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmpublication12', 'epospublication12');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmpublication13', 'epospublication13');
/* edmservice->eposservice */
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmservice1', 'eposservice1');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmservice2', 'eposservice2');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmservice3', 'eposservice4');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmservice4', 'eposservice5');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmservice5', 'eposservice3');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmservice5', 'eposservice12');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmservice6', 'eposservice8');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmservice7', 'eposservice6');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmservice8', 'eposservice10');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmservice9', 'eposservice9');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmservice10', 'eposservice11');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmservice11', 'eposservice7');
/* edmsoftware->epossoftwareapplication */
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmsoftwareapplication1', 'epossoftwareapplication1');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmsoftwareapplication2', 'epossoftwareapplication2');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmsoftwareapplication3', 'epossoftwareapplication3');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmsoftwareapplication4', 'epossoftwareapplication4');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmsoftwareapplication5', 'epossoftwareapplication5');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmsoftwareapplication6', 'epossoftwareapplication6');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmsoftwareapplication7', 'epossoftwareapplication7');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmsoftwareapplication8', 'epossoftwareapplication9');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmsoftwareapplication9', 'epossoftwareapplication10');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmsoftwareapplication10', 'epossoftwareapplication11');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmsoftwareapplication11', 'epossoftwareapplication12');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmsoftwareapplication12', 'epossoftwareapplication13');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmsoftwareapplication13', 'epossoftwareapplication8');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmsoftwareapplication14', 'epossoftwareapplication14');
/* edmsoftware->epossoftwaresourcecode */
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmsoftwaresourcecode1', 'epossoftwaresourcecode1');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmsoftwaresourcecode2', 'epossoftwaresourcecode2');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmsoftwaresourcecode3', 'epossoftwaresourcecode3');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmsoftwaresourcecode4', 'epossoftwaresourcecode4');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmsoftwaresourcecode5', 'epossoftwaresourcecode6');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmsoftwaresourcecode6', 'epossoftwaresourcecode7');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmsoftwaresourcecode7', 'epossoftwaresourcecode10');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmsoftwaresourcecode8', 'epossoftwaresourcecode11');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmsoftwaresourcecode9', 'epossoftwaresourcecode5');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmsoftwaresourcecode10', 'epossoftwaresourcecode8');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmsoftwaresourcecode11', 'epossoftwaresourcecode9');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmsoftwaresourcecode12', 'epossoftwareapplication12');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmsoftwaresourcecode13', 'epossoftwaresourcecode13');
/* edmwebservice->eposwebservice */
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmwebservice1', 'eposwebservice1');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmwebservice2', 'eposwebservice2');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmwebservice3', 'eposwebservice3');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmwebservice4', 'eposwebservice4');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmwebservice5', 'eposwebservice5');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmwebservice6', 'eposwebservice6');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmwebservice7', 'eposwebservice7');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmwebservice8', 'eposwebservice8');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmwebservice9', 'eposwebservice9');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmwebservice10', 'eposwebservice10');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmwebservice11', 'eposwebservice11');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmwebservice12', 'eposapidocumentation3');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmwebservice13', 'eposwebservice13');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmwebservice14', 'eposwebservice14');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmwebservice15', 'eposwebservice15');
/*edmquantitativevalue -->eposquantitativevalue*/
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmquantitativevalue1', 'eposquantitativevalue1');
INSERT INTO public.source_to_target_mapping (property_source, property_target) VALUES ('edmquantitativevalue2', 'eposquantitativevalue2');


END;
