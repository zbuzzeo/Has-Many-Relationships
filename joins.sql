SELECT * FROM users;

SELECT * FROM posts
WHERE user_id = 100;

SELECT 
posts.id, posts.user_id, posts.title, posts.url, posts.content, posts.created_at, posts.updated_at, users.first_name, users.last_name
FROM posts INNER JOIN users ON users.id = posts.user_id 
WHERE user_id = 200;

SELECT posts.id, posts.user_id, posts.title, posts.url, posts.content, posts.created_at, posts.updated_at,users.username
FROM posts INNER JOIN users ON users.id = posts.user_id
WHERE user.first_name = 'NORENE' AND user.last_name 'SCHMITT';
