CREATE TABLE location
id SERIAL PRIMARY KEY,
state_name VARCHAR(100),
state_img TEXT 

CREATE TABLE posts
id SERIAL PRIMARY KEY,
post_id INT REFERENCES location (id),
post_title VARCHAR(45) NOT NULL,
post_img TEXT,
post_content TEXT NOT NULL

-- These tables are in SQL Tabs and can be accessed by using our connection string from Heroku 

-- Queries--
-- not all of our queries, but something to get started, copy/paste these when you want them
-- all locations query
SELECT * FROM location;

-- all posts query
SELECT * FROM posts;

-- one location query
SELECT * FROM location;
WHERE id = $1

-- one post query
SELECT * FROM posts;
WHERE id = $1

-- add post query
INSERT INTO posts
(post_id, post_title, post_img, post_content) 
VALUES 
($1, $2, $3, $4);