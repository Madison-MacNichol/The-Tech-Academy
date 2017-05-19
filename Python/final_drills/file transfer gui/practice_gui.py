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

        self.greet_button = Button(master, text="Browse", command=self.check)
        self.greet_button.pack()

        self.greet_button = Button(master, text="Move", command=self.moveFiles)
        self.greet_button.pack()
        
        self.create_db()
        
        self.last_checked = StringVar() ##not sure where to put this....and how do i make it appear in the gui
        self.last_checked.set(LastChecked)


    def create_db(self):
        conn = sqlite3.connect('checkfile.db')
        with conn:
            c = conn.cursor()
            c.execute ('CREATE TABLE IF NOT EXISTS tbl_modified(ID INTEGER PRIMARY KEY, LastChecked TIMESTAMP);')
            conn.commit()
        conn.close() 
        self.insert_data()


##    def first_instance(self):
##         try:
##            self.last_checked.set(last_checked())
##         except:
##            self.last_checked.set("No data in database")
##         self.label = Label(master, time = self.last_checked)




    def last_checked(self):
        conn = sqlite3.connect('checkfile.db')
        with conn:
            c = conn.cursor()
            c.execute('SELECT tbl_modified FROM checkfile.db')
            return c.fetchone()[0]






    

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
        timeVariable = datetime.datetime.now() #called in my insert_data function
        print(timeVariable)
        destination = filedialog.askdirectory()
        for filepath in self.result:
            shutil.move(filepath, destination)
        self.transferComplete()
        self.insert_data()

    def insert_data(self):
        conn = sqlite3.connect('checkfile.db')
        with conn:
            c = conn.cursor()
            c.execute('INSERT INTO tbl_modified(LastChecked) VALUES(?)', (timeVariable),)
            conn.commit()
        self.last_checked()

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
