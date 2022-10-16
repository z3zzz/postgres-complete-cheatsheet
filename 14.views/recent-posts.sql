CREATE OR REPLACE VIEW recent_posts AS (
  SELECT * 
  FROM posts
  ORDER BY created_at DESC
  LIMIT 10
);

SELECT recent_posts.id AS post_id, COUNT(*) AS n_comments
FROM recent_posts
JOIN comments ON comments.post_id = recent_posts.id
GROUP BY recent_posts.id
ORDER BY COUNT(*) DESC;

DROP VIEW recent_posts;
