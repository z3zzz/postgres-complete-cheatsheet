-- Cleanup 
DROP TABLE IF EXISTS 
  customers_full, customers, customers_0_19, customers_20_39, 
  customers_40_59, customers_60_79, customers_80_;

-- Create 1 full (without partition) + 1 main + 5 partition tables
CREATE TABLE 
  customers_full (id SERIAL NOT NULL, age INTEGER NOT NULL);

CREATE TABLE 
  customers (id SERIAL NOT NULL, age INTEGER NOT NULL) 
  PARTITION BY range (age);

CREATE TABLE
  customers_0_19 (LIKE customers INCLUDING INDEXES);
CREATE TABLE
  customers_20_39 (LIKE customers INCLUDING INDEXES);
CREATE TABLE
  customers_40_59 (LIKE customers INCLUDING INDEXES);
CREATE TABLE
  customers_60_79 (LIKE customers INCLUDING INDEXES);
CREATE TABLE
  customers_80_ (LIKE customers INCLUDING INDEXES);

-- Attach partition tables on main table
ALTER TABLE customers
  ATTACH PARTITION customers_0_19 
  FOR VALUES FROM (0) TO (20);

ALTER TABLE customers
  ATTACH PARTITION customers_20_39
  FOR VALUES FROM (20) TO (40);

ALTER TABLE customers
  ATTACH PARTITION customers_40_59 
  FOR VALUES FROM (40) TO (60);

ALTER TABLE customers
  ATTACH PARTITION customers_60_79
  FOR VALUES FROM (60) TO (80);

ALTER TABLE customers
  ATTACH PARTITION customers_80_
  FOR VALUES FROM (80) TO (200);

-- Insert Data
INSERT INTO customers_full (age)
  SELECT FLOOR(RANDOM() * 110) 
  FROM GENERATE_SERIES(0, 10000000); -- 10 mil rows

INSERT INTO customers (age)
  SELECT FLOOR(RANDOM() * 110) 
  FROM GENERATE_SERIES(0, 10000000); -- 10 mil rows

-- Show table info
\d customers_full;
\d customers;
