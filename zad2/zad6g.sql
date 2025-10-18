--Wybierz te budynki, których centroid (ST_Centroid) znajduje się powyżej drogi
--o nazwie RoadX.

SELECT b.name
FROM buildings b, roads r
WHERE r.name = 'RoadX'
 AND ST_Y(ST_Centroid(b.geometry)) > ST_Y(ST_Centroid(r.geometry))