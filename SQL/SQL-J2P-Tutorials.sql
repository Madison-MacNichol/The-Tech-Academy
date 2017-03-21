/*this searches for an email address with a .com ending*/
SELECT*
FROM [Grant]
WHERE GrantName like '_%@%_.com' 

/*INNER JOINS!*/
/*2 tables in 1 from clause*/
SELECT*
FROM Employee

SELECT*
FROM Location

SELECT* 
FROM Employee inner join Location
ON Employee.LocationID=Location.LocationID

/*another example*/
SELECT*
FROM Employee

SELECT*
FROM PayRates

SELECT*
FROM Employee INNER JOIN PayRates
ON Employee.EmpID=PayRates.EmpID

SELECT*
FROM Employee

SELECT*
FROM Location

SELECT FirstName,LastName,City,State
FROM Employee INNER JOIN Location
ON Employee.LocationID=Location.LocationID

SELECT FirstName,LastName,GrantName,Amount
FROM Employee INNER JOIN [Grant]
ON Employee.EmpID=[Grant].EmpID

/*OUTER JOINS*/
SELECT FirstName,LastName,City,State
FROM Employee LEFT OUTER JOIN Location
ON Employee.LocationID=Location.LocationID

SELECT FirstName,LastName,City,State
FROM Employee RIGHT OUTER JOIN Location
ON Employee.LocationID=Location.LocationID

SELECT FirstName,LastName,City,State
FROM Employee FULL OUTER JOIN Location
ON Employee.LocationID=Location.LocationID

/*Table aliases*/
SELECT FirstName, LastName, City, Location.State
FROM Employee INNER JOIN Location 
ON Employee.LocationID=Location.LocationID
/*goes to*/

/*CROSS JOINS*/
SELECT*
FROM MgmtTraining

SELECT*
FROM Employee
WHERE EmpID IN (1,2)
/*goes to*/
SELECT*
FROM Employee CROSS JOIN MgmtTraining
WHERE EmpID IN (1,2)

/*another example*/
SELECT FirstName,LastName, City,L.State
FROM Employee AS E CROSS JOIN Location AS L

/*UNMATCHED QUERIES*/
SELECT*
FROM Location AS L INNER JOIN Employee AS E
ON L.LocationID=E.LocationID
/*goes to*/
SELECT*
FROM Location AS L LEFT OUTER JOIN Employee AS E
ON L.LocationID=E.LocationID
/*goes to*/
SELECT*
FROM Location AS L LEFT OUTER JOIN Employee AS E
ON L.LocationID=E.LocationID
WHERE E.EmpID IS NULL

/*another example*/
SELECT E.FirstName,E.LastName,G.GrantName
FROM Employee AS E LEFT OUTER JOIN [Grant] AS G
ON E.EmpID=G.EmpID
WHERE G.GrantName IS NULL

/*CREATING DATABASES*/

USE master /*this is a helpful command if you're already in the database you'd like to drop*/
Go

--run only if dbmovie is present
IF EXISTS (SELECT* FROM sys.database WHERE [name]='dbMovie')
DROP DATABASE dbMovie
GO

CREATE DATABASE dbMovie
GO /*GO command acts as a time seperator, telling the program to complete one command fully before moving onto the next and helps avoid sequence errors*/

USE dbMovie --changes what db you're using

/* CREATING TABLES */
USE dbMovie
GO

CREATE TABLE tblMovie
(m_id int PRIMARY KEY, m_title varchar NOT NULL, m_runtime int NULL)

SELECT*
FROM tblMovie

/*ENTERING DATA INTO A TABLE*/
SELECT*
FROM tblMovie

INSERT INTO tblMovie
VALUES (6,'Barneys Vacation',92,'PG-13')

INSERT INTO tblMovie
VALUES (7,'Armagedon',102,'R')
INSERT INTO tblMovie
VALUES (8,'Empire Strikes Back',123,'PG')

--this allows you to enter multiple records in one command and is call a row constructor
INSERT INTO tblMovie
VALUES (9,'Tomb Raider',80, 'PG-13'),
(10,'Moana',88,'G')

/*UPDATDATING DATA*/
SELECT*
FROM tblmovie

UPDATE tblmovie
SET m_title='A-list explorers'
WHERE m_id=1

