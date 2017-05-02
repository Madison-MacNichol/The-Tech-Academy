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
    if not "@" or not "." in var_email:
        print("Incorrect email format!")
    if(len(var_fname)>0) and (len(var_lname)>0) and (len(var_phone)>0) and (len(var_email)>0): #makes sure user fills in all feilds
        conn=sqlite3.connect('phonebook.bd')
        with conn:
            cursor=conn.cursor()
            #this checks the database for the full name and alerts user
            cursor.execute("""SELECT COUNT (col_fullname) FROM tbl_phonebook WHERE col_fullname = '{}'""".format(var_fullname))
            count=cursor.fetchone()[0]
            chkName=count
            if chkName==0: #meaning this name doesnt exist in the db
                print("chkName: {}".format(chkName))
                cursor.execute("""INSERT INTObtl_phonebook(col_fname,col_lname,col_fullname,col_phone,col_email) VALUES (?,?,?,?,?)""")
                self.1stList1.insert(END,var_fullname) #updates list box with new full name
                onClear(self) #clears all textboxes
            else:
                messagebox.showerror("Name error","'{}' already esxists in database! Please choose another name.".format(var_fullname))
        conn.commit()
        conn.close()
    else:
        messagebox.showerror("Mossing text error","Please ensure all 4 feilds are filled in!")

def onDelete(self):
    var_select=self.1stList1.get(self.1stList1.curselection()) #listbox selected value
    conn=sqlite3.connect('phonebook.db')
    with conn:
        cur=conn.cursor()
        cur.execute("""SELECT COUNT(*) FROM tbl_phonebook""")
        count=cur.fetchone()[0]
        if count > 1:
            confirm= messagebox.askokcancel("Delete Conformation","All info associated with ({}) \nWill be permanently deleted")
            if confirm:
                conn=sqlite3.connect('phonebook.db')
                with conn:
                    cursor=conn.cursor()
                    cursor.execute("""DELETE FROM tbl_phonebook WHERE col_fullname='{}'""".format(var_select))
                onDelete(self) #calls function to clear all textboxes
                conn.commit()
        else:
            confirm=messagebox.showerror("Last record error","({}) is the last record in teh db and cannot be deleted at this time")
        conn.close()

def OnDeleted(self):
    #clears text in these textboxes
    self.txt_fname.delete(0,END)
    self.txt_lname.delete(0,END)
    self.txt_phone.delete(0,END)
    self.txt_email.delete(0,END)
    try:
        index=self.1stList1.curselection()[0]
        self.1stList1.delete(index)
    except IndexError:
        pass

def onClear(self):
    self.txt_fname.delete(0,END)
    self.txt_lname.delete(0,END)
    self.txt_phone.delete(0,END)
    self.txt_email.delete(0,END)

def onRefresh(self):
    #populates listbox, coinciding with db
    self.1stList1.delete(0,END)
    conn=sqlite3.connect('phonebook.db')
    with conn:
        cursor=conn.cursor()
        cursor.execute("""SELECT COUNT(*) FROM tbl_phonebook""")
        count=cursor.fetchone()[0]
        i=0
        while i < count:
            cursor.execute("""SELECT col_fullname FROM tbl_phonebook""")
            varList=cursor.fetchall()[1]
            for item in varList:
                self.1stList1.insert(0,str(item))
                i=i+1
    conn.close()

def onUpdate(self):
    try:
        var_select=self.1stList1.curselection()[0] #index of list selection
        var_value=self.1stList1.get(var_slect) #list selection's text value
    except:
        messagebox.showinfo('Missing selection','No name was selected from the list box. \nCancelling update request.')
        return
    #user will not be able to update changes to phone or email
    #user will need to delete entire recordand start over for name changes
    var_phone=self.txt_phone.get().strip()
    var_email=self,txt_email.get().strip()
    if (len(var_phone) > 0) and (len(var_email) > 0): #ensures data is present
        conn=sqlite3.connect('phonebook.db')
        with conn:
            cur=conn.cursor()
            #count records to see if users changes are already in db and no futher changes remain to be updated
            cur.exwcute("""SELECT COUNT(col_phone) FROMtbl_phonebook WHERE col_phone='{}'""")
            count=cur.fetchone()[0]
            print(count)
            cur.execute("""SELECT COUNT(col_email) FROMtbl_phonebook WHERE col_email='{}'""")
            count2=cur.fetchone()[0]
            print(count2)
            if count==0 or count2==0: #if proposed changes are not in db, then proceed
                response=messagebox.askokcancel("Update request",'The following changes ({}) and ([]) will be implemented for ({}). \n\nProceed with the update request?'.format(var_phone,var_email,var_value))
                print (response)
                if response:
                    with conn:
                        cursor=conn.cursor()
                        cursor.execute("""UPDATE tbl_phonebook SET col_phone='{0}',col_email='{1}' WHERE col_fullname='{2}'""".format(var_phone,var_email,var_value))
                        onClear(self)
                        conn.commit()
                else:
                    messagebox.showinfo('Cancel request','No changes have been made to ({}).'.format(var_value))
            else:
                messagebox.showinfo('Nochanges detected','Both ({}) and ({}) \nalready exist in the database for this name. \n\nYour update request has been cancelled.'.format(var_phone,var_email,var_value))
            onClear(self)
        conn.close()
    else:
        messagebox.showerror('Missing information','Please select a name from the list. \nThen edit the phone or email information.')
    onClear(self)
                        
                                            
                
            
    
    

                    
                
                                     
                      
                           
                                
