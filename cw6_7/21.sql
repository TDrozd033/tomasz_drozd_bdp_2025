SELECT b.name,
       ST_Value(a.rast, (ST_Dump(b.geom)).geom)
FROM rasters.dem AS a,
     vectors.places AS b
WHERE ST_Intersects(a.rast, b.geom)
ORDER BY b.name;
