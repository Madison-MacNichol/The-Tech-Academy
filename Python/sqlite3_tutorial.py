import sqlite3
import time
import datetime
import random

conn=sqlite3.connect('tutorial.db')
c=conn.cursor()

def create_table():
    c.execute('CREATE TABLE IF NOT EXISTS stuffToDo(unix REAL, datestamp TEXT, keyword TEXT,value REAL)')

def data_entry():
    c.execute("INSERT INTO stuffToDo VALUES(14456839485, '2016-90-90', 'Python', 8)") #inserting data into stuffToDo table
    conn.commit()
    c.close()
    conn.close()



def dynamic_data_entry():
    unix=time.time()
    date=str(datetime.datetime.fromtimestamp(unix).strftime('%Y-%m-%d %H: %M: %S:'))
    keyword='Python'
    value=random.randrange(0,10)
    c.execute("INSERT INTO stuffToDo(unix, datestamp, keyword, value) VALUES (?,?,?,?)",
              (unix, date, keyword, value))
    conn.commit()


create_table()
#data_entry()


for i in range(10):
    dynamic_data_entry()
    time.sleep(1)
c.close()
conn.close

    
