/*
    Name actors who have either won no awards or have appeared on a show that won no awards.  (Give the actor’s  name and his/her TVQ.) 
*/

CREATE OR REPLACE VIEW Query7 AS
  SELECT ac.actor_name, ac.tvq
  FROM zActor ac
  WHERE ac.actor_num NOT IN
    (SELECT ac_aw.actor_num
    FROM zActor_Award ac_aw)
  UNION 
  SELECT ac.actor_name, ac.tvq
  FROM zActor ac
  WHERE ac.actor_num IN
    (SELECT pl.actor_num
    FROM zPlay pl
    WHERE pl.show_num IN
      (SELECT tv.show_num
      FROM zTVShow tv
      WHERE tv.show_num NOT IN
        (SELECT sh_aw.show_num
        FROM zShowAward sh_aw)));