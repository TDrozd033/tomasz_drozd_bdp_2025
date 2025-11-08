CREATE TABLE drozd.paranhos_slope AS
SELECT a.rid, ST_Slope(a.rast, 1, '32BF', 'PERCENTAGE') AS rast
FROM drozd.paranhos_dem AS a;
