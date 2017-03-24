/*Q1: How many copies of the book titled The Lost Tribe are owned by the library branch whose name
is "Sharpstown"?*/

SELECT*
FROM Book_Copies
SELECT*
FROM Book
SELECT*
FROM Library_Branch

SELECT*
FROM Book INNER JOIN Book_Copies
ON Book.BookID=Book_Copies.BookID
INNER JOIN Library_Branch
ON Book_Copies.BranchID=Library_Branch.BranchID
WHERE Library_Branch.BranchName='Sharptown' AND Book.Title='The Lost Tribe'

/*A: There are 4 copies of The Lost Tribe at the Sharptown branch library*/


/*Q2: How many copies of the book titled The Lost Tribe are owned by each library branch?*/

SELECT*
FROM Book INNER JOIN Book_Copies
ON Book.BookID=Book_Copies.BookID
INNER JOIN Library_Branch
ON Book_Copies.BranchID=Library_Branch.BranchID
WHERE (Library_Branch.BranchID=1 
OR Library_Branch.BranchID=2 
OR Library_Branch.BranchID=3 
OR Library_Branch.BranchID=4)
AND Book.BookID=1

/*A: There are 5 copies at branch 2, 3 copies at branch 3, 8 copies at branch 4 and 4 copies at branch 1.*/

/*Q3: Retrieve the names of all borrowers who do not have any books checked out.*/

SELECT*
FROM Borrower
SELECT*
FROM Book_Loans

SELECT Name
FROM Borrower LEFT OUTER JOIN Book_Loans
ON Borrower.CardNo=Book_Loans.CardNo
WHERE Book_Loans.CardNo IS NULL

/*A: All borrowers have at least 1 book checked out*/

/*Q4:  For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today,
retrieve the book title, the borrower's name, and the borrower's address.*/

SELECT*
FROM Library_Branch
SELECT*
FROM Book_Loans
SELECT* 
FROM Book

SELECT Book.Title, Borrower.Name, Borrower.[Address]
FROM Book INNER JOIN Book_Loans
ON Book.BookID=Book_Loans.BookID
INNER JOIN Borrower
ON Book_Loans.CardNo=Borrower.CardNo
WHERE (Book_Loans.BranchID=1) 
AND Book_Loans.DueDate='2017-03-22'


/*A: There are no books from the Sharptown branch due today from any borrower*/

/*Q5: For each library branch, retrieve the branch name and the total number of books loaned out from
that branch.*/

SELECT*
FROM Library_Branch
SELECT*
FROM Book_Loans

SELECT COUNT (*) AS Total_Books, Library_Branch.BranchName
FROM Library_Branch INNER JOIN Book_Loans
ON Library_Branch.BranchID=Book_Loans.BranchID
GROUP BY Library_Branch.BranchName


/*A: There are currently 13 books on loan from each library branch*/

/*Q6: 6. Retrieve the names, addresses, and number of books checked out for all borrowers who have more
than five books checked out.*/

SELECT*
FROM Borrower
SELECT*
FROM Book_Loans

SELECT COUNT(Borrower.CardNo) AS NumberofBooks,Borrower.Name, Borrower.[Address] 
FROM Borrower INNER JOIN Book_Loans
ON Borrower.CardNo=Book_Loans.CardNo
GROUP BY Borrower.CardNo,Borrower.Name, Borrower.[Address]
HAVING COUNT (Borrower.CardNo)>5

/*A: There are 4 borrowers who have more than 5 books on loan*/

/*Q7: For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of
copies owned by the library branch whose name is "Central".*/
 
SELECT*
FROM Book
SELECT*
FROM Book_Authors
SELECT*
FROM Library_Branch
SELECT*
FROM Book_Copies

SELECT Book.Title,Book_Copies.No_Of_Copies
FROM Book_Authors INNER JOIN Book
ON Book_Authors.BookID=Book.BookID
INNER JOIN Book_Copies
ON Book.BookID=Book_Copies.BookID
INNER JOIN Library_Branch
ON Book_Copies.BranchID=Library_Branch.BranchID
WHERE Book_Authors.AuthorName='Stephen King' AND Library_Branch.BranchName='Central'

/*A: Apparently there are no books written by Stephen King in the Central branch library...pity...*/

/**************STORED PROCEDURE QUERY FOR Q1****************/

USE LibraryTutorial
GO

CREATE PROCEDURE dbo.uspGetNo_of_Copies @BranchName varchar(40), @Title varchar(40)
AS
SELECT*
FROM Book INNER JOIN Book_Copies
ON Book.BookID=Book_Copies.BookID
INNER JOIN Library_Branch
ON Book_Copies.BranchID=Library_Branch.BranchID
WHERE Library_Branch.BranchName=@BranchName AND Book.Title=@Title
GO

--example execute
EXEC dbo.uspGetNo_of_Copies @BranchName='Sharptown', @Title='Misery'
GO
