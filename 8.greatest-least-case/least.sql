SELECT name, price, LEAST(price * 0.5, 400) AS sale_price 
FROM products;
