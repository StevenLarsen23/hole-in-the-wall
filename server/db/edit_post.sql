UPDATE posts
SET name = $2, img = $3, content = $4
WHERE id = $1;

SELECT * FROM posts
ORDER BY id;