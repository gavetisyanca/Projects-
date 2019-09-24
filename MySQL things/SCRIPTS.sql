SHOW DATABASES();

--CREATING DATABASE

CREATE DATABASE CATS;
USE CATS;
SELECT DATABASE(); 

--CREATING TABLES
CREATE TABLE cats
(
	name VARCHAR(100),
    age int
);
SHOW TABLES;

SHOW COLUMNS FROM CATS;

-- DELETING TABLES 
DROP TABLE CATS;


# ADDING DATA INTO TABLES 

INSERT INTO 	cats 
			(name, age)
	VALUES 
			("jetson", 8);

INSERT INTO  cats 
			(name, age)
	VALUES 
			("jetson", 8),
			("jacob", 2),
			("adam", 4);


SELECT * FROM cats; # checking what is inside the table

# People challenge


CREATE DATABASE people;
USE people;
CREATE TABLE peoples 
	(
		first_name VARCHAR(50),
		last_name VARCHAR(50),
		age INT
	);
INSERT INTO peoples 
			(first_name, last_name, age) 
		VALUES 
			("Tina", "Belchner", 13);
INSERT INTO peoples 
			(last_name, first_name, age) 
		VALUES 
			("Belchner", "Bob", 42);
INSERT INTO peoples 
			(first_name, last_name, age) 
		VALUES 
			
			("Linda", "Belchner", 45),
			("Phillip", "Frond", 38),
			("Calvin", "Fisherdoer", 79);

-- CODE: NULL and NOT NULL
-- NULL and NOT NULL Code
Try inserting a cat without an age:

INSERT INTO cats(name) VALUES('Alabama'); 

SELECT * FROM cats; 

Try inserting a nameless and ageless cat:

INSERT INTO cats() VALUES(); 


-- Define a new cats2 table with NOT NULL constraints:



CREATE TABLE cats2
  (
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL
  );
DESC cats2; 

Now try inserting an ageless cat:

INSERT INTO cats2(name) VALUES('Texas'); 

View the new warnings:

SHOW WARNINGS; 

SELECT * FROM cats2; 

Do the same for a nameless cat:

INSERT INTO cats2(age) VALUES(7); 

SHOW WARNINGS; 

--  DEFAULT VALUES 
CREATE TABLE cats3 
(
name VARCHAR (100) DEFAULT 'No name provided',
age INT DEFAULT 99
);
INSERT INTO cat3 (age) VALUES (13);

-- CODE: Setting Default Values
-- CODE: Setting Default Values 
-- Define a table with a DEFAULT name specified:

CREATE TABLE cats3
  (
    name VARCHAR(20) DEFAULT 'no name provided',
    age INT DEFAULT 99
  );
Notice the change when you describe the table:

DESC cats3; 

Insert a cat without a name:

INSERT INTO cats3(age) VALUES(13); 

Or a nameless, ageless cat:

INSERT INTO cats3() VALUES(); 

Combine NOT NULL and DEFAULT:

CREATE TABLE cats4
  (
    name VARCHAR(20) NOT NULL DEFAULT 'unnamed',
    age INT NOT NULL DEFAULT 99
  );
  
Notice The Difference:

INSERT INTO cats() VALUES();
 
SELECT * FROM cats;
 
INSERT INTO cats3() VALUES();
 
SELECT * FROM cats3;
 
INSERT INTO cats3(name, age) VALUES('Montana', NULL);
 
SELECT * FROM cats3;
 
INSERT INTO cats4(name, age) VALUES('Cali', NULL);

-- Primary Key is a unique identifier no duplicate entry allowed or has
-- to have separate id number
CREATE TABLE unique_cats

(cat_id INT NOT NULL,
name VARCHAR(100),
age INT,
PRIMARY KEY (cat_id));
-- auto increment is used in order to avoid typing manually each id identifier
CREATE TABLE unique_cats2

(cat_id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(100),
age INT,
PRIMARY KEY (cat_id));

--  DEFINING EMPLOYEE TABLE
CREATE DATABASE employee; 
USE employee;


CREATE TABLE employees 
(
	cat_id INT NOT NULL AUTO_INCREMENT,
	last_name VARCHAR(100) NOT NULL,
	first_name VARCHAR(100) NOT NULL,
	middle_name VARCHAR(100),
	age INT NOT NULL,
	current_status VARCHAR(100) NOT NULL DEFAULT 'employed',
	PRIMARY KEY (cat_id)
);

INSERT INTO employees 
(
	first_name,
	last_name,
	age
)
VALUES 
("LEondra", "Morales", 45);

