WITH t AS (
  SELECT ST_SummaryStats(ST_Union(a.rast)) AS stats
  FROM drozd.paranhos_dem AS a
)
SELECT (stats).min, (stats).max, (stats).mean FROM t;
