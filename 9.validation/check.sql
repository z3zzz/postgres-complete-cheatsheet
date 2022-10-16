-- 값 범위 check
ALTER TABLE products
ADD CHECK (price > 10);

-- 값 특정값 이내 check
CREATE TABLE cars (
	id SERIAL PRIMARY KEY,
	name VARCHAR(20),
	color VARCHAR(20) CHECK (color IN ('red', 'green', 'blue'))
);

-- column 값들 간 상하관계 check
create table orders (
	id serial primary key,
	name varchar(40) not null,
	created_at timestamp not null,
	est_delivery timestamp not null,
	check (created_at < est_delivery)
);

insert into orders (name, created_at, est_delivery)
values ('shirt', '2000-NOV-20 01:00 AM', '1999-NOV-20- 01:00 AM');
