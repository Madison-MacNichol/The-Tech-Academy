##Python Ver: 3.6
##
##Author: Madi Mac
##
##Purpose: Creating a phonebook to become more familiar with Python
##

import  os
from tkinter import*
import tkinter as tk
import sqlite3

#this links this doc to our other docs we made for the project
import phonebook_demo_main
import phonebook_demo_gui

def center_window(self,w,h):
    #gets users screen width & height
    screen_width=self.master.winfo_screenwidth()
    screen_height=slelf.master.winfo_screenheight()
    #calculates x & y coordinates to center app on users screen
    x=int((screen_width/2)-(w/2))
    y=int((screen_height/2)-(h/2))
    centerGeo=self.master.geometry('()x()+()y()'.format(w,h,x,y))
    return centerGeo

#asks the user if they want to close bc they clicked on teh x
def ask_quit(self):
    if messagebox.askokcancel('Exit program','OK to exit application'):
        #to close app
        self.master.destroy()
        os._exit(0)

def create_db(self):
    conn=sqlite3.connect('phonebook.db')
    with conn:
        cur=conn.cursor()
        cur.execute('CREATE TABLE if not exists tbl_phonebook( \
            ID INTEGER PRIMARY KEY AUTOINCREMENT, \
            col_fname TEXT, \
            col_lname TEXT, \
            col_fullname TEXT, \
            col_phone TEXT, \
            col_email TEXT \
            );')
        #we must commit() to save changes & close database connection
        conn.commit()
    conn.close()
    first_run(self)

def first_run(self):
    data=('John','Doe','John Doe','111-111-1111','jdoe@gmail.com')
    conn=sqlite3.connect('phonebook.db')
    with conn:
        cur=conn.corsor()
        cur,count=count_records(cur)
        if count < 1:
            cur.execute("""INSERT INTO tbl_phonebook(col_fname,col_lname,col_fullname,col_phone,col_email) VALUES (?,?,?,?,?)""")
            conn.commit()
        conn.close()

def count_records(cur):
    count=""
    cur.execute("""SELECT COUNT(*)FROM tbl_phonebook""")
    count=cur.fetchone()[0]
    return cur,count

#selects an item in the listbox
def onSelect(self,event):
    #calling the even it the self.1stList1 widget
    varList=event.widget
    select=varList.curselection()[0]
    value=varList.get(select)
    conn=sqlite.connect('phonebook.db')
    with conn:
        cursor=conn.cursor()
        cursor.execute("""SELECT col_fname,col_lname,col_phone,col_email FROM tbl_phonebook WHERE col_fullname=(?)""",[value])
        varBody=cursor.fetchall()
        #this returns a tuple which we can cut up into different parts using data[] during interation
        for data in varBody:
            self.txt_fname.delete(0,END)
            self.txt_fname.insert(0,data[0])
            self.txt_lname.delete(0,END)
            self.txt_lname.insert(0,data[1])
            self.txt_phone.delete(0,END)
            self.txt_phone.insert(0,data[2])
            self.txt_email.delete(0,END)
            self.txt_email.insert(0,data[3])

def addToList(self):
    var_fname=self.txt_fname.get()
    var_lname=self.txt_fname.get()
    #normalizes data to keep consistant with database
    var_fname=var_fname.strip() #this removes blank spaces
    var_lname=var_lname.strip() 
    var_fname=var_fname.title() #this ensures first character per word is capitalized
    var_lname=var_lname.title()
    var_fullname=('{} {}'.format(var_fname,var_lname))
    print ('var_fullname: {}'.format(var_fullname))
    var_phone=self.txt_phone.get().strip()
    var_email=self.txt_email.get().strip()
                                
