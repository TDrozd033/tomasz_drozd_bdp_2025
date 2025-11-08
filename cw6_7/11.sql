CREATE TABLE drozd.intersection AS
SELECT
  a.rid,
  (ST_Intersection(b.geom, a.rast)).geom AS geom,
  (ST_Intersection(b.geom, a.rast)).val AS val
FROM rasters.landsat8 AS a,
     vectors.porto_parishes AS b
WHERE b.parish ILIKE 'paranhos'
  AND ST_Intersects(b.geom, a.rast);
