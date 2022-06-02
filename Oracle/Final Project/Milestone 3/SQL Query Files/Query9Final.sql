/*
    Get Patient IDs and Names for those who have a lower total bill than Ben Mazza.
*/

CREATE OR REPLACE VIEW Query9Final AS 
  SELECT patient2.pat_id, patient2.pat_name
  FROM fpatient patient1, fpatient patient2, fbill bill1, fbill bill2
  WHERE patient1.pat_name = 'Ben Mazza'
  AND patient1.pat_id = bill1.pat_id
  AND patient2.pat_id = bill2.pat_id
  AND bill1.total_due < bill2.total_due;