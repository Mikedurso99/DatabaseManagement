/*
  Give all show names and show numbers with their correlating distributor names and distributor ID's.
*/

CREATE OR REPLACE VIEW Query3JoinOn AS
    SELECT zdistributor.distrid, zdistributor.distr_name, ztvshow.show_name, ztvshow.show_num
    FROM zdistributor JOIN ztvshow ON zdistributor.distrid = ztvshow.distrid;
