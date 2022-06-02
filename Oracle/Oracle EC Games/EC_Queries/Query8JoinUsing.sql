/*
  Get the game name and number and how many times it has been played on each console.
*/

CREATE OR REPLACE VIEW Query8JoinUsing AS
    SELECT gnum, gamename, cnum, timesplayed
    FROM games JOIN plays USING (gnum);
