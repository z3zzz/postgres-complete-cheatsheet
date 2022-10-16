-- 많이 쓰지는 않는다 JOIN 서브쿼리는
SELECT * 
FROM users
JOIN (
  SELECT *
  FROM orders
  WHERE product_id = 3
) AS o
ON o.user_id = users.id;

