SELECT
  *
FROM
  photos 
  LEFT OUTER JOIN users ON photos.user_id = users.id

