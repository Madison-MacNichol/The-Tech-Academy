CREATE DATABASE LibraryTutorial

USE LibraryTutorial
Go

---creating all tables
CREATE TABLE Book
(BookID int PRIMARY KEY, Title varchar(40) NOT NULL, PublisherName varchar(40) NULL)

CREATE TABLE Book_Authors
(BookID int NOT NULL, AuthorName varchar(40) NOT NULL)

CREATE TABLE Publisher
(Name varchar(40) PRIMARY KEY NOT NULL, [Address] varchar(40) NOT NULL, PhoneNumber nvarchar(20) NOT NULL)

CREATE TABLE Book_Copies
(BookID int NOT NULL, BranchID int NOT NULL, No_Of_Copies int NULL)

CREATE TABLE Book_Loans
(BookID int NOT NULL, BranchID int NOT NULL, CardNo nvarchar(20) NOT NULL, DateOut date NOT NULL, DueDate date NOT NULL)

CREATE TABLE Library_Branch
(BranchID int PRIMARY KEY NOT NULL, BranchName varchar(40) NOT NULL, Addres varchar(40) NOT NULL)

CREATE TABLE Borrower
(CardNo nvarchar(20) PRIMARY KEY NOT NULL, Name varchar(40) NOT NULL, [Address] varchar(40) NOT NULL, Phone nvarchar(20) NOT NULL )

--to change address column name in Library_Branch Table
ALTER TABLE Library_Branch
DROP COLUMN Addres

ALTER TABLE Library_Branch
ADD [Address] varchar NOT NULL

--populating all tables
SELECT* 
FROM Library_Branch

INSERT INTO Book
VALUES (1, 'The Lost Tribe', 'Wiley')
,(2, 'Misery', 'Houghton Muffin Harcourt')
,(3, 'Nothing to Decalare','Informa')
,(4, 'The Daily News', 'ThomsonReuters')
,(5,'The Things They Carried','Wiley')
,(6,'The Scarlet Letter','Houghton Muffin Harcourt')
,(7,'Harry Potter','Houghton Muffin Harcourt')
,(8,'50 Shades of Grey','ThomsonReuters')
,(9,'The Last American Man','Informa')
,(10,'Into the Deep','Wiley')
,(11,'Pygmalion','Informa')
,(12,'Boys Will be Boys','Houghton Muffin Harcourt')
,(13,'Skinny Bitch in the Kitch','Wiley')
,(14,'Why French Women Dont Get Fat','Informa')
,(15,'Who Moved My Cheese','ThomsonReuters')
,(16,'When the Rain Comes','ThomsonReuters')
,(17,'The Spirit Catches You and You Fall Down','Wiley')
,(18,'Marys Game','Houghton Muffin Harcourt')
,(19,'The Magnificent 7','Informa')
,(20,'So I Married an Axe Murderer','ThomsonReuters')

SELECT*
FROM Book

INSERT INTO Book_Authors
VALUES (1,'Mindy Joe')
,(2,'Stephen King')
,(3,'Madi Mac')
,(4,'Aja Berni')
,(5,'Kendra Jones')
,(6,'Kalen More')
,(7,'Jordan Varry')
,(8,'Lycee Pete')
,(9,'Marten Van der Zee')
,(10,'Rosje Oesten')

SELECT*
FROM Book_Authors

INSERT INTO Book_Copies
VALUES (2,1,8)
,(4,2,5)
,(6,3,8)
,(8,4,8)
,(10,1,5)
,(12,2,8)
,(14,3,5)
,(16,4,7)
,(18,1,6)
,(20,2,3)
,(3,3,7)
,(11,4,5)
,(6,1,8)
,(9,2,6)
,(12,3,6)
,(15,4,6)
,(18,1,6)
,(7,2,5)
,(13,3,8)
,(17,4,5)
,(3,1,5)
,(4,2,6)
,(5,3,6)
,(10,4,7)
,(15,1,8)
,(20,2,6)
,(11,3,5)
,(11,4,5)
,(5,1,4)
,(6,2,6)
,(7,3,7)
,(8,4,7)
,(4,1,5)
,(1,2,5)
,(1,3,4)
,(1,4,8)
,(1,1,4)
,(6,2,5)
,(9,3,5)
,(13,4,6)
,(13,1,4)
,(20,2,6)
,(14,3,5)
,(14,4,7)

SELECT* 
FROM Book_Copies

