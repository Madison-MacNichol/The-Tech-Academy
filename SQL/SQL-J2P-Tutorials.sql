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