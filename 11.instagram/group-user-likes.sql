SELECT username, COUNT(*)
FROM users
LEFT JOIN likes ON users.id = likes.user_id
GROUP BY users.id
