from tkinter import *
from tkinter import ttk
from tkinter import filedialog
import os
import shutil
import time


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

##        self.greet_button = Button(master, text="Check", command=self.checkFile)
##        self.greet_button.pack()

##        self.close_button = Button(master, text="Close", command=self.quit)
##        self.close_button.pack()


    def checkFile(self): 
        result = []
        modified = time.time() - 24*60*60 
        for path, subfolder, filename in os.walk(self.source):
            for i in filename:
                filepath = os.path.join(path, i)
                print(filepath)
                if os.path.getmtime(filepath) >= modified or os.path.getctime(filepath) >= modified:
                    result.append(filepath)
                    print(result)
                    print('Ready to Move')
     

    def moveFiles(result):
##        result = []
        print(result)
        destination = filedialog.askdirectory()
        for filepath in result:
            shutil.move(filepath, destination)
##            self.transferComplete()


    def check(self):
        result = []
        self.source = filedialog.askdirectory()
        if len(self.source ) > 0:
            print("You chose %s" % self.source)
            self.checkFile()

            

##    def transferComplete(self):
##        self.label = Label(master, text="Would you like to select another directory?")
##        self.label.pack()
##
##        self.browse_button = Button(master, text="Browse", command=self.check)
##        self.browse_button.pack()
##
##        self.close_button = Button(master, text="Close", command=self.quit)
##        self.close_button.pack()
##
##            #add last messagebox saying ok, its done, would you like to transfer more with yes/no button
##            #if yes, go back to def __init__ else exit program
##        


if __name__ == "__main__":
    root = Tk()
    my_gui = MyGui(root)
    root.mainloop()
