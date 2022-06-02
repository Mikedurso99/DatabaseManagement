/*
    Get the Nurse's ID and Name that is first in the alphabetic list of of the other nurses.(by first name)
*/


CREATE OR REPLACE VIEW Query10Final AS
SELECT fnurse.nurse_ID, fnurse.nurse_name
FROM fnurse
WHERE fnurse.nurse_name IN
    (SELECT MIN(fnurse.nurse_name)
     FROM fnurse);