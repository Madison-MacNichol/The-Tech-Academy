
# string
name = 'Madi Mac'
birthday = 'July 11th'
# integer
age = 28
# float
weight = 125.334
email = 'madimac@gmail.com'

print 'Name: '+name, 'Age: ' +str(age), 'On: '+birthday, 'Weight: '+str(weight)

# .format
print 'Madi is {} years old on {}!'.format(28, 'July 11th')

#operators
def letsDoStuff(x,y):
    addition = x + y
    subtraction = y - x
    multiplication = x * y
    division = y / x
    return 'Add= '+ str(addition),'Minus= '+str(subtraction),'Times= '+str(multiplication),'Div= '+str(division)

print letsDoStuff(15,75)


def letsDoMoreStuff(x,y):
    x = x
    print x
    percent = y % x 
    print percent
    x += 3
    print x

letsDoMoreStuff(7,60)

x = True
y = True

print 'x and y are',x and y
print 'x or y are',x or y
print 'not x is',not x
print 'not y is',not y 

#conditional statements & while loop
def drinkChoice():
    stop = True
    while stop:
        choice = raw_input("\nWhat do you want to drink: milk, water or beer?").lower()
        if choice == "milk":
            print ("\nPlease go back to kindergarten you child!")
            stop = True
            choice2 = raw_input("\nDo you want something else? y/n: ").lower()
            if choice == "y":
                drinkChoice()
            if choice == "n":
                print ("\nLater Sucka!")
                stop = False
                exit()
        elif choice == "water":
            print ("\nYeah ok sure you square. Pick up your water at the counter.")
            stop = True
            choice2 = raw_input("\nDo you want something else? y/n: ").lower()
            if choice == "y":
                drinkChoice()
            if choice == "n":
                print ("\nLater Sucka!")
                stop = False
                exit()
        elif choice == "beer":
            print ("\nThis is a childrens venue you drunk! Pull yourself together!")
            stop = True
            choice2 = raw_input("\nDo you want something else? y/n: ").lower()
            if choice == "y":
                drinkChoice()
            if choice == "n":
                print ("\nLater Sucka!")
                stop = False
                exit()
        else:
            print ("\nThere are only three choices you moron!")
            choice2 = raw_input("\nDo you want something else? y/n: ").lower()
            if choice == "y":
                drinkChoice()
            if choice == "n":
                print ("\nLater Sucka!")
                stop = False
                exit()
                #why are my n coices not working?
        
            
#drinkChoice()

#for loop
for x in range(13):
    print(x)

#iterating list
myList = [["apples","oranges","grapes"],["bananas","grapes"],["bananas",'apples','grapes'],['bananas','apples']]
for x in myList:
    if len(x)==3:
        print x

#tuple list
myTuple = ('apples','oranges','grapes','bananas','papayas')
print myTuple
#how to drop down to next line?

#function returning a string
def myFamily():
    mom = 'lori'
    dad = 'doug'
    brother = 'neil'
    sister =  'none'
    print 'My mom is '+mom+' and my dad is '+dad+ '.'

myFamily()




           
