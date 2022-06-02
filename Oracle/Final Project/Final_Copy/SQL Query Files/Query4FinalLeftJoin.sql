/*
  Give all patient names along with the name of their Insurance company if any.
*/


CREATE OR REPLACE VIEW Query4FinalLeftJoin AS
    SELECT fpatient.pat_name, finsurance.ins_id, finsurance.ins_comp
    FROM fpatient  LEFT JOIN finsurance ON fpatient.ins_id = finsurance.ins_id;