--Wypisz nazwy i obwody 2 budynków o największej powierzchni. 
SELECT name, ST_PERIMETER(geometry) as perimeter
FROM buildings
ORDER BY ST_AREA(geometry) desc
LIMIT 2;