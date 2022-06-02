/*
  Give all Actor Names along with award ID's if any.
*/

CREATE OR REPLACE VIEW Query4LeftJoin AS
    SELECT zactor.actor_name,zactor_award.awardid
    FROM zactor LEFT JOIN zactor_award ON zactor.actor_num = zactor_award.actor_num;
