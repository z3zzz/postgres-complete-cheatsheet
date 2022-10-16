-- AS a 같은 alias 필수 
SELECT * 
FROM (
  SELECT name, price / weight AS price_weight_ratio
  FROM products
) AS a
WHERE price_weight_ratio > 100;

SELECT * 
FROM (
  SELECT MAX(price)
  FROM products
) AS a;


SELECT AVG(order_count)
FROM (
  SELECT user_id, COUNT(*) AS order_count
  FROM orders
  GROUP BY user_id
) AS o

