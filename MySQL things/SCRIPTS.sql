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


# CONCATENATING STRINGS



SELECT author_fname AS first, author_lname AS last, 
  CONCAT(author_fname, ' ', author_lname) AS full
FROM books;
# output: author_fname author_lname (space between them  ' ') 
 
SELECT author_fname AS first, author_lname AS last, 
  CONCAT(author_fname, ', ', author_lname) AS full
FROM books;
 
SELECT CONCAT(title, '-', author_fname, '-', author_lname) FROM books;
 
SELECT 
    CONCAT_WS(' - ', title, author_fname, author_lname) 
FROM books; # INSERT ' - ' between arguments that are passed(title, author_fname, author_lname)
# SUBSTRING CAN PRINT SOME PART OF THE STRING rather than the whole thing 
SELECT SUBSTR(title, 1, 10) AS 'short title' FROM books;
# 1, 10 means starting from the 1sr index - 10th index

SELECT CONCAT
    (
        SUBSTRING(title, 1, 10),
        '...'
    ) AS 'short title'
FROM books;


# REPLACE  replaces value to another one ex 

SELECT REPLACE("Hello World", "Hell", "!$@%");
# OUTPUT - !$@%o World

SELECT
    SUBSTRING(REPLACE(title, 'e', '3'), 1, 10) AS 'weird string'
FROM books;
# REVERSE 
SELECT REVERSE(author_lname) FROM BOOKS;
# CHAR_LENGTH -counts number of carachters in a string
SELECT author_lname, CHAR_LENGTH(author_lname) AS LENGTH FROM books;
# UPPER(), LOWER() changing the case of a string
SELECT UPPER('Hello World');
SELECT CONCAT('MY FAVORITE BOOK IS ', LOWER(title)) FROM books;

# UPPER only takes one argument and CONCAT takes two or 
# more arguments, so they can't be switched in that way. for ex:
# YOU CANNOT DO THIS: 
SELECT CONCAT(UPPER(author_fname, ' ', author_lname)) AS "full name in caps" 
FROM books;
# BUT YOU CAN DO THIS INSTEAD BY PASSING TO UPPER() only 1 argument
SELECT UPPER(CONCAT(author_fname, ' ', author_lname)) AS "full name in caps"
FROM books;

SELECT REVERSE(UPPER("Why does my cat looks at me with such hatred "));
SELECT REPLACE(CONCAT('I',' ', 'like', ' ', 'cats'), ' ', '-');
SELECT REPLACE(title,' ', '->') AS 'title' FROM BOOKS;
SELECT author_lname AS FORWARD, REVERSE(author_lname) AS REVERSE FROM BOOKS;
SELECT CONCAT(title, ' was released in ', released_year) AS BLURP FROM BOOKS;
SELECT title AS TITUL, CHAR_LENGTH(title) AS length FROM BOOKS;
SELECT CONCAT(SUBSTRING(title, 1, 10),'...') AS 'SHORT TITLE', 
CONCAT(author_fname, ' ', author_lname) AS 'AUTHOR',
CONCAT(stock_quantity, ' in stock ') AS 'quantity' FROM BOOKS;


-- DISCTINCT VALUE(gives Unique value )
SELECT DISTINCT author_lname FROM BOOKS;
 
SELECT DISTINCT author_lname FROM books;

SELECT DISTINCT CONCAT(author_fname,' ', author_lname) FROM books;
 
SELECT DISTINCT author_fname, author_lname FROM books;
# ORDER BY (orders the data)
SELECT author_lname FROM books ORDER BY author_lname;
SELECT author_lname FROM books ORDER BY author_lname DESC;
SELECT author_lname, title
FROM books ORDER BY 2;
SELECT author_fname, author_lname FROM books 
ORDER BY author_lname, author_fname;

