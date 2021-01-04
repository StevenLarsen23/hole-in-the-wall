-- SELECT * FROM posts
-- WHERE id = $1;

SELECT posts.name, posts.img, posts.content, location.state_name
FROM posts
FULL OUTER JOIN location ON posts.location_id = location.id
WHERE posts.id = $1;