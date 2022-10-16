SELECT
  *
FROM
  photos 
  RIGHT JOIN users ON photos.user_id = users.id

