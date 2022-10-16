-- SELECT에 서브쿼리 쓰려면, 1x1 scalar value가 서브쿼리 결과물이어야 한다.

SELECT name, price, (
  SELECT MAX(price)
  FROM products
)
FROM products 
WHERE price > 876;

SELECT name, price, (
  SELECT price
  FROM products
  WHERE id = 3
) AS id_3_price
FROM products 
WHERE price > 876;

SELECT name, price, price / (
  SELECT MAX(price) 
  FROM products
) AS price_ratio
FROM products;


-- FROM 없는 SELECT
-- 빠르게 계산만 하고 싶을 때 유용함.
SELECT (
  SELECT MAX(price) FROM products
) / (
  SELECT MIN(price) FROM products
) AS max_min_ratio;
