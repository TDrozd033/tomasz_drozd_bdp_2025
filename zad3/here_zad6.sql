--Znajdź wszystkie skrzyżowania, które znajdują się w odległości 200 m od linii zbudowanej
--z punktów w tabeli ‘input_points’. Wykorzystaj tabelę T2019_STREET_NODE. Dokonaj
--reprojekcji geometrii, aby była zgodna z resztą tabel.

WITH linia AS (
    SELECT ST_MakeLine(geom ORDER BY id) AS geom
    FROM input_points
)

SELECT n.*
FROM T2019_KAR_STREET_NODE n, linia l
WHERE ST_DWithin(
    ST_Transform(n.geom, 3068),  
    l.geom,
    200
);