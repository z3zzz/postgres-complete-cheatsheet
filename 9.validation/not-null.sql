-- 이미 null 이 table에 있다면, NOT NULL 설정을 못 함.
UPDATE products
SET price = 999999
WHERE price IS NULL;

-- NOT NULL validation 추가
ALTER TABLE products
ALTER COLUMN price 
SET NOT NULL;

-- 아래 에러가 됨
INSERT INTO products (name, department, weight)
VALUES ('hello', 'clothes', 30);
