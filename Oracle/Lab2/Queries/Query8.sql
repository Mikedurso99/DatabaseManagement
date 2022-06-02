/*
    List awards that, according to the current data in the database, were not awarded.   (Give the award name, award type, and award year.) 
*/

CREATE OR REPLACE VIEW Query8 AS
  SELECT aw.award_name, aw.award_type, aw.award_year
  FROM zAward aw
  WHERE aw.awardID NOT IN        
    (SELECT ac_aw.awardID
    FROM zActor_Award ac_aw
    UNION
    SELECT pr_aw.awardID
    FROM zProdAward pr_aw
    UNION
    SELECT sh_aw.awardID
    FROM zShowAward sh_aw);