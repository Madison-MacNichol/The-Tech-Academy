from tkinter import *
from tkinter import ttk
from tkinter import filedialog
from tkinter import messagebox
import os
import shutil
import time
import datetime
import sqlite3
    

class MyGui:
    def __init__(self, master):
        self.master = master
        master.title("File Transfer")

        self.label = Label(master, text="Browse for modified files")
        self.label.pack()

        self.label = Label(master, text = "Time last checked: ")
        self.label.pack()

        self.last_checked = StringVar()
        try:
            #this checks for the return value of the self.last_check() which is recent which is "c.fetchone()[0]"
            self.last_checked.set(self.last_check())
        except:
            #if there is no timestamp in the database yet then display the below message
            self.last_checked.set('No data yet')
 

        self.entry = Entry(master, text = self.last_checked)
        self.entry.pack()

        self.greet_button = Button(master, text="Browse", command=self.check)
        self.greet_button.pack()

        self.greet_button = Button(master, text="Move", command=self.moveFiles)
        self.greet_button.pack()
        
        self.create_db()
        


    def create_db(self):
        conn = sqlite3.connect('checkfile.db')
        with conn:
            c = conn.cursor()
            c.execute ('CREATE TABLE IF NOT EXISTS tbl_modified(ID INTEGER PRIMARY KEY, LastChecked TIMESTAMP);')
            conn.commit()
        conn.close() 
        #self.insert_data()


    def last_check(self):
        conn = sqlite3.connect('checkfile.db')
        with conn:
            c = conn.cursor()
            #add order by and descending to select statement
            #c.execute('SELECT tbl_modified.LastChecked FROM tbl_modified ORDER BY LastChecked DESC')
            c.execute('SELECT tbl_modified.LastChecked FROM tbl_modified WHERE ID = (SELECT MAX(ID)FROM tbl_modified)')
            recent = c.fetchone()[0]
            #the below line is replaced with self.last_checked.set(self.last_check()) in the above try except
            #self.last_checked.set(recent) 
            return recent
    

    def checkFile(self): 
        self.result = []
        modified = time.time() - 24*60*60 
        for path, subfolder, filename in os.walk(self.source):
            for i in filename:
                filepath = os.path.join(path, i)
                print(filepath)
                if os.path.getmtime(filepath) >= modified or os.path.getctime(filepath) >= modified:
                    self.result.append(filepath)
                    print(self.result)
                    print('Ready to Move')
     

    def moveFiles(self):
        print(self.result)
        destination = filedialog.askdirectory()
        for filepath in self.result:
            shutil.move(filepath, destination)
        #i removed the call to your insert_data() method from your for
        #loop so it only prints one timestamp for when files are moved not each file
        self.insert_data()
        self.transferComplete()
        

    def insert_data(self):
        conn = sqlite3.connect('checkfile.db')
        with conn:
            c = conn.cursor()
            timeVariable = datetime.datetime.now()
            print(timeVariable)
            c.execute('INSERT INTO tbl_modified(LastChecked) VALUES(?)', (timeVariable,))
            self.last_checked.set(timeVariable)
            conn.commit()
        self.last_check()


    def check(self):
        self.source = filedialog.askdirectory()
        if len(self.source ) > 0:
            print("You chose %s" % self.source)
            self.checkFile()


    def transferComplete(self):
        self.box = messagebox.askquestion("Finished", "Browse another file?", icon='info')
        if self.box == 'yes':
            self.check()
        else:
            print ("Goodbye")
            sys.exit()
            self.check()



if __name__ == "__main__":
    root = Tk()
    my_gui = MyGui(root)
    root.mainloop()
