/*
  Give all show names along with award ID's if any.
*/

CREATE OR REPLACE VIEW Query5RightJoin AS
    SELECT zshowaward.awardid, ztvshow.show_name
    FROM zshowaward RIGHT JOIN ztvshow ON zshowaward.show_num = ztvshow.show_num;  
