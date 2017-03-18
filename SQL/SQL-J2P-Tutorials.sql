/*this searches for an email address with a .com ending*/
SELECT*
FROM [Grant]
WHERE GrantName like '_%@%_.com' 

/*2 tables in 1 from clause*/
SELECT*
FROM Employee

SELECT*
FROM Location

SELECT* 
FROM Employee inner join Location
ON Employee.LocationID=Location.LocationID

/* another example*/
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