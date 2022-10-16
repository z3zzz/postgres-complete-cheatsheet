SELECT *
FROM orders
WHERE product_id IN (
  SELECT id
  FROM products
  WHERE price / weight > 200
);

SELECT name
FROM products
WHERE price > (
  SELECT AVG(price) 
  FROM products
);

SELECT name
FROM products
WHERE department NOT IN (
  SELECT department
  FROM products
  WHERE price < 100
);

-- 아래 방식 대신에  > ALL 쓸 수 있다.
SELECT name, department, price
FROM products
WHERE price > (
  SELECT MAX(price)
  FROM products
  WHERE department = 'Industrial'
);

SELECT name, department, price
FROM products
WHERE price > ALL (
  SELECT price
  FROM products
  WHERE department = 'Industrial'
);

SELECT name, department, price
FROM products
WHERE price > SOME (
  SELECT price
  FROM products
  WHERE department = 'Industrial'
);

SELECT name, department, price
FROM products
WHERE price <> ALL (
  SELECT price
  FROM products
  WHERE department = 'Industrial'
);
