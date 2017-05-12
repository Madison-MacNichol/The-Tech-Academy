import sqlite3

connection = sqlite3.connect('test_database.db')

c = connection.cursor()#Our 'c' cursor object allows us to execute commands in our 'test_database'

#c.execute('CREATE TABLE Peeps(FirstName TEXT, LastName TEXT, Age INT)') #this creates a new table in our database called Peeps
#c.execute("INSERT INTO Peeps VALUES('Madi','Mac',28)")#this inserts a row into our Peeps table
c.execute("INSERT INTO Peeps VALUES('Davy','Doo',30)")
c.execute("INSERT INTO Peeps VALUES('Jeremy','Jay',25)")
c.execute("INSERT INTO Peeps VALUES('Maggie','May',23)")
connection.commit()#commits the changes to the table


#connect()

##connection = sqlite3.connect(':memory') this is to make a oen time/temporary db
##
##c.execute("DROP TABLE IF EXITS Peeps") to delete Peeps table
##
##connection.close() to close db

#this executes more than one sql line at a time
import sqlite3
with sqlite3.connect('test_database.db') as connection:
c = connection.cursor()
c.executescript("""
DROP TABLE IF EXISTS People;
CREATE TABLE People(FirstName TEXT, LastName TEXT, Age INT);
INSERT INTO People VALUES('Ron', 'Obvious', '42');
""")

#this executes all the sql commands at once
peopleValues = (
('Ron', 'Obvious', 42),
('Luigi', 'Vercotti', 43),
('Arthur', 'Belling', 28)

c.executemany("INSERT INTO People VALUES(?, ?, ?)", peopleValues)

#to use placeholders and insert data as a touple
import sqlite3
# get person data from user and insert into a tuple
firstName = raw_input("Enter your first name: ")
lastName = raw_input("Enter your last name: ")
age = int(raw_input("Enter your age: "))
personData = (firstName, lastName, age)
# execute insert statement for supplied person data
with sqlite3.connect('test_database.db') as connection:
c = connection.cursor()
c.execute("INSERT INTO People VALUES(?, ?, ?)", personData)

#insert people into Peeps table then asks SQL to retrieve their info
import sqlite3
peopleValues = (
('Ron', 'Obvious', 42),
('Luigi', 'Vercotti', 43),
('Arthur', 'Belling', 28)
)
with sqlite3.connect('test_database.db') as connection:
c = connection.cursor()
c.execute("DROP TABLE IF EXISTS People")
c.execute("CREATE TABLE People(FirstName TEXT, LastName TEXT, Age INT)")
c.executemany("INSERT INTO People VALUES(?, ?, ?)",
peopleValues)
# select all first and last names from people over age 30
c.execute("SELECT FirstName, LastName FROM People WHERE Age > 30")
for row in c.fetchall():
print row
