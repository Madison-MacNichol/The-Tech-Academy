from tkinter import *
from tkinter import ttk
from tkinter import filedialog
from tkinter import messagebox
import os
import shutil
import time
import sqlite3


class MyGui:
    def __init__(self, master):
        self.master = master
        master.title("File Transfer")

        self.label = Label(master, text="Browse for modified files")
        self.label.pack()

        self.greet_button = Button(master, text="Browse", command=self.check)
        self.greet_button.pack()

        self.greet_button = Button(master, text="Move", command=self.moveFiles)
        self.greet_button.pack()


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
        self.transferComplete()


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
