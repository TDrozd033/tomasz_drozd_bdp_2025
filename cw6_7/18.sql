SELECT ST_SummaryStats(ST_Union(a.rast))
FROM drozd.paranhos_dem AS a;
