SELECT name, weight, GREATEST(30, weight * 2) AS shipping_fee
FROM products;
