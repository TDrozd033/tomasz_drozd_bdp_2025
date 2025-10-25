-- Policz jak wiele sklepów sportowych (‘Sporting Goods Store’ - tabela POIs) znajduje się
-- w odległości 300 m od parków (LAND_USE_A).


SELECT COUNT(DISTINCT poi.gid) AS n
FROM T2019_KAR_POI_TABLE poi, t2019_kar_land_use_a parks
WHERE poi.type = 'Sporting Goods Store'
AND ST_DWithin(poi.geom, parks.geom, 300);