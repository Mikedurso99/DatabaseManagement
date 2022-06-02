/*
  Give all Patient names along with Doctor IDs and Names if any.
*/

CREATE OR REPLACE VIEW Query6FinalFullJoin AS
    SELECT fpatient.pat_name, fdoctor.doc_id, fdoctor.doc_name
    FROM fpatient FULL JOIN fdoctor ON fpatient.doc_id = fdoctor.doc_id;