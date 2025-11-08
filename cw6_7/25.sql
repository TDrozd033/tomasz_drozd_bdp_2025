CREATE TABLE drozd.porto_ndvi AS
WITH r AS (
    SELECT a.rid, ST_Clip(a.rast, b.geom, true) AS rast
    FROM rasters.landsat8 AS a, vectors.porto_parishes AS b
    WHERE b.municipality ILIKE 'porto'
      AND ST_Intersects(b.geom, a.rast)
)
SELECT
    r.rid,
    ST_MapAlgebra(
        r.rast, 1,
        r.rast, 4,
        '([rast2.val] - [rast1.val]) / ([rast2.val] + [rast1.val])::float',
        '32BF'
    ) AS rast
FROM r;
