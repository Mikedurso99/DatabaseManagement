/*
   For every patient that is is building foy get the hospital name
*/


CREATE OR REPLACE VIEW Query1FinalEvery AS
SELECT fpatient.pat_name
FROM fpatient
WHERE NOT EXISTS
   (SELECT *
    FROM fbuilding
    WHERE fbuilding.build_name = 'Foy'
    AND NOT EXISTS
       (SELECT *
        FROM fhospital
        WHERE fbuilding.hosp_id = fhospital.hosp_id));