-- Wyznacz całkowitą długość dróg w analizowanym mieście. 

SELECT SUM(ST_LENGTH(geometry)) AS total_length
FROM roads;