epic_programmer_dict = {
    'madi mac' : ['madimac@gmail.com', 111],
    'diana dee' : ['dd@yahoo.com', 222],
    'beau delouve' : ['bdouv@hotmail.com', 333],
    'tyler toots' : ['tyc@gmail.com', 444],
    'jordan van' : ['jv@yahoo.com', 555]
    }

def searchPeople (personsName):

    try:
        personsInfo = epic_programmer_dict[personsName]
        print 'Name: ' + personsName.title()
        print 'Email: ' + personsInfo [0]
        print 'Number: ' + str (personsInfo [1])
    except: 
        print 'No information found for that name!'

userWantsMore = True
while userWantsMore == True:
    personsName = raw_input('Please enter a name: ').lower()
    searchPeople(personsName)
    userWantsMore = False
    searchAgain = raw_input('Search again? (y/n)')
    if searchAgain == 'y':
        userWantsMore = True
    elif searchAgain == 'n':
        userWantsMore = False
    else:
        print 'I dont understand'
        userWantsMore = False
        



