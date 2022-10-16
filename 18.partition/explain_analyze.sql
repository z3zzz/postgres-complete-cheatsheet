SELECT 1;
EXPLAIN ANALYZE
  SELECT * FROM customers_full
  WHERE age = 60;

EXPLAIN ANALYZE
  SELECT * FROM customers
  WHERE age = 60;

SELECT 2;
EXPLAIN ANALYZE
  SELECT * FROM customers_full
  WHERE age < 20;

EXPLAIN ANALYZE
  SELECT * FROM customers
  WHERE age < 20;

SELECT 3;
EXPLAIN ANALYZE
  SELECT * FROM customers_full
  WHERE age < 30;

EXPLAIN ANALYZE
  SELECT * FROM customers
  WHERE age < 30;

SELECT 4;
EXPLAIN ANALYZE
  SELECT * FROM customers_full
  WHERE age > 40 AND age < 50;

EXPLAIN ANALYZE
  SELECT * FROM customers
  WHERE age > 40 AND age < 50;

SELECT 5;
EXPLAIN ANALYZE
  SELECT * FROM customers_full
  WHERE age > 55 AND age < 65;

EXPLAIN ANALYZE
  SELECT * FROM customers
  WHERE age > 55 AND age < 65;

SELECT 6;
EXPLAIN ANALYZE
  SELECT * FROM customers_full
  WHERE age > 0 AND age < 100;

EXPLAIN ANALYZE
  SELECT * FROM customers
  WHERE age > 0 AND age < 100;
