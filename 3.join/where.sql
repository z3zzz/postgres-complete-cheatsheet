SELECT
  url, contents
FROM
  comments
JOIN photos ON comments.photo_id = photos.id
WHERE comments.user_id = photos.user_id;

