SELECT 
  user_id, COUNT(*) AS num_comments_created
FROM
  comments
GROUP BY 
  user_id;

SELECT 
  COUNT(*) 
FROM
  comments;

