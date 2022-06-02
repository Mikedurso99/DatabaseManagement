/*
  Give all character names with their correlating character numbers and actor numbers.
*/

CREATE OR REPLACE VIEW Query2JoinUsing AS
    SELECT DISTINCT char_name, char_num, actor_num
    FROM zcharacter JOIN zplay USING (char_num);