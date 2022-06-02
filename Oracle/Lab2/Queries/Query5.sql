/*
    TVShows pay actors. They also pay producers. Give a sorted list of TVShows, based on their total aggregate payrolls.  (Give the TVShow name and the total payroll, sorted by payroll.) 
*/

CREATE OR REPLACE VIEW Query5 AS
  SELECT tv.show_name, SUM(pl.actor_salary + pb.prod_salary) AS Payroll
  FROM zTVShow tv, zPlay pl, zProdBy pb
  WHERE tv.show_num = pl.show_num
  AND pb.show_num = pl.show_num
  GROUP BY tv.show_name
  ORDER BY Payroll;