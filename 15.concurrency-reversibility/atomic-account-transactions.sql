CREATE TABLE IF NOT EXISTS accounts (
  id SERIAL PRIMARY KEY,
  name VARCHAR(20) NOT NULL,
  balance INTEGER NOT NULL
);

INSERT INTO accounts (name, balance)
VALUES
  ('Gia', 100),
  ('Alyson', 100);

---- Atomic 화 (정확히는 isolated buffer가 됨)
BEGIN;
  UPDATE accounts 
  SET balance = balance - 50 
  WHERE name = 'Alyson';

  UPDATE accounts 
  SET balance = balance + 50 
  WHERE name = 'Gia';
COMMIT;
