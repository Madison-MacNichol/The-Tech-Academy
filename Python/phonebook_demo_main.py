
##Python Ver: 3.6
##
##Author: Madi Mac
##
##Purpose: Creating a phonebook to become more familiar with Python
##


from tkinter import*
import tkinter as tk

#this links this doc to our other docs we made for the project
import phonebook_demo_gui
import phonebook_demo_function

#Frame is the tkinter class from which our class will inherit stuff
class ParentWindow(Frame):
    def __init__(self,master,*args,**kwargs):
        Frame.__init__(self,master,*args,**kwargs)

        #defines master fram config
        self.master=master
        self.master.minsize(500,300) #height & width
        slef.master.maxsize(500,300)
        #centers app on users screen
        phonebook_func.center_window(self,500,300)
        self.master.title('The Tkinter Phonebook Demo')
        self.master.configure(bg='#F0F0F0')
        #below is a built-in tkinter method to catch if userclick the close
        #button on the window
        self.master.protocol('WM_DELETE_WINDOW', lambda: phonebook_demo_function.ask_quit(self))
        arg=self.master

        #loads widgets from other modules
        #keeps code clutter free

        phonebook_demo_gui.load_gui(self)

if __name__== "__main__":
    root=tk.Tk()
    App=ParentWindow(root)
    root.mainloop()
    
