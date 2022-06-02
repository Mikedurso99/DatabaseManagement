/*
   name the doctors that have at least one patient with the insurance Blue Cross Blue Shield
*/


CREATE OR REPLACE VIEW Query8Final AS 
SELECT DISTINCT fdoctor.doc_name
FROM fdoctor, fpatient, finsurance    
WHERE fdoctor.doc_id = fpatient.doc_id
AND fpatient.ins_id = finsurance.ins_id
AND finsurance.ins_comp = 'Blue Cross Blue Shield';