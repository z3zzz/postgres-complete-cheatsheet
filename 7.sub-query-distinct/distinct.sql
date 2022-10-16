-- department 가 유니크하게 됨
SELECT DISTINCT department
FROM products;

-- GROUP BY와 유사한 원리의 DISTINCT
SELECT COUNT(DISTINCT department)
FROM products;

-- department, name 페어는 유니크하게 됨.
SELECT DISTINCT department, name
FROM products;

-- 2개 이상 column의 DISTINCT에 대한 COUNT는 에러로 처리됨.
SELECT COUNT(DISTINCT department, name)
FROM products;
