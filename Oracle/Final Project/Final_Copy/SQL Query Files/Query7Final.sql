/*  
  for every patient give their name and the name of their doctor, nurse, hospital, building, and insurance company
*/


CREATE OR REPLACE VIEW Query7Final AS 
  SELECT fpatient.pat_name, fdoctor.doc_name, fnurse.nurse_name, fhospital.hosp_name, fbuilding.build_name, finsurance.ins_comp
  FROM fpatient, fdoctor, fnurse, fhospital, fbuilding, finsurance
  WHERE fpatient.doc_id = fdoctor.doc_id
  AND fpatient.nurse_id = fnurse.nurse_id
  AND fpatient.hosp_id = fhospital.hosp_id
  AND fpatient.build_id = fbuilding.build_id  
  AND fpatient.ins_id = finsurance.ins_id;