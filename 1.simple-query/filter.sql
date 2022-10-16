SELECT 
  name, area
FROM
  cities
WHERE
  area > 4000;

-----------------------------
SELECT 
  name, area
FROM
  cities
WHERE
  area BETWEEN 2000 AND 4000;

-----------------------------
SELECT 
  name, area
FROM
  cities
WHERE
  name IN ('Delhi', 'Shanghai');

-----------------------------
SELECT 
  name, area
FROM
  cities
WHERE
  name NOT IN ('Delhi', 'Shanghai');

-----------------------------
SELECT 
  name, area
FROM
  cities
WHERE
  area NOT IN (2240, 4015);

-----------------------------
SELECT 
  name, area
FROM
  cities
WHERE
  area NOT IN (2240, 4015) 
  AND name = 'Delhi';

-----------------------------
SELECT 
  name, area
FROM
  cities
WHERE
  area NOT IN (2240, 4015) 
  OR name = 'Delhi'
  OR name = 'Japan';

-----------------------------
SELECT 
  name, 
  population / area AS population_density
FROM
  cities
WHERE
  population / area > 6000;
