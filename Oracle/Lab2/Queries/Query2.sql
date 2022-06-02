/*
    Name characters on TV shows distributed by a company whose headquarters are in Los Angeles. (Give the character’s name, the TVShow name, the distributor’s name, and the distributor’s location.) 
*/

CREATE OR REPLACE VIEW Query2 AS
  SELECT ch.char_name, tv.show_name, di.distr_name, di.distr_loc
  FROM zTVShow tv, zDistributor di, zCharacter ch, zPlay pl
  WHERE ch.char_num = pl.char_num
  AND pl.show_num = tv.show_num
  AND tv.distrID = di.distrID
  AND di.distr_loc = 'Los Angeles';