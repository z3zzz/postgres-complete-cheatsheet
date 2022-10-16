SELECT 
  url, contents
FROM
  photos AS p
JOIN
  comments AS c 
ON
  p.user_id = c.user_id;  