INSERT INTO Book_Loans
VALUES (3,1,'1111','2017-10-01','2017-10-21')
,(6,2,'1111','2017-10-01','2017-10-21')
,(9,3,'1111','2017-10-01','2017-10-21')
,(12,4,'1111','2017-10-01','2017-10-21')
,(15,1,'1111','2017-10-01','2017-10-21')
,(18,2,'1111','2017-10-01','2017-10-21')
,(2,3,'2222','2017-10-02','2017-10-02')
,(4,4,'2222','2017-10-02','2017-10-02')
,(6,1,'2222','2017-10-02','2017-10-02')
,(8,2,'2222','2017-10-02','2017-10-02')
,(10,3,'2222','2017-10-02','2017-10-02')
,(12,4,'2222','2017-10-02','2017-10-22')
,(14,1,'3333','2017-10-03','2017-10-23')
,(16,2,'3333','2017-10-03','2017-10-23')
,(18,3,'3333','2017-10-03','2017-10-23')
,(20,4,'4444','2017-10-04','2017-10-24')
,(4,1,'4444','2017-10-04','2017-10-24')
,(8,2,'4444','2017-10-04','2017-10-24')
,(1,3,'5555','2017-10-05','2017-10-25')
,(2,4,'5555','2017-10-05','2017-10-25')
,(9,1,'5555','2017-10-05','2017-10-25')
,(11,2,'6666','2017-10-06','2017-10-26')
,(5,3,'6666','2017-10-06','2017-10-26')
,(4,4,'6666','2017-10-06','2017-10-26')
,(3,1,'7777','2017-10-07','2017-10-27')
,(4,2,'7777','2017-10-07','2017-10-27')
,(6,3,'7777','2017-10-07','2017-10-27')
,(12,4,'7777','2017-10-07','2017-10-27')
,(3,1,'8888','2017-10-08','2017-10-28')
,(8,2,'8888','2017-10-08','2017-10-28')
,(9,3,'8888','2017-10-08','2017-10-28')
,(7,4,'8888','2017-10-08','2017-10-28')
,(2,1,'1111','2017-10-01','2017-10-21')
,(4,2,'2222','2017-10-02','2017-10-22')
,(10,3,'8888','2017-10-08','2017-10-28')
,(11,4,'8888','2017-10-08','2017-10-28')
,(6,1,'2222','2017-10-02','2017-10-22')
,(7,2,'2222','2017-10-02','2017-10-22')
,(10,3,'1111','2017-10-01','2017-10-21')
,(3,4,'2222','2017-10-02','2017-10-22')
,(18,1,'3333','2017-10-03','2017-10-23')
,(12,2,'4444','2017-10-04','2017-10-24')
,(13,3,'2222','2017-10-02','2017-10-22')
,(5,4,'1111','2017-10-01','2017-10-21')
,(2,1,'2222','2017-10-02','2017-10-22')
,(17,2,'1111','2017-10-01','2017-10-21')
,(13,3,'7777','2017-10-07','2017-10-27')
,(8,4,'1111','2017-10-01','2017-10-21')
,(15,1,'7777','2017-10-07','2017-10-27')
,(17,2,'2222','2017-10-02','2017-10-22')
,(20,3,'2222','2017-10-02','2017-10-22')
,(12,4,'1111','2017-10-01','2017-10-21')

SELECT*
FROM Book_Loans

INSERT INTO Borrower
VALUES (1111,'Camille Lovitt','1175 Floyd St','2085761302')
,(2222,'Stpehanie Campbell','34 Rontunda Ln','4457890967')
,(3333,'Carly Haynes','89 Holy Moly Circle','8906712345')
,(4444,'Angela Staup','90 Forrest Park Way','2084561320')
,(5555,'Weston Hescock','88 Fanta St','6785142341')
,(6666,'Kyler Dreyer','4 Louieville Ave','2347651209')
,(7777,'Jason Harshburger','1 Micky Mouse House Blvd','4568966556')
,(8888,'Matthew Chau','765 Misty View Dr','9908761242')

SELECT*
FROM Borrower

INSERT INTO Library_Branch
VALUES (1, 'Sharptown', '2331 NE Almond St')
,(2, 'Central', '452 Bernard Blvd')
,(3,'Uptown','34 N Pistacio Ln')
,(4,'Motown','7 S 18th Ave')

SELECT*
FROM Library_Branch

INSERT INTO Publisher
VALUES ('Wiley','Wiley, CA, USA','208345678')
,('Houghton Muffin Harcourt','Cayman Islands, USA','9867451623')
,('Informa','Oxford, UK','5805431245')
,('ThompsonReuters','St.Louis, MO, USA','3451238956')

SELECT*
FROM Publisher