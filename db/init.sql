CREATE TABLE location (
id SERIAL PRIMARY KEY,
state_name VARCHAR(100),
state_img TEXT
);


CREATE TABLE posts (
id SERIAL PRIMARY KEY,
location_id INT REFERENCES location(id),
name VARCHAR(100) NOT NULL,
img TEXT,
content TEXT NOT NULL
);

