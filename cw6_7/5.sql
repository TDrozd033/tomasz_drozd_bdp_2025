CREATE TABLE drozd.clip AS
SELECT ST_Clip(a.rast, b.geom, true) AS rast, b.municipality
FROM rasters.dem AS a, vectors.porto_parishes AS b
WHERE ST_Intersects(a.rast, b.geom)
  AND b.municipality ILIKE 'porto';
