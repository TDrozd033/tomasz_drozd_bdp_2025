CREATE TABLE drozd.union AS
SELECT ST_Union(ST_Clip(a.rast, b.geom, true)) AS rast
FROM rasters.dem AS a, vectors.porto_parishes AS b
WHERE b.municipality ILIKE 'porto'
  AND ST_Intersects(b.geom, a.rast);
