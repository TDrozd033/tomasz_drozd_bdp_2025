CREATE TABLE drozd.tpi30_porto AS
SELECT ST_TPI(a.rast, 1) AS rast
FROM rasters.dem AS a,
     vectors.porto_parishes AS b
WHERE ST_Intersects(a.rast, b.geom)
  AND b.municipality ILIKE 'porto';
