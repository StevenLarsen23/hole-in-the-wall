DELETE FROM posts
WHERE id = $1;

SELECT * FROM posts
ORDER BY id;