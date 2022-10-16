SELECT users.username, COUNT(*)
FROM (
  -- 아래 쿼리가 많이 쓰인다면, 매크로(=VIEW)를 만드는 것이 좋다.
  SELECT user_id FROM caption_tags
  UNION ALL
  SELECT user_id FROM photo_tags
) AS tags
JOIN users ON users.id = tags.user_id
GROUP BY users.id
ORDER BY COUNT(*) DESC
LIMIT 10;
