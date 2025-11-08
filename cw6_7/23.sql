CREATE INDEX idx_tpi30_rast_gist
ON drozd.tpi30
USING gist (ST_ConvexHull(rast));
