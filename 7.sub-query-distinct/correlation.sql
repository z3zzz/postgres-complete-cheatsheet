SELECT name, department, price
FROM products as p1
WHERE p1.price = (
  SELECT MAX(price)
  FROM products as p2
  WHERE p2.department = p1.department
);

SELECT name, price, (
  SELECT COUNT(*)
  FROM orders
  WHERE orders.product_id = p.id
) AS num_orders
FROM products as p;

