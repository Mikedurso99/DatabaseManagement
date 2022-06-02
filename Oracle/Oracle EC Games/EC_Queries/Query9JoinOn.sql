/*
  Get the users name and number along with each game they have played and what consoles they played it on.
*/
  
CREATE OR REPLACE VIEW Query9JoinOn AS
    SELECT users.unum, users.username, plays.gnum, plays.cnum
    FROM users JOIN plays ON users.unum = plays.unum;