-- planning 
EXPLAIN SELECT username, contents
FROM users
JOIN comments ON comments.user_id = users.id
WHERE username = 'Alyson14';

-- planning & executing
EXPLAIN ANALYZE SELECT username, contents
FROM users
JOIN comments ON comments.user_id = users.id
WHERE username = 'Alyson14';

-- result row prediction (미리 여러 avg 구해 놓음)
SELECT * 
FROM pg_stats
WHERE tablename = 'users'
LIMIT 1;
