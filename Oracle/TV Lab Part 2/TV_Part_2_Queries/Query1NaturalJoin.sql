/*
  Give all show numbers with their correlating producer number and producer name.
*/
  
CREATE OR REPLACE VIEW Query1NaturalJoin AS
    SELECT prod_num, show_num, prod_name
    FROM zproducer NATURAL JOIN zprodby;