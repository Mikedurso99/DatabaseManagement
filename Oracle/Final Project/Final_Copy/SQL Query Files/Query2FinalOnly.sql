/*
  name the staff who are not doctors and not in monmouth medical
*/

CREATE OR REPLACE VIEW Query2FinalOnly AS
  SELECT fstaff.staff_id
  FROM fstaff
  WHERE fstaff.staff_id NOT IN(
     SELECT fdoctor.staff_id
     FROM fdoctor
     WHERE fdoctor.hosp_id NOT IN(
        SELECT fhospital.hosp_id
        FROM fhospital
        WHERE fhospital.hosp_name = 'Monmouth Medical'));