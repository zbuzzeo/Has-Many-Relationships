SELECT * FROM users;

SELECT * FROM posts
WHERE user_id = 100;

SELECT 
posts.id, posts.user_id, posts.title, posts.url, posts.content, posts.created_at, posts.updated_at, users.first_name, users.last_name
FROM posts INNER JOIN users ON users.id = posts.user_id 
WHERE user_id = 200;

SELECT posts.id, posts.user_id, posts.title, posts.url, posts.content, posts.created_at, posts.updated_at,users.username
FROM posts INNER JOIN users ON users.id = posts.user_id
WHERE users.first_name = 'Norene' AND users.last_name = 'Schmitt';

SELECT users.username FROM users INNER JOIN posts ON users.id = posts.user_id
WHERE posts.created_at > date '2015-01-01';
