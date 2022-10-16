SELECT *
FROM products
ORDER BY price DESC
LIMIT 4;

SELECT *, price / weight
FROM products
ORDER BY price / weight DESC
LIMIT 4;


-- Remove duplicates -> default
(
  SELECT *
  FROM products
  ORDER BY price DESC
  LIMIT 4
)
UNION
(
  SELECT *
  FROM products
  ORDER BY price / weight DESC
  LIMIT 4
);

-- Don't remove duplicates -> ALL
(
  SELECT *
  FROM products
  ORDER BY price DESC
  LIMIT 4
)
UNION ALL
(
  SELECT *
  FROM products
  ORDER BY price / weight DESC
  LIMIT 4
);
