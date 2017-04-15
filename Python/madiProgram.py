epic_programmer_dict = {
    'Madi Mac' : ['madimac@gmail.com', 111],
    'Diana Dee' : ['dd@yahoo.com', 222],
    'Beau Delouve' : ['bdouv@hotmail.com', 333],
    'Tyler Toots' : ['tyc@gmail.com', 444],
    'Jordan Van' : ['jv@yahoo.com', 555]
    }

print epic_programmer_dict

personsName = raw_input('Please enter a name: ')

print personsName

personsInfo = epic_programmer_dict[personsName]

print personsInfo

try:
    personsInfo = epic_programmer_dict[personsName]
    print personsInfo
except:
    print 'No information found for that name!'
