CREATE TABLE drozd.landsat_nir AS
SELECT rid, ST_Band(rast, 4) AS rast
FROM rasters.landsat8;
