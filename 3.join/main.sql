SELECT
  contents,
  username
FROM
  comments
  JOIN users ON comments.user_id = users.id
WHERE
  photo_id = 3;

SELECT
  *
FROM
  comments
  JOIN users ON comments.user_id = users.id
WHERE
  photo_id = 3;

SELECT
  COUNT(contents)
FROM
  comments
WHERE
  photo_id = 10;
