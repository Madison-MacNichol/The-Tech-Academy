#!/usr/bin/python3
# panedwindow.py by Barron Stone
# This is an exercise file from Python GUI Development with Tkinter on lynda.com

from tkinter import *
from tkinter import ttk        
    
root = Tk()

panedwindow = ttk.Panedwindow(root, orient = HORIZONTAL)
#perameters in .pack control sizing
panedwindow.pack(fill = BOTH, expand = True)

frame1 = ttk.Frame(panedwindow, width = 100, height = 300, relief = SUNKEN)
frame2 = ttk.Frame(panedwindow, width = 400, height = 400, relief = SUNKEN)
panedwindow.add(frame1, weight = 1)
panedwindow.add(frame2, weight = 4)
#this frame has no weight so when resizing the window, that one will not change
frame3 = ttk.Frame(panedwindow, width = 50, height = 50, relief = SUNKEN)
panedwindow.insert(1, frame3)
#takes one perameter: the index of the perameter to forget
panedwindow.forget(1)

root.mainloop()