# LIMIT (limits number of output) usually used with order by 
SELECT title FROM BOOKS LIMIT 4;
SELECT title, released_year FROM BOOKS ORDER BY released_year DESC LIMIT 5;
SELECT title, released_year 
FROM BOOKS ORDER BY released_year 
DESC LIMIT 5, 10; # 5 is the start point, 10 is number of rows 
# Like search terms 
SELECT title, author_fname FROM books WHERE author_fname LIKE '%da%';
-- searches something (word) that has 'da' in it. dowsn't matter 
-- in the beginning or at the end  
SELECT title, author_fname FROM books WHERE author_fname LIKE 'da%';
-- searches something (word) that starts with 'da'
SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '____';
-- searches number of characters - '_' - means 1 character 
(235)234-0987 LIKE '(___)___-____';
SELECT title FROM books WHERE title LIKE '%\%%' -- SEARCHES '%'
 
SELECT title FROM books WHERE title LIKE '%\_%' -- SEARCHES '_'

SELECT CONCAT(UPPER('MY FAVOURISTE AUTHOR IS'),' ', UPPER(AUTHOR_LNAME),'!')
AS 'YELL' FROM BOOKS ORDER BY author_lname;

# COUNT 
SELECT COUNT(*) FROM BOOKS; # counts every existing row
SELECT COUNT(DISTINCT author_fname, author_lname) FROM BOOKS;
SELECT COUNT(*) FROM BOOKS WHERE title LIKE '%the%';


# GROUP BY 
SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname;
 
SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname;
 
SELECT released_year FROM books;
 
SELECT released_year, COUNT(*) FROM books GROUP BY released_year;
 
SELECT CONCAT('In ', released_year, ' ', COUNT(*), ' book(s) released') AS year FROM books GROUP BY released_year;
# MIN and MAX
SELECT MIN(released_year) FROM BOOKS;
SELECT MAX(pages) FROM BOOKS;
# SUBQUERIES
SELECT title, pages FROM books 
WHERE pages = (SELECT Min(pages) 
                FROM books); 
# shorter and faster way the same thing 
SELECT * FROM books 
ORDER BY pages ASC LIMIT 1;

# MIN/MAX in conjunction with GROUP BY
SELECT author_fname, author_lname, MIN(released_year) FROM BOOKS 
GROUP BY author_fname, author_lname;

# FANCY SOLUTION USING ALIASES
SELECT
  CONCAT(author_fname, ' ', author_lname) AS author,
  MAX(pages) AS 'longest book'
FROM books
GROUP BY author_lname,
         author_fname;

# SUM FUNCTION 
SELECT SUM(pages) FROM BOOKS;
SELECT author_fname, author_lname, SUM(pages) FROM BOOKS GROUP BY author_lname, author_fname; 
# AVG - average FUNCTION 

SELECT title, AVG(stock_quantity), released_year FROM BOOKS GROUP BY released_year 
# EXERCISES
SELECT COUNT(title) FROM BOOKS;
SELECT COUNT(title), released_year FROM BOOKS GROUP BY released_year;
SELECT author_lname, author_fname, AVG(released_year) FROM BOOKS GROUP BY author_lname, author_fname;
SELECT CONCAT(author_fname, ' ', author_lname) AS 'full name' FROM BOOKS
WHERE pages = (SELECT MAX(pages) FROM BOOKS);
SELECT author_lname, author_fname FROM BOOKS ORDER BY pages ASC LIMIT 1;
SELECT released_year AS 'year', COUNT(title) AS '# book(s)', AVG(pages) AS 'average pages' FROM BOOKS 
GROUP BY released_year ORDER BY released_year;


# ------------------------------------------DATA TYPES-----------------------------------------

# VARCHAR vs CHAR

# CHAR has only fixed characters, whereas VARCHAR is NOT FIXED CHAR is faster than VARCHAR 
# CHAR lengths - (0 - 255) characters  Example of char can be used let's say State Abbreviation
# 2 characters (NY, CA, FL ...) YES/NO flags, SEX....

# NUMBERS 
# DECIMAL(m, n) m - total number of digits, n - number of digits after decimal for ex: DECIMAL(5,2) 
# can stroe 5 digit long number including numbers after decimal point. 2 represents number of digits after
# decimal point for ex. 444.56 

