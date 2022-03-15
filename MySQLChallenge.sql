------------------------- VERY EASY QUERIES ------------------------
 CREATE DATABASE IF NOT EXISTS MySQLChallenge;
 USE MySQLChallenge;

CREATE TABLE IF NOT EXISTS Car (
CarID INT AUTO_INCREMENT PRIMARY KEY,
Make VARCHAR(100) DEFAULT "",
Model VARCHAR(100) DEFAULT "",
Year INT(100) DEFAULT NULL
);

TRUNCATE TABLE Car;

INSERT INTO Car (Make, Model, Year)
VALUES 
("Nissan", "Altima", 2006),
("Lexus", "Rx", 2007),
("Mercedes", "Benz", 2008);


 INSERT INTO Car (Make, Model, Year)
 VALUE ("Hyundai", "Genesis", 2020);
 
  INSERT INTO Car (Make, Model, Year)
 VALUE ("Scion", "FR-S", 2021);
 
   SELECT * FROM Car;
------------------------- EASY QUERIES ------------------------
CREATE TABLE IF NOT EXISTS `Book` (
BookID INT AUTO_INCREMENT PRIMARY KEY,
Title VARCHAR(100) DEFAULT "",
PublishDate DATETIME DEFAULT NULL,
AuthorFirstName VARCHAR(100) DEFAULT "",
AuthorLastName VARCHAR(100) DEFAULT ""
);

TRUNCATE TABLE Book;

INSERT INTO Book (Title, PublishDate, AuthorFirstName, AuthorLastName)
VALUE 
("Harry Potter", "1997-01-01", "J.K.", "Rowling"),
("Can't Hurt Me", "1998-02-02", "David", "Goggins"),
("Atomic Habits", "1999-03-03", "James", "Clear"),
("The Book Of Joy", "2000-04-04", "Desmond", "Tutu"),
("Think Like A Monk", "2001-05-05", "Jay", "Shetty");


INSERT INTO Book (Title, PublishDate, AuthorFirstName, AuthorLastName)
VALUE ("The Practice Of Groundedness", "2002-06-06", "Brad", "Stulberg");

INSERT INTO Book (Title, PublishDate, AuthorFirstName, AuthorLastName)
VALUE ("Dare To Lead", "2003-07-07", "Brene", "Brown");

 DELETE FROM Book
 WHERE BookID = 1;


------------------------- MEDIUM QUERIES ------------------------
CREATE TABLE IF NOT EXISTS `Movie` (
MovieID INT AUTO_INCREMENT PRIMARY KEY,
Title VARCHAR(100) DEFAULT "",
ReleaseDate DATETIME DEFAULT NULL,
Rating VARCHAR(100) DEFAULT ""
);

TRUNCATE TABLE Movie;

INSERT INTO Movie (Title, ReleaseDate, Rating)
VALUE 
("The Godfather", "2004-10-10", "R"),
("The Shawshank Redemption", "2005-11-11", "PG-13"),
("Schindler's List", "2006-12-12", "R"),
("Raging Bull", "2007-01-13", "G"),
("Casablanca", "2008-02-14", "PG-13"),
("Citizen Kane", "2009-03-15", "R"),
("Rush Hour", "2010-04-16", "PG-13"),
("Rocky", "2011-05-17", "R"),
("Avatar", "2012-06-18", "PG-13"),
("The Wizard Of Oz", "2013-07-19", "PG-13");

  SELECT * FROM Movie
  WHERE Title LIKE '%S%'
  ORDER BY ReleaseDate ASC, ReleaseDate DESC;
 
 ------------------------- HARD QUERIES ------------------------
 CREATE TABLE IF NOT EXISTS `Movie2` (
Movie2ID INT AUTO_INCREMENT PRIMARY KEY,
Title VARCHAR(100) DEFAULT "",
ReleaseDate DATETIME DEFAULT NULL,
Rating VARCHAR(100) DEFAULT "",
AuthorFirstName VARCHAR(100) DEFAULT "",
AuthorLastName VARCHAR(100) DEFAULT ""
);

TRUNCATE TABLE Movie2;

INSERT INTO Movie2 (Title, ReleaseDate, Rating, AuthorFirstName, AuthorLastName)
VALUE 
("The Godfather", "2004-10-10", "R", "Billy", "Ray"),
("The Shawshank Redemption", "2005-11-11", "PG-13", "Bobby", "Smith"),
("Schindler's List", "2006-12-12", "R", "Earl", "Thomas"),
("Raging Bull", "2007-01-13", "G", "Brian", "Johnson"),
("Casablanca", "2008-02-14", "PG-13", "Anthony", "Wilson"),
("Citizen Kane", "2009-03-15", "R", "Michael", "Ka"),
("Rush Hour", "2010-04-16", "PG-13", "Hunter", "Threatt"),
("Rocky", "2011-05-17", "R", "Mason", "Jordan"),
("Avatar", "2012-06-18", "PG-13", "Al", "Walker"),
("The Wizard Of Oz", "2013-07-19", "PG-13", "Tom", "Shephard");

SELECT 
	Movie2ID, 
    ReleaseDate, 
    Rating,  
    CONCAT(AuthorFirstName, " ", AuthorLastName) AS AuthorName 
FROM Movie2
WHERE Upper(substr(AuthorLastName,1,1)) NOT BETWEEN "R" AND "Z"
ORDER BY AuthorLastName ASC;

SELECT * FROM Movie2 LIMIT 3;

 ------------------------- VERY HARD QUERIES ------------------------
CREATE TABLE IF NOT EXISTS `Car2` (
Car2ID INT AUTO_INCREMENT PRIMARY KEY,
Make VARCHAR(100) DEFAULT "",
Model VARCHAR(100) DEFAULT "",
`Year` INT(100) DEFAULT NULL,
`Price` INT DEFAULT NULL,
Color VARCHAR(100) DEFAULT ""
);

TRUNCATE TABLE Car2;

INSERT INTO Car2 (Make, Model, `Year`, `Price`, Color)
VALUE 
("Audi", "A3", 2022, 10000, "Blue"),
("Chrysler", "Aspen", 2005, 20000, "Green"),
("BMW", "I4", 2008, 30000, "Orange"),
("Nissan", "Altima", 2006, 40000, "Yellow"),
("Lexus", "Rx", 2007, 20125, "Brown"),
("Mercedes", "Benz", 2008, 15278, "Pink");

 SELECT 
	Year,
	Price, 
	Color, 
	CONCAT(Make, " ", Model) `MakeModel`
 FROM Car2;
    
SELECT Make, COUNT(*) FROM Car2 GROUP BY Make;
