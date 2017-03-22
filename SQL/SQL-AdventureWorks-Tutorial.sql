SELECT*
FROM Person.Address

/******************IMPUT PERAMETERS*********************/

---stored procedure 
USE AdventureWorks2012
GO
CREATE PROCEDURE dbo.uspGetAddress
AS
SELECT*
FROM Person.Address
GO
---to call the procedure
EXEC dbo.uspGetAddress

---to query specific loacations of your choosing
USE AdventureWorks2012
GO
CREATE PROCEDURE dbo.uspGetAddress @city nvarchar (30)
AS 
SELECT*
FROM Person.Address
WHERE City=@city
GO
---to execute
EXEC dbo.uspGetAddress @city='New York'

---if we want more wiggle room we use % (meaning 'like')
USE AdventureWorks2012
GO
CREATE PROCEDURE dbo.uspGetAddress @city nvarchar (30)
AS 
SELECT*
FROM Person.Address
WHERE City LIKE @city+'%'
GO

---to use multiple perameters
USE AdventureWorks
GO
CREATE PROCEDURE dbo.uspGetAddress @City nvarchar(30) = NULL, @AddressLine1 nvarchar(60) = NULL
AS
SELECT *
FROM Person.Address
WHERE City = ISNULL(@City,City)
AND AddressLine1 LIKE '%' + ISNULL(@AddressLine1 ,AddressLine1) + '%'
GO
---to execute
EXEC dbo.uspGetAddress @City = 'Calgary', @AddressLine1 = 'A'

/******************OUTPUT PERAMETERS*********************/

CREATE PROCEDURE dbo.uspGetAddressCount @City nvarchar(30), @AddressCount int OUTPUT
AS
SELECT @AddressCount = count(*) 
FROM AdventureWorks.Person.Address 
WHERE City = @City

---to execute
DECLARE @AddressCount int
EXEC dbo.uspGetAddressCount @City = 'Calgary', @AddressCount = @AddressCount OUTPUT
SELECT @AddressCount

/******************TRY CATCH PARADIGM*********************/

CREATE PROCEDURE dbo.uspTryCatchTest
AS
BEGIN TRY
    SELECT 1/0
END TRY
BEGIN CATCH
    SELECT ERROR_NUMBER() AS ErrorNumber
     ,ERROR_SEVERITY() AS ErrorSeverity
     ,ERROR_STATE() AS ErrorState
     ,ERROR_PROCEDURE() AS ErrorProcedure
     ,ERROR_LINE() AS ErrorLine
     ,ERROR_MESSAGE() AS ErrorMessage;
END CATCH

/******************NOCOUNT FUNCTION*********************/

-- not using SET NOCOUNT ON 
CREATE PROCEDURE dbo.uspGetAddress @City nvarchar(30)
AS
SELECT * 
FROM Person.Address
WHERE City = @City
GO

-- using SET NOCOUNT ON 
CREATE PROCEDURE dbo.uspGetAddress @City nvarchar(30)
AS
SET NOCOUNT ON
SELECT * 
FROM Person.Address
WHERE City = @City
GO

/******************DROPING PROCEDURES*********************/

--single procedure
DROP PROCEDURE dbo.uspGetAddress 
GO
--multiple procedures
DROP PROCEDURE dbo.uspGetAddress, dbo.uspInsertAddress, dbo.uspDeleteAddress
GO

/******************ALTERING PROCEDURES*********************/

ALTER PROCEDURE dbo.uspGetAddress @City nvarchar(30)
AS
SELECT * 
FROM Person.Address
WHERE City LIKE @City + '%'
GO