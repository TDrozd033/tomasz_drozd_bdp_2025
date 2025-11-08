CREATE INDEX idx_porto_ndvi_rast_gist ON drozd.porto_ndvi
USING gist (ST_ConvexHull(rast));

SELECT AddRasterConstraints('drozd'::name, 'porto_ndvi'::name, 'rast'::name);
