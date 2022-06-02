/*
    Name award-winning shows that have featured award-winning actor(s) and were produced by award-winning producer(s).  (Give the show names and their network.) 
 
*/

CREATE OR REPLACE VIEW Query9 AS
  SELECT DISTINCT tv.show_name, tv.network_id
  FROM zTVShow tv, zPlay pl, zProdBy pb
  WHERE tv.show_num IN
    (SELECT sh_aw.show_num
    FROM zShowAward sh_aw)
  AND pl.actor_num IN
    (SELECT ac_aw.actor_num
    FROM zActor_Award ac_aw)
  AND tv.show_num = pb.show_num
  AND pb.prod_num IN
    (SELECT pr_aw.prod_num
    FROM zProdAward pr_aw);