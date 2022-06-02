/*
  Get the console name and number with every game that has been played on it with how many times it has been played.
*/

CREATE OR REPLACE VIEW Query7NaturalJoin AS
    SELECT cnum, gnum, consolename, timesplayed
    FROM Consoles NATURAL JOIN Plays;    