# (FLOATs and DOUBLES) vs DECIMAls(difference):
# decimals are more precise than flaots and doubles. However, floats and boubles occupy less space than decimals 
# floats - precise up to 7 digits, double is up to 15. SO if you need to be very pricise, use DECIMAL


# DATE, TIME and DATETIME

# 'DATE' - YYYY-MM-DD 
# 'TIME' - HH-MM-SS
# 'DATETIME' - YYYY-MM-DD HH-MM-SS

CREATE TABLE people (name VARCHAR(100), birthdate DATE, birthtime TIME, birthdt DATETIME);
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Toaster', CURDATE(), CURTIME(), NOW());


# FORMATTING DATES ! 

SELECT name, birthdate, DAY(birthdate) FROM people;
 
SELECT name, birthdate, DAYNAME(birthdate) FROM people;
 
SELECT name, birthdate, DAYOFWEEK(birthdate) FROM people;
 
SELECT name, birthdate, DAYOFYEAR(birthdate) FROM people;

SELECT CONCAT(MONTHNAME(birthdate), ' ', DAY(birthdate), ' ', YEAR(birthdate)) FROM people; # not as good as 
# using DATE_FORMAT()
 
SELECT DATE_FORMAT(birthdt, 'Was born on a %W') FROM people;
 
SELECT DATE_FORMAT(birthdt, '%m/%d/%Y') FROM people;
 
SELECT DATE_FORMAT(birthdt, '%m/%d/%Y at %h:%i') FROM people;

SELECT * FROM people;
# DATEDIFF()
 
SELECT DATEDIFF(NOW(), birthdate) FROM people;
 
SELECT name, birthdate, DATEDIFF(NOW(), birthdate) FROM people;
 
SELECT birthdt FROM people;
 
SELECT birthdt, DATE_ADD(birthdt, INTERVAL 1 MONTH) FROM people;
 
SELECT birthdt, DATE_ADD(birthdt, INTERVAL 10 SECOND) FROM people;
 
SELECT birthdt, DATE_ADD(birthdt, INTERVAL 3 QUARTER) FROM people;
 
SELECT birthdt, birthdt + INTERVAL 1 MONTH FROM people;
 
SELECT birthdt, birthdt - INTERVAL 5 MONTH FROM people;
 
SELECT birthdt, birthdt + INTERVAL 15 MONTH + INTERVAL 10 HOUR FROM people;


# TIMESTAMPS !!! ITS basically metadata about 'when was certain thing was created (table or row) in sql case'
# Withing sql format TIMESTAMP is also a DATA TYPE 
# TIMESTAMPS are almost the same as DATETIME with some exceptions:
# TIMESTAMP stores dates between the range of 1970 - 2038 
# DATETIME can have range from 1000 - 9999 .Thats why its smart to use TIMESTAMP when we are talking about 
# date and time when something was created . some record in database. thats why you don't need to go that far 
# also TIMESTAMP occupy waaaay less space in memory than DATETIME 

CREATE TABLE comments (content VARCHAR(100), created_at TIMESTAMP DEFAULT NOW());

INSERT INTO comments (content) VALUES ("what a silly look!!");
INSERT INTO comments (content) VALUES ("lol you are awesome, man!");

# This table is set to update timestamp everytime the comments get changed 
CREATE TABLE comments2 (content VARCHAR(100), 
						created_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP);

INSERT INTO comments2 (content) VALUES ("asfjashfjksaf!");

UPDATE comments2 SET content='THIS IS NOT GIBBERISH' WHERE content='asfjashfjksaf!';

SELECT DATE_FORMAT(CURDATE(), '%W');
SELECT DATE_FORMAT(CURDATE(), '%w');
SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');
SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i');

CREATE TABLE tweets (tweet VARCHAR(120),
					username VARCHAR(20),
			created_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP);
INSERT INTO tweets(username, tweet) VALUES('ROMANOS', 'HEYEFADF IAHAVE FUN TONIGHT'); 
