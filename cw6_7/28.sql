CREATE TABLE drozd.porto_ndvi2 AS
WITH r AS (
    SELECT a.rid, ST_Clip(a.rast, b.geom, true) AS rast
    FROM rasters.landsat8 AS a, vectors.porto_parishes AS b
    WHERE b.municipality ILIKE 'porto'
      AND ST_Intersects(b.geom, a.rast)
)
SELECT
    r.rid,
    ST_MapAlgebra(
        r.rast, ARRAY[1,4],
        'drozd.ndvi(double precision[], integer[], text[])'::regprocedure,
        '32BF'::text
    ) AS rast
FROM r;
