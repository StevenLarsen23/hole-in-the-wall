INSERT INTO posts
(location_id, name, img, content)
VALUES
($1, $2, $3, $4)
RETURNING*;