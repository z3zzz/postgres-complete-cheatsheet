-- DEFAULT value 설정
ALTER TABLE products
ALTER COLUMN price 
SET DEFAULT 9999;
 
-- 아래 에러가 됨
INSERT INTO products (name, department, weight)
VALUES ('hello', 'clothes', 30);
