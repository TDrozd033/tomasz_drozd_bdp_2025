CREATE TABLE drozd.paranhos_dem AS
SELECT a.rid, ST_Clip(a.rast, b.geom, true) AS rast
FROM rasters.dem AS a,
     vectors.porto_parishes AS b
WHERE b.parish ILIKE 'paranhos'
  AND ST_Intersects(b.geom, a.rast);
