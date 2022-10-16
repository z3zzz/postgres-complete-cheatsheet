CREATE OR REPLACE VIEW tags AS (
  SELECT id, created_at, post_id, user_id, 'photo-tag' AS type 
  FROM photo_tags
  
  UNION ALL

  SELECT id, created_at, post_id, user_id, 'caption-tag' AS type 
  FROM caption_tags
);

SELECT users.username, COUNT(*)
FROM users
JOIN tags ON users.id = tags.user_id
GROUP BY users.id
ORDER BY COUNT(*) DESC
LIMIT 10;

DROP VIEW tags;
