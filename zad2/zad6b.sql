-- Wypisz geometrię (WKT), pole powierzchni oraz obwód poligonu reprezentującego
-- budynek o nazwie BuildingA. 

SELECT ST_AsText(geometry) as geometry, ST_Area(geometry) as area, ST_Perimeter(geometry) as perimeter 
FROM buildings
WHERE name = 'BuildingA'