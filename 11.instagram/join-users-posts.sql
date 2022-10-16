SELECT users.id as user_id, username, caption
FROM users
JOIN posts ON users.id = posts.user_id
WHERE users.id = 200
