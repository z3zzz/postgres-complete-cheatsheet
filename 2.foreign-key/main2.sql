SELECT 
  *
FROM
  photos
WHERE
  user_id = 4;

SELECT 
  url, username
FROM
  photos
JOIN
  users ON users.id = photos.user_id
WHERE
  user_id = 4;

