DROP DATABASE IF EXISTS has_many_blogs;
DROP user IF EXISTS has_many_user;

CREATE user has_many_user;
CREATE DATABASE has_many_blogs WITH OWNER has_many_user;

\connect has_many_blogs;

DROP TABLE IF EXISTS users;
CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  username varchar(90) NOT NULL,
  first_name varchar(90) default NULL,
  last_name varchar(90) default NULL,
  created_at TIMESTAMP WITH TIME ZONE default now(),
  updated_at TIMESTAMP WITH TIME ZONE default now()
);

DROP TABLE IF EXISTS posts;
CREATE TABLE posts(
  id SERIAL PRIMARY KEY,
  title varchar(180) default NULL,
  url varchar(510) default NULL,
  content text default NULL,
  created_at TIMESTAMP WITH TIME ZONE default now(),
  updated_at TIMESTAMP WITH TIME ZONE default now(),
  user_id INTEGER NOT NULL REFERENCES users(id)
);

DROP TABLE IF EXISTS comments;
CREATE TABLE comments(
  id SERIAL PRIMARY KEY,
  body varchar(510) default NULL,
  created_at TIMESTAMP WITH TIME ZONE default now(),
  updated_at TIMESTAMP WITH TIME ZONE default now(),
  user_id INTEGER NOT NULL REFERENCES users(id),
  post_id INTEGER NOT NULL REFERENCES posts(id)
);

\i scripts/blog_data.sql;
