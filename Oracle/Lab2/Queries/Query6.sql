/*
    A spin-off is a show that was created from another “parent" show.   Identify the spinoffs that appeared on the same network as their parent show.  (Give the spinoff, its network, its parent show and the parent show’s network.)
*/

CREATE OR REPLACE VIEW Query6 AS
  SELECT tv.show_name AS original, tv2.show_name AS Spinoff
  FROM zSpinoff sp, zTVShow tv, zTVShow tv2
  WHERE sp.parent_num = tv.show_num
  AND sp.spinoff_num = tv2.show_num
  AND tv.network_id = tv2.network_id;