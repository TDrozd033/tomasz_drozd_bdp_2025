--Wypisz nazwy i pola powierzchni wszystkich poligonów w warstwie budynki.
--Wyniki posortuj alfabetycznie. 

SELECT name, ST_Area(geometry) as area
FROM buildings
ORDER BY name ASC;