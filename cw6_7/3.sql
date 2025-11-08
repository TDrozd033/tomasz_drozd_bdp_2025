CREATE INDEX idx_intersects_rast_gist
ON drozd.intersects
USING gist (ST_ConvexHull(rast));
