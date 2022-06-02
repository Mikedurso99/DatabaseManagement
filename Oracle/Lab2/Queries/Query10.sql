/*
     Name shows that are somehow associated with parent company ____.  This means that if ____ is a parent company for anything related to the show (sponsor, network, etc.), then you should list that show.  (Give the show name and network.)  (Use RCA in your printed results.) 
*/

SELECT tv.show_name, tv.network_id
FROM zTVShow tv
WHERE tv.show_num IN
  (SELECT sb.show_num
  FROM zSponsorBy sb
  WHERE sb.sponsor_num IN
    (SELECT s.sponsor_num
    FROM zSponsor s
    WHERE s.parent_num IN
      (SELECT pc.parent_num
      FROM zParentComp pc
      WHERE pc.parent_name = &parent_name)))
UNION
SELECT tv.show_name, tv.network_id
FROM zTVShow tv
WHERE tv.distrID IN
  (SELECT di.distrID
  FROM zDistributor di
  WHERE di.parent_num IN
    (SELECT pc.parent_num
    FROM zParentComp pc
    WHERE pc.parent_name = &parent_name))
UNION
SELECT tv.show_name, tv.network_id
FROM zTVShow tv
WHERE tv.network_id IN
  (SELECT net.network_id
  FROM zNetwork net
  WHERE net.parent_num IN
    (SELECT pc.parent_num
    FROM zParentComp pc
    WHERE pc.parent_name = &parent_name));