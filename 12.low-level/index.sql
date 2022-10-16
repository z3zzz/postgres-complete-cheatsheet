---- 인덱스 생성
-- CREATE INDEX users_username_idx ON users (username) 으로 이름 직접 지어도 되지만
-- 굳이 할 필요는 없다.
CREATE INDEX ON users (username);

---- 인덱스 삭제
-- DROP INDEX users_username_idx;

---- 벤치마킹
-- INDEX 없을 시 2~3ms, 있을 시 0.05~0.1ms
-- EXPLAIN ANALYZE SELECT *
-- FROM users
-- WHERE username = 'Emil30';

---- 인덱스에 쓰인 용량
-- SELECT pg_size_pretty(pg_relation_size('users_username_idx'));

---- 모든 인덱스 출력
-- pg_class는 db의 object 모음
SELECT relname, relkind
FROM pg_class
WHERE relkind = 'i'; -- i 는 index
