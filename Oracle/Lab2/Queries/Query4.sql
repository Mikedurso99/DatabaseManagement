/*
   Sometimes, an actor plays more than one character on a TV show.   List these actors and the characters they played.  (Give the character’s name and the actor’s name.  You’ll have a record for each actor/character pair.) 
*/

CREATE OR REPLACE VIEW Query4 AS
  SELECT ac.actor_name, ch.char_name, ch2.char_name As character2 
  FROM zActor ac, zPlay pl, zPlay pl2, zCharacter ch, zcharacter ch2
  WHERE ac.actor_num = pl.actor_num
  AND ac.actor_num = pl2.actor_num
  AND ch.char_num = pl.char_num
  AND ch2.char_num = pl2.char_num
  AND pl.show_num = pl2.show_num
  AND pl.char_num < pl2.char_num;