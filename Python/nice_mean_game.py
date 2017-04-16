# Python: 2.7.13
#
# Author: Madi Mac  
#
# Purpose: The Tech Academy - Demonstrating passing variables
# from function to function, while producing a game.
#


def start(nice=0,mean=0,name=""):
    #get users name
    name = describe_game(name)
    nice,mean,name = nice_mean(nice,mean,name)

def describe_game(name):
    """
        checks that this is a new game, if new, get users name. if not new,
        thank player for flaying and continue with game
    """
    if name !="": #as in we dont have the users name yet & need to get it
        print("\nThank you for playing again, {}!".format(name))
    else:
        stop = True
        while stop:
            if name == "":
                name = raw_input("\nWhat is your name? ").capitalize()
                if name !="":
                    print ("\nWelcome, {}!".format(name))
                    print ("\nIn this game, you will be greeted by several different people. \nYou can be nice or mean.")
                    print ("At the end of the game your fate will be influenced by your actions.")
                    stop = False
        
    return name

def nice_mean(nice,mean,name):
    stop = True
    while stop:
        show_score(nice,mean,name)
        pick = raw_input("\nA stranger appracahes you for a conversation. \nWill you be nice or mean? n/m: ").lower()
        if pick == "n":
            print("They smile, wave and walk away...")
            nice = (nice + 1)
            stop = False
        if pick == "m":
            print ("\nThe stranger glares menecingly and storms off...")
            mean = (mean + 1)
            stop = False
    score(nice,mean,name) #this passes three variables to the score()

def show_score(nice,mean,name):
    print ("\n{}, you currently have({}, Nice) and ({}, Mean) points.".format(nice,mean,name))
         

def score(nice,mean,name):
    #score function is being passed the values stored within the 3 variables
    if nice > 5: #if valid, call win function
        win(nice,mean,name)
    if mean > 5: #if valid, call lose function
        lose(nice,mean,name)
    else: #if neither win nor lose, call nice_mean function again
        nice_mean(nice,mean,name)
        
    



if __name__ == "__main__":
           start()




