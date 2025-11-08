CREATE TABLE drozd.tpi30 AS
SELECT ST_TPI(a.rast, 1) AS rast
FROM rasters.dem AS a;
