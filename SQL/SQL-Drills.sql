--Q1
SELECT*
FROM Products

--Q2
SELECT Products.Name, Products. Price
FROM Products

--Q3
SELECT*
FROM Products 
WHERE Price<='$200'

--Q4
SELECT* 
FROM Products
WHERE Price=>'$60' AND Price<='$120'

--Q5
SELECT Products.Name, Products.Price*100
FROM Products

--Q6
SELECT AVG(Price)
FROM Products

--Q7
SELECT AVG(Price)
FROM Products
WHERE Manufacturer=2

--Q8
SELECT*
FROM Products
WHERE Price>='$180'

--Q9
SELECT*
FROM Products
WHERE Price>='$180'
ORDER BY Price DESC, Name

--Q10
SELECT*
FROM Products INNER JOIN Manufacturers 
ON Products.Manufacturer=Manufacturer.Code

--Q11
SELECT Product.Name, Product.Price, Manufacturer.Name
FROM Products INNER JOIN Manufacturer
ON Products.Manufacturer=Manufacturer.Code

--Q12
SELECT AVG(Price),Manufacturer.Code
FROM Products
GROUP BY Manufacturer

--Q13
SELECT AVG(Pice), Manufacturer.Name
FROM Products INNER JOIN Manufacturer
ON Products.Manufacturer = Manufacturers.Code
GROUP BY Manufacturer.Name

--Q14
SELECT AVG(Price)
FROM Products INNER JOIN Manufacturers
ON Products.Manufacturer = Manufacturers.Code
GROUP BY Manufacturer.Name
HAVING Price>='$150'

--Q15
SELECT name,price
FROM Products
ORDER BY price ASC
LIMIT 1

--Q16
SELECT Products.Name, MAX(Price), Manufacturers.Name
FROM Products, Manufacturers
WHERE Manufacturer = Manufacturers.Code
GROUP BY Manufacturers.Name;

--Q17
INSERT INTO Products(Name , Price , Manufacturer)
VALUES ('Loudspeakers', 70, 2)

--Q18
 UPDATE Products
 SET Name = 'Laser Printer'
 WHERE Code = 8;

--Q19
UPDATE Products
SET Price=Price*0.9

--Q20
UPDATE Products
SET Price=Price*0.9
WHERE Price>=120