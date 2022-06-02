/*
   Give all Patient names and their discharge date if any.
*/

CREATE OR REPLACE VIEW Query5FinalRightJoin AS
    SELECT faddmitance.add_discharged, fpatient.pat_name, faddmitance.pat_id 
    FROM fpatient RIGHT JOIN faddmitance ON fpatient.pat_id = faddmitance.pat_id;