CREATE MATERIALIZED VIEW weekly_views AS (
  SELECT 
    date_trunc('week', COALESCE(posts.created_at, comments.created_at)) AS week,
    COUNT(posts.id) AS num_post_likes,
    COUNT(comments.id) AS num_comment_likes
  FROM likes
  LEFT JOIN posts ON likes.post_id = posts.id
  LEFT JOIN comments ON likes.comment_id = comments.id
  GROUP BY week
);

REFRESH MATERIALIZED VIEW weekly_views;

SELECT * FROM weekly_views
ORDER BY week;
