/*
  Give all Network ID's along with Distributor Names if any.
*/

CREATE OR REPLACE VIEW Query6FullJoin AS
    SELECT znetwork.network_id, zdistributor.distr_name
    FROM znetwork  FULL JOIN zdistributor ON znetwork.parent_num = zdistributor.parent_num;  