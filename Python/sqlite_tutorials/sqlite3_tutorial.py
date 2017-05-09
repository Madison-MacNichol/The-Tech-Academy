import sqlite3

conn=sqlite3.connect('tutorial.db')
c=conn.cursor()

def create_table():
    c.execute('CREATE TABLE IF NOT EXISTS stuffToDo(unix REAL, datestamp TEXT, keyword TEXT,value REAL)')

def data_entry():
    c.execute("INSERT INTO stuffToDo VALUES(14457839485, '2016-90-90', 'Python', 5)") #inserting data into stuffToDo table
    conn.commit()
    c.close()
    conn.close()

create_table()
data_entry()
