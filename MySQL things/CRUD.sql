-- CRUD 
-- CREATE
-- READ
-- UPDATE 
-- DELETE 

-- CREATE

CREATE TABLE CATS
(
cat_id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(100),
breed VARCHAR(100),
age INT,
PRIMARY KEY(cat_id)

); 

INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);

-- READ
SELECT * FROM CATS;
SELECT name, age FROM CATS;
-- WHERE clause

-- CODE: Select Challenges Solution
SELECT cat_id FROM cats; 

SELECT name, breed FROM cats; 

SELECT name, age FROM cats WHERE breed='Tabby'; 

SELECT cat_id, age FROM cats WHERE cat_id=age; 

SELECT * FROM cats WHERE cat_id=age; 
-- ALIASES
SELECT CAT_ID AS "ID", BREED AS "KITTY BREED" FROM CATS;
-- UPDATE
UPDATE cats SET breed = "Shorthair"
WHERE breed = "Tabby";
UPDATE cats SET age = 14
WHERE name = "Misty";

-- DELETE 
DELETE FROM cats WHERE name = "Egg";
-- before deleting select 
SELECT * FROM cats WHERE name = "Egg";
DELETE FROM cats; # deletes the actual content in the table but not the table itself


-- SHIRTS DATABASE EXERCISE 
CREATE DATABASE shirts_db;
CREATE TABLE shirts 
( cat_id INT NOT NULL AUTO_INCREMENT,
	article VARCHAR(100),
	color VARCHAR(100),
	shirt_size VARCHAR(100),
	last_worn INT,
	PRIMARY KEY(cat_id)
	);

INSERT INTO shirts (article, color, shirt_size, last_worn) VALUES

('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15),
("polo shirt","purple", "M", 50)

SELECT article, color FROM shirts;

SELECT article, color, shirt_size, last_worn FROM shirts WHERE shirt_size = "M";
SELECT * FROM shirts WHERE article = "polo shirt";
UPDATE shirts SET shirt_size = "L" WHERE article = "polo shirt";
UPDATE shirts SET last_worn = 0 WHERE last_worn = 15; 
UPDATE shirts SET color = "off white", shirt_size = "XS" WHERE color = "white"; 
DELETE FROM shirts WHERE last_worn = 200;
DELETE FROM shirts WHERE article = "tank top";
DELETE FROM shirts;
DROP table shirts;