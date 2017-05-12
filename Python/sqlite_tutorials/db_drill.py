

import sqlite3

connection = sqlite3.connect('test_database2.db')

c = connection.cursor()

#c.execute('CREATE TABLE Roster(Name TEXT, Species TEXT, Age INT)') #this creates a new table in our database called Peeps
#c.execute("INSERT INTO Roster VALUES('Jean-Baptiste Zorg','Human',122)")
#c.execute("INSERT INTO Roster VALUES('Korban Dallas','Meat Popsicle',100)")
#c.execute("INSERT INTO Roster VALUES('Ak not','Mangalore',-5)")


##Name = raw_input('Enter Name: ')
##Species = raw_input('Enter Species: ')
##IQ = raw_imput('Enter Age: ')
##personData = (Name,Species,Age)
##with sqlite3.connect('test_database2.db') as connection:
##    c = connection.cursor()
##    c.execute("INSERT INTO Roster VALUES(?,?,?)",personData)

#c.execute("UPDATE Roster SET Species=? WHERE Name=? AND Age=?",('Human','Korban Dallas',100))

c.execute("SELECT Name,Age FROM Roster WHERE Species='Human'")
while True:
    row = c.fetchone()
    if row is None:
        break
    print(row)



connection.commit()


