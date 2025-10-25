--Znajdź budynki, które zostały wybudowane lub wyremontowane na przestrzeni roku (zmiana
--pomiędzy 2018 a 2019
SELECT * FROM t2019_kar_buildings t9
LEFT JOIN t2018_kar_buildings t8 ON t9.geom = t8.geom
WHERE t8.geom IS NULL;