-- Unique 설정 추가
ALTER TABLE products
ADD UNIQUE (name);

-- multi-column unique
ALTER TABLE products
ADD UNIQUE (name, department);
