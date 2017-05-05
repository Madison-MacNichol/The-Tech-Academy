
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
    def _init_(self,master,*args,**kwargs):
        Frame._init_(self,master,*args,**kwargs)

        #defines master fram config
        self.master=master
        self.master.minsize(500,300) #height & width
        slef.master.maxsize(500,300)
        #centers app on users screen
        phonebook_demo_function.center_window(self,500,300)
        self.master.title('The Tkinter Phonebook Demo')
        self.master.configure(bg='#F0F0F0')
        #below is a built-in tkinter method to catch if user clicks the close
        #button on the window
        self.master.protocol('WM_DELETE_WINDOW', lambda: phonebook_demo_function.ask_quit(self))
        arg=self.master

        #loads widgets from other modules
        #keeps code clutter free
        phonebook_demo_gui.load_gui(self)
        
        # This is the menu that will appear at the top of our window
        menubar = Menu(self.master)
        filemenu = Menu(menubar, tearoff=0)
        filemenu.add_separator()
        filemenu.add_command(label="Exit", underline=1,accelerator="Ctrl+Q",command=lambda: drill50_phonebook_func.ask_quit(self))
        menubar.add_cascade(label="File", underline=0, menu=filemenu)
        helpmenu = Menu(menubar, tearoff=0) # defines the particular drop down colum and tearoff=0 means do not separate from menubar
        helpmenu.add_separator()
        helpmenu.add_command(label="How to use this program")
        helpmenu.add_separator()
        helpmenu.add_command(label="About This Phonebook Demo") # add_command is a child menubar item of the add_cascde parent item
        menubar.add_cascade(label="Help", menu=helpmenu)

        self.master.config(menu=menubar, borderwidth='1')


if __name__== "__main__":
    root=tk.Tk()
    App=ParentWindow(root)
    root.mainloop()
    
