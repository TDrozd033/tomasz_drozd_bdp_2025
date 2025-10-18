--Na podstawie poniższej mapy utwórz trzy tabele: buildings (id, geometry, name), roads
--(id, geometry, name), poi (id, geometry, name)

CREATE TABLE IF NOT EXISTS buildings
(
	id SERIAL PRIMARY KEY,
	geometry geometry,
	name VARCHAR(40)

);

CREATE TABLE IF NOT EXISTS roads(
	id SERIAL PRIMARY KEY,
	geometry geometry,
	name VARCHAR(40)
	
);


CREATE TABLE IF NOT EXISTS poi(
	id SERIAL PRIMARY KEY,
	geometry geometry,
	name VARCHAR(40)
	
);