--joining tables
SELECT*
FROM Employee as E INNER JOIN PayRates as PR
ON E.EmpID=PR.EmpID
WHERE MangerID=11
AND YearlySalary IS NOT NULL

UPDATE PR SET YearlySalary + 10000
FROM Employee as E INNER JOIN PayRates as PR
ON E.EmpID=PR.EmpID
WHERE MangerID=11
AND YearlySalary IS NOT NULL

/*DELETING DATA*/
SELECT*
FROM tblMovie


INSERT INTO tblMovie
VALUES (1,'A-list explorers',89,'R')
, (2,'Lovely Laura',89,'R')
, (3,'Musketeers',34,'G')
, (4,'Barney',102,'PG')
,(5,'Armagedon',86,'PG-13')

DELETE tblMovie
WHERE m_runtime>90

DELETE tblMovie
WHERE m_Rating='G'

/*ALTERING TABLES*/

--this adds a another column to the selected table
ALTER TABLE Movie
ADD m_description varchar(100) NULL

--and to delete it
ALTER TABLE Movie
DROP COLUMN m_description

ALTER TABLE Movie
ADD m_description varchar(100) NOT NULL
DEFAULT 'Description coming soon'

--to change column name
sp_rename 'Movie.m_description', 'm_teaser'

--to change table name
sp_rename 'tblmovie','Movie'

/*STORONG PROCEDURES*/
CREATE PROCEDURE GetWAshintonEmployees	
AS
	SELECT E.FirstName, E.LastName, L.city, L.[state]
	FROM Employee AS E
	INNER JOIN Location AS L
	ON E.LocationID=L.LocationID
	WHERE L.[state]='WA' --can also use !='WA', meaning NOT in WA

EXEC GetWAshintonEmployees	

/*USING VARIABLES*/
DECLARE @FirstName varchar(20)
DECLARE @LastName varchar(30)

SET @FirstName='John'
SET @LastName='Smith'

SELECT @FirstName, @LastName

--another example
DECLARE @MinPrice int
SET @MinPrice=550
DECLARE @MaxPrice int
SET @MaxPrice=575

SELECT*
FROM CurrentProducts
WHERE RetailPrice BETWEEN @MinPrice AND @MaxPrice

/*STORING PROCEDURE PARAMETERS*/
CREATE PROC GetEmployeesFromSeattle
AS
	
	SELECT emp.FirstName, emp.LastName, loc.city, loc.[state]
	FROM Employee AS emp
	INNER JOIN Location AS loc
	ON emp.LocationID=loc.LocationID
	WHERE loc.city='Seattle'

--another example
CREATE PROC GetEmployeeByCity @city varchar (50)
AS
	
	SELECT emp.FirstName, emp.LastName, loc.city, loc.[state]
	FROM Employee AS emp
	INNER JOIN Location AS loc
	ON emp.LocationID=loc.LocationID
	WHERE loc.city=@city --by making this perameter a variable, you can now search all the location
	--DONT FORGET!!! Perameters require values!

/*EXPLICIT TRANSACTIONS*/

BEGIN TRAN
--this statement, if explicit will etiher run or fail together even if something sudden like a system crash happen

--takes out of savings
UPDATE CkAccount SET Balance=BAlance-500
WHERE CustomerID=18568

--puts money into savings
UPDATE CkAccount SET Balance=BAlance+500
WHERE CustomerID=18568

COMMIT TRAN
--commit saves all changes but you can also use ROLLBACK TRAN which would not commit them with an IF statement

--example with delay command
BEGIN TRAN

Update CurrentProducts
SET RetailPrice=999

WAITFOR DELAY '00:00:30'

ROLLBACK TRAN

/*CREATING A LOGIN*/

CREATE LOGIN Murray
WITH PASSWORD='ABC123xyz'

DROP LOGIN Murray --this deletes a login accout
ALTER LOGIN Murray DISABLE --this keeps the account but makes it unuable 

GRANT ALTER ANY DATABASE TO Murry --gives permission to access/alter databases
GRANT CONTROL SERVER TO Murry --gives permission to do whatever

DENY ALTER ANY DATABASE TO Murry--takes away access to databases (denial permissions always win over granted permissions)
REVOKE ALTER ANY DATABASE TO Murry--this means undo the last permission or deny statement (you can give and take away! Muahahahaha!!!)
