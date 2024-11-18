\connect cerif;
BEGIN;

/* EDM --> EPOS */
SELECT  concat('[',o1.name,']') as ontology_source,
  p1.id,p1.property_name as label_edm,
  c1.class_name as doman_edm,
  c2.class_name as range_edm,
  concat('[',o2.name,']') as ontology_target,
  p2.id,p2.property_name as label_epos_dcat_ap,
  p2.vocabulary,
  c3.class_name as domain_epos_dcat_ap,
  c4.class_name as range_epos_dcat_ap
  FROM class c1
  LEFT OUTER JOIN ontology_class as oc1 ON c1.id=oc1.class_id
  LEFT OUTER JOIN ontology as o1 ON o1.id=oc1.ontology_id
  LEFT OUTER JOIN domain as d ON c1.id =d.class_id
  LEFT OUTER JOIN property as p1 ON p1.id=d.property_id
  LEFT OUTER JOIN range as r1 ON p1.id=r1.property_id
  LEFT OUTER JOIN class as c2 ON c2.id =r1.range_id
  LEFT OUTER JOIN source_to_target_mapping as stm ON stm.property_source = p1.id
  LEFT OUTER JOIN property as p2 ON p2.id=stm.property_target
  LEFT OUTER JOIN domain as d2 ON p2.id=d2.property_id
  LEFT OUTER JOIN class as c3 ON c3.id =d2.class_id
  LEFT OUTER JOIN ontology_class as oc2 ON c3.id=oc2.class_id
  LEFT OUTER JOIN ontology as o2 ON o2.id=oc2.ontology_id
  LEFT OUTER JOIN range as r2 ON p2.id=r2.property_id
  LEFT OUTER JOIN class as c4 ON c4.id =r2.range_id
JOIN class_mapping as cm ON r1.range_id =cm.class1_id and r2.range_id =cm.class2_id
WHERE c1.id='edmperson'
order by  p1.id;

/*EPOS-DCAT-AP --> EDM */
SELECT   concat('[',o1.name,']') as ontology_source,
         p1.property_name as label_epos_dcat_ap, p1.vocabulary,
         c1.class_name as domain_epos_dcat_ap,
		 c1.vocabulary as vocabulary_epos_dcat_ap,
         c2.class_name as range_epos_dcat_ap,
		 c2.vocabulary as vocabulary_epos_dcat_ap,
		 concat('[',o2.name,']') as ontology_target,
         p2.property_name as label_edm,
         c3.class_name as doman_edm,
         c4.class_name as range_edm
  FROM class c1
  LEFT OUTER JOIN ontology_class as oc1 ON c1.id=oc1.class_id
  LEFT OUTER JOIN ontology as o1 ON o1.id=oc1.ontology_id
  LEFT OUTER JOIN domain as d ON c1.id=d.class_id
  LEFT OUTER JOIN property as p1 ON p1.id=d.property_id
  LEFT OUTER JOIN range as r1 ON p1.id=r1.property_id
  LEFT OUTER JOIN class as c2 ON c2.id =r1.range_id
  LEFT OUTER JOIN source_to_target_mapping as stm ON stm.property_target = p1.id
  LEFT OUTER JOIN property as p2 ON p2.id=stm.property_source
  LEFT OUTER JOIN domain as d2 ON p2.id=d2.property_id
  LEFT OUTER JOIN class as c3 ON c3.id =d2.class_id
  LEFT OUTER JOIN ontology_class as oc2 ON c3.id=oc2.class_id
  LEFT OUTER JOIN ontology as o2 ON o2.id=oc2.ontology_id
  LEFT OUTER JOIN range as r2 ON p2.id=r2.property_id
  LEFT OUTER JOIN class as c4 ON c4.id =r2.range_id
  JOIN class_mapping as cm ON r1.range_id =cm.class2_id and r2.range_id =cm.class1_id
where o1.name = 'epos-dcat-ap' and o2.name = 'epos data model';


SELECT   concat('[',o1.name,']') as ontology_source, p1.property_name as label_epos_dcat_ap, p1.vocabulary,
         c1.class_name as domain_epos_dcat_ap,
         c2.class_name as range_epos_dcat_ap,
		 concat('[',o2.name,']') as ontology_target,
         p2.property_name as label_edm,
         c3.class_name as doman_edm,
         c4.class_name as range_edm
  FROM class c1
  LEFT OUTER JOIN ontology_class as oc1 ON c1.id=oc1.class_id
  LEFT OUTER JOIN ontology as o1 ON o1.id=oc1.ontology_id
  LEFT OUTER JOIN domain as d ON c1.id=d.class_id
  LEFT OUTER JOIN property as p1 ON p1.id=d.property_id
  LEFT OUTER JOIN range as r1 ON p1.id=r1.property_id
  LEFT OUTER JOIN class as c2 ON c2.id =r1.range_id
  LEFT OUTER JOIN source_to_target_mapping as stm ON stm.property_target = p1.id
  LEFT OUTER JOIN property as p2 ON p2.id=stm.property_source
  LEFT OUTER JOIN domain as d2 ON p2.id=d2.property_id
  LEFT OUTER JOIN class as c3 ON c3.id =d2.class_id
  LEFT OUTER JOIN ontology_class as oc2 ON c3.id=oc2.class_id
  LEFT OUTER JOIN ontology as o2 ON o2.id=oc2.ontology_id
  LEFT OUTER JOIN range as r2 ON p2.id=r2.property_id
  LEFT OUTER JOIN class as c4 ON c4.id =r2.range_id
where o1.name = 'epos-dcat-ap';


END;
