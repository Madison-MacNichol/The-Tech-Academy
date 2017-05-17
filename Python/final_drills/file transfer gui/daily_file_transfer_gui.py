from tkinter import*
import tkinter as tk
import FileDialog #this isnt working why not?


class MyGUI:
    def __init__(self, master):
        self.master = master
        master.title("Browse Files to Transfer")

        self.label = Label(master, text="Choose the file you would like to check for modifications")
        self.label.pack()

        self.greet_button = Button(master, text="Check", command=self.check)
        self.check_button.pack()

        self.close_button = Button(master, text="Close", command=master.quit)
        self.close_button.pack()

  #  def check(self):
        #put code for checking file here ---- use .askdirectory method
        #messagebox "there are x modified files here would you like to transfer them?
        #yes/no buttons----if yes bring up messagebox to choose destination file
        # with transfer and cancel buttons if transfer run def transfer

  #  def transfer():
        #put code for transfering files here
        #add last messagebox saying ok, its done, would you like to transfer more with yes/no button
        #if yes, go back to def __init__ else exit program

root = Tk()
my_gui = MyGUI(root)
root.mainloop()
