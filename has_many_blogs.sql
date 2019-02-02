CREATE user has_many_user;
CREATE DATABASE has_many_blogs WITH OWNER has_many_user;

DROP TABLE IF EXISTS users;
CREATE TABLE users(
  id serial NOT NULL,
  username varchar(90) NOT NULL,
  first_name varchar(90) default NULL,
  last_name varchar(90) default NULL,
  created_at timestamp NOT NULL default now(),
  updated_at timestamp NOT NULL default now()
);

DROP TABLE IF EXISTS posts;
CREATE TABLE posts(
  id serial NOT NULL,
  title varchar(180) default NULL,
  url varchar(510) default NULL,
  content text default NULL,
  created_at timestamp NOT NULL default now(),
  updated_at timestamp NOT NULL default now()
);

DROP TABLE IF EXISTS comments;
CREATE TABLE comments(
  id serial NOT NULL,
  body varchar(510) default NULL,
  created_at timestamp NOT NULL default now(),
  updated_at timestamp NOT NULL default now()
);

\i scripts/blog_data.sql;
-- \i ./joins.sql;
