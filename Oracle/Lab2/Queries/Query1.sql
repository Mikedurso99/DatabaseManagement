/*
  List the actors on shows sponsored by _____.  (Give the actor name and TVshow name.) (Use Levis in your printed results.) 
*/
  
CREATE OR REPLACE VIEW Query1 AS
  SELECT ac.actor_name, tv.show_name
  FROM zActor ac, zTVShow tv, zPlay pl, zSponsorBy sb, zSponsor s
  WHERE ac.actor_num = pl.actor_num
  AND pl.show_num = tv.show_num
  AND tv.show_num = sb.show_num
  AND sb.sponsor_num = s.sponsor_num
  AND s.sponsor_name = '&sponsor_name';