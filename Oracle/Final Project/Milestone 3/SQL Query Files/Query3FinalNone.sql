/*  
   name patients not in Jersey Shore
*/

CREATE OR REPLACE VIEW Query3FinalNone AS
   SELECT fpatient.pat_name
   FROM fpatient
   WHERE fpatient.hosp_id NOT IN(
      SELECT fhospital.hosp_id
      FROM fhospital
      WHERE fhospital.hosp_name = 'Jersey Shore');