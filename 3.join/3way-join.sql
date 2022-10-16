SELECT
  url, contents, username
FROM
  comments
JOIN photos ON comments.photo_id = photos.id
JOIN users ON users.id = comments.user_id AND users.id = photos.user_id;

-- 위처럼 JOIN 에 AND로 조건 추가해도 되고,
-- WHERE로 조건 추가해도 된다.

