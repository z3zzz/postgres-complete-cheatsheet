SELECT
  *
FROM
  photos 
  FULL JOIN users ON photos.user_id = users.id

