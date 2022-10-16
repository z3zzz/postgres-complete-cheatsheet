-- 물론 이런 CASE 문은 보통 코드 단에서 처리하기 때문에
-- SQL 에서는 별로 쓰지는 않는다.
SELECT 
  name,
  price,
  CASE
    WHEN price > 600 THEN 'high'
    WHEN price > 300 THEN 'medium'
    ELSE 'cheap'
  END
FROM products;
