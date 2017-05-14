import shutil
import os

folder_a = ("C:\\Users\\Student\\Desktop\\Folder A")
banana = os.listdir(folder_a)
folder_b = ("C:\\Users\\Student\\Desktop\\Folder B")

for file in banana:
    if file.endswith(".txt"):
        shutil.move(folder_a + "\\" +file,folder_b)
    print(file)








        
