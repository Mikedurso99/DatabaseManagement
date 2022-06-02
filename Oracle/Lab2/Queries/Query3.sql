/*
    Name agents who represent an actor on a show on one of the Big Three Networks (ABC, CBS, or NBC). (Give the agent's name and the actor’s name.) 
*/

CREATE OR REPLACE VIEW Query3 AS
  SELECT DISTINCT ag.agent_name, ac.actor_name
  FROM zAgent ag, zActor ac, zPlay pl, zTVShow tv
  WHERE ag.agent_num = ac.agent_num
  AND ac.actor_num = pl.actor_num
  AND pl.show_num = tv.show_num
  AND (tv.network_id = 'ABC'
  OR tv.network_id = 'CBS'
  OR tv.network_id = 'NBC');