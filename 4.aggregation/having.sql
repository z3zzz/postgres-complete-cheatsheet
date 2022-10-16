-- comment가 2개 초과, photo_id 가 3 미만인 photo 찾기
SELECT photo_id, COUNT(*)
FROM comments 
JOIN photos ON comments.photo_id = photos.id
WHERE photo_id < 3
GROUP BY photo_id
HAVING COUNT(*) > 2;

-- photo_id 가 1 혹은 2인 photo에, 합쳐서 comment를 2개 이상 한 user 찾기
SELECT users.id, COUNT(*)
FROM users
JOIN comments ON users.id = comments.user_id
WHERE comments.photo_id IN (1, 2)
GROUP BY users.id
HAVING COUNT(*) >= 2;
