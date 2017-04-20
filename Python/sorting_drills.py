#bubble sort method
def madiSort (myList):
    for x in range(len(myList)-1,0,-1):
        for y in range(x):
            if myList[y]>myList[y+1]:
                temp = myList[y]
                myList[y] = myList[y+1]
                myList[y+1] = temp
            
myList = [67, 45, 2, 13, 1, 998]
madiSort(myList)
print (myList)


#insertion sort method
def madiNextSort(myNextList):
    for num in range(1,len(myNextList)):
        print (num)
        currentvalue = myNextList[num]
        print(currentvalue)
        position = num
        print(position)
        while position>0 and myNextList[position-1]>currentvalue:
            print(myNextList)
            myNextList[position]=myNextList[position-1]
            postion = position-1
        myNextList[position]=currentvalue

myNextList = [89, 23, 33, 45, 10, 12, 45, 45, 45]
madiNextSort(myNextList)
print(myNextList)
