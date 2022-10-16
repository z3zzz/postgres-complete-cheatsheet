// Creating tables
Table users {
  id int [pk, increment] // auto-increment
  username varchar
}

Table comments {
  id int [pk, increment]
  contents varchar
  user_id int [ref: > users.id]
  post_id int [ref: > posts.id]
 }
 
Table posts {
  id int [pk, increment]
  title varchar
  user_id int [ref: > users.id]
 }
