-- Wyznacz najkrótszą odległość między budynkiem BuildingC a punktem K. 
SELECT ST_Distance(b.geometry, p.geometry) AS C_to_K_dist
FROM buildings b, poi p
WHERE p.name = 'K'
AND b.name = 'BuildingC';