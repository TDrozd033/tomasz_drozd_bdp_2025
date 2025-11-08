CREATE OR REPLACE FUNCTION drozd.ndvi(
    value double precision [] [] [],
    pos integer [] [],
    VARIADIC userargs text []
)
RETURNS double precision AS
$$
BEGIN
    RETURN (value [2][1][1] - value [1][1][1]) /
           (value [2][1][1] + value [1][1][1]);
END;
$$
LANGUAGE 'plpgsql' IMMUTABLE COST 1000;
