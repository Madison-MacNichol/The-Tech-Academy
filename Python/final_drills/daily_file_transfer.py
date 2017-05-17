
import shutil
import os
import time


def checkFile():
    ##Checks files in folder A to see which ones have been modified in the last 24 hours 

    source = "C:\\Users\\Student\\Desktop\\Folder A" # can be changed to check any folder
    result = []
    modified = time.time() - 24*60*60 
    for path, subfolder, filename in os.walk(source):
        for i in filename:
            filepath = os.path.join(path, i)
            if os.path.getmtime(filepath) >= modified or os.path.getctime(filepath) >= modified:
                result.append(filepath)
    moveFiles(result)


def moveFiles(result):
    ##Copies all files in list from folder A that have been modified to folder B
    
    destination = "C:\\Users\\Student\\Desktop\\Folder B" # can be changed to any destination folder
    for filepath in result:
        shutil.move(filepath, destination)


checkFile()
   

