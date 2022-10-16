SELECT
  c.id AS comment_id, 
  users.id AS user_id
FROM
  comments AS c
  JOIN users ON c.user_id = users.id
WHERE
  photo_id = 3;

SELECT
  comments.id AS comment_id, 
  users.id AS user_id
FROM
  comments
  JOIN users ON comments.user_id = users.id
WHERE
  photo_id = 3;

