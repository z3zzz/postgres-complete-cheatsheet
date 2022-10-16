-- Upper, Lower
SELECT
  CONCAT(UPPER(name), ', ', LOWER(country)) AS location 
FROM cities;

-- Concat
SELECT
  CONCAT(name, ', ', country) AS location 
FROM cities;

-- Join two strings
SELECT 
  name || ', ' || country AS joined_strings
FROM 
  cities;


