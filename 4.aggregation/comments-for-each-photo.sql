SELECT
  photos.id, COUNT(*) AS num_comments
FROM
  photos
JOIN
  comments ON photos.id = comments.photo_id
GROUP BY
  photos.id;
  

SELECT
  photo_id, COUNT(*)
FROM
  comments
GROUP BY
  photo_id;
