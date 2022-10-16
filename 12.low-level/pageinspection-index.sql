---- 익스텐션 추가
-- CREATE EXTENSION pageinspect;

---- bt = btree, metap = metapage
-- SELECT *
-- FROM bt_metap('users_username_idx');

---- 인덱스 hashmap (어느 offset에 어느 데이터(username 등)가 있는지)
SELECT *
FROM bt_page_items('users_username_idx', 3);

---- table의 숨겨진 column인 ctid 
-- SELECT ctid, * 
-- FROM users
-- WHERE username LIKE '%liyah%';
