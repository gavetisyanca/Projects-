num = 25

sq_root = num**0.5

print(sq_root)


s = 'hello'
# Print out 'e' using indexing

print(s[1])

s ='hello'
# Reverse the string using slicing
print(s[::-1])

s ='hello'
# Print out the 'o'

# Method 1
print(s[4])
# method 2
print(s[-1])

# Build this list [0,0,0] two separate ways.
lis2 = [0,0,0]



# Reassign 'hello' in this nested list to say 'goodbye' instead:

list3 = [1,2,[3,4,'hello']]

list3[2][2] = "goodbye"
print(list3)

# Sort the list below:
list4 = [5,3,4,6,1]
print(sorted(list4))
print(list4.sort())



#Dictionaries
#Using keys and indexing, grab the 'hello' from the following dictionaries:


d = {'simple_key':'hello'}
# Grab 'hello'
print(d['simple_key'])

d = {'k1':{'k2':'hello'}}
# Grab 'hello'
print(d['k1']["k2"])


# Getting a little tricker
d = {'k1':[{'nest_key':['this is deep',['hello']]}]}

#Grab hello
print(d['k1'][0]['nest_key'][1][0])

# This will be hard and annoying!
d = {'k1':[1,2,{'k2':['this is tricky', {'tough':[1,2,['hello']]}]}]}

print(d['k1'][2]['k2'][1]['tough'][2][0])

# Dictionaries cannot be sorted because they are immutable
# Tuples cannot be changed and modified, whereas, lists can be changed and modified
list5 = [1,2,2,33,4,4,11,22,3,3,2]
print(set(list5))

a = [2]*3
print(a)

for _ in 'Hello World':
    print("Cool")
tup = (1,2,3)
for item in tup:
    print(item)
# tuple unpacking
my_list = [(1,2),(3,4),(5,6),(7,8)]
for a, b in my_list:
    print(a)
    print(b)

mylist = [(1, 2, 3), (4, 5, 6), (7, 8, 9)]
for a, b, c in mylist:
    print(a)
# iterate through dictionary
d = {'k1': 1, "k2": 2, "k3": 3}
for item in d:
    print(item)
for items in d.items():
    print(items)
for value in d.values():
    print(value)
for key, value in d.items():
    print(key, value)
# While loop
x = 0
while x <=5:
    print(x)
    x+= 1
else:
    print(f'{x} is > than 5')
# break, continue, pass...

x = [1,2,3]
for object in x:
    pass
print("end of the script")

mystring = "Oxana"
for object in mystring:
    if object == 'a':
        continue
    print(object)
# Difference
print("difference")
for object in mystring:
    if object == 'a':
        break
    print(object)

x = 0
while x <= 5:
    print(x)
    if x == 3:
        break
    x += 1
#  Useful operators
# - Range functions
for num in range(0, 15, 2):
    print(num)
#     casting the range into list and we get list back. list IS NOT STORED in memory
#  It is more efficient this way
print(list(range(0,15,2)))

# Enumerate
index_count = 0
for letter in "abcde":
    print(f'At {index_count} the letter {letter}')
    index_count += 1
print("difference")
index_count2 = 0
word = "abcde"
for letter in word:
    print(word[index_count2])
    index_count2 += 1
for item in enumerate(word):
    print(item) # returns tuple
for index, letter in enumerate(word):
    print(index, letter)
    print("\n")
#     zip function ( does opposite of enumerate - connects together 2 objects)

listy_1 = [1,2,3,4,5]
listy_2 = ['a','b','c','d','e']
listy_3 = [100, 200, 300, 400, 500]
for item in zip(listy_1,listy_2,listy_3):
    print(item)

# to get the list with zipped item we have to cast into list
zippedlist = list(zip(listy_1, listy_2, listy_3))
print(zippedlist)
# zippedlist unpacking (opposite of what we've done with zip() function
for a, b, c in zippedlist:
    print(a)
    print(b)
    print(c)
#  "in" operator
d1 = {"key1": "value"}
# "key1" in d1.keys()  returns True
# "value in d1.values() returns True

# min max functions
print(min(listy_1))
print(max(listy_1))

# Shuffle function is a built in library from "random" libruary
from random import shuffle
shuffle(listy_1)
print(listy_1)
print(shuffle(listy_1))
print(listy_1)
shuffle(listy_1)
print(listy_1)
# picking random integer
from random import randint
print(randint(0, 100))

# List comprehension .
#  List comprehension is a quick way of creating list
my_string = "hello"
# emptlist = []
# for letter in my_string:
#     emptlist.append(letter)
# print(emptlist)
#  now the same thing by using list comprehension (shorter, faster, better...)
emptlist = [letter for letter in my_string]
print(emptlist)

new_list = [x for x in "word"]
print(new_list)

new_list1 = [y for y in range(0,20)]
print(new_list1)
#  in list comprehension we als can do operations ex:
new_list1 = [y**2 for y in range(0,20)]
print(new_list1)
# output: [0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361]
new_list1 = [y for y in range(0,20) if y % 2 == 0]
print(new_list1)

celcius = [0, 10, 20, 34.5]
fahrenheit = [(9/5) * temp + 32 for temp in celcius]
print(fahrenheit)
#  list comprehension with 'if' statements. hard to read
# do not overuse it for the sake of writing in 1 line ex:
results = [x if x % 2 == 0 else x**2 for x in range(0,21)]
print(results)

# FUNCTIONS
# def name_of_function
#  '''
#   DOCSTRING EXPLAINS FUNCTION

#  '''
#   print("Hello" + name)
# name_of_function("George")
# Example
def name_of_function(name):
    '''
    DOCSTRING Describes the function
    INPUT: name
    OUTPUT: HEllo name
    '''
    print("Hello " + name)


name_of_function("George")


def name_of_function(name="david"):
    # when we have a default value in case if no argument
    # is being passed to a function
    '''
    DOCSTRING Describes the function
    INPUT: name
    OUTPUT: HEllo name
    '''
    return "Hello " + name


name_of_function("George")
type(name_of_function())


def dog_check(mystring):
    return 'dog' in mystring.lower()


def pigfwoit(word):
    first_letter = word[0]
    # check for vowel
    if first_letter in 'aoieu':
        pigword = word + 'ay'
    else:
        pigword = word[1::] + first_letter + 'ay'
    return pigword


# *ARGS and **KWARGS - we treat (*args) as tuple of paramaters that are coming in and we treat (**kwargs) as dictionary
def my_func(*args):
    return sum(args) * 2


# now we can pass as many arguments as  we want without worrying of throwing an error
my_func(1, 25, 6, 7)


def myfunc(**kwargs):
    for item in kwargs.keys():
        if 'fruit' == item:
            return f"My favourite fruit is {kwargs['fruit']}"
        return "Sorry I didn't find any fruit here"


def myfunc(**kwargs):
    for item in kwargs.keys():
        if 'fruit' == item:
            return f"My favourite fruit is {kwargs['fruit']}"
        return "Sorry I didn't find any fruit here"


def myfunc(**kwargs):
    for item in kwargs.keys():
        if 'fruit' == item:
            print(f"My favourite fruit is {kwargs['fruit']}")
        else:
            print("Sorry I didn't find any fruit here")
    return kwargs


myfunc(fruit="bananas", veggie="eggplant")


# we can use args and kwargs in combination together
def what_ilike(*args, **kwargs):
    return print(f"I like {args[2]} {kwargs['food']}")


# result = what_ilike()
# print(result)
def myfunclist(*args):
    list1 = []
    for item in args:
        if item % 2 == 0:
            list1.append(item)
    return list1


# def mysam(string):
#     result = ""
#     for i, v in enumerate(string):
#         if i % 2 == 0:
#             result += v.upper()
#         else:
#             result += v.lower
#     return result
# mysam("amazing")

def myfunc(string):
    result = ""
    for i, v in enumerate(string):
        if i % 2 == 0:
            result += v.upper()
        else:
            result += v.lower()
    return result
myfunc("amazing")

# we can change orders of parameters when we specify the value(argument)  ex
def exponent(num, power = 3):
    return num**power
print(exponent(power = 4, num = 4))
# SCOPES : Global
total = 4
def fu():
    global total
    # global we use when we manipulate the variable like total+=1 , if we don't manipulate
    # we just print we don't need that ex:
    # name = "Rusty
    # def greet():
        #print(name)
    # OUTput: "Rusty
    total+=1
    return total
fu()

# Non - local scope refers to the variable that is in outer layer of the nested function for ex
def outer():
    count = 0
    def inner():
        nonlocal count
        count+=1
        return count
    return inner()

# DOCSTRING - explains what the function does(documentation part """ content """
print(print.__doc__ ) # way to access the docstring of a function


def last_element(last_el):
    if last_el is False:
        return None
    return len(last_el)
last_element([1444])

def myfunc(string):
    result = ""
    for i, v in enumerate(string):
        if i % 2 == 0:
            result += v.upper()
        else:
            result += v.lower()
    return result
myfunc("amazing")

# NO TOUCHING ============================================
from random import choice
food = choice(['apple', 'grape', 'bacon', 'steak', 'worm', 'dirt'])
# NO TOUCHING =============================================
if food == "apple" or food == "grape":
    print("fruit")
elif food == "bacon" or food == "steak":
    print("meat")
else:
    print("yuck")
# YOUR CODE GOES HERE vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv

#
print("The {} {} {}".format("fox", "quick", "red"))
# print("The {r} {q} {f}".format(f ="fox", q = "quick", r = "red"))

# Float formatting "{value:width.precisionf}"
result = 100/777
print(result)
print("the result is {r:1.4f}".format(r=result))


# f strings
age = 4
name = "Sam"
print(f'{name} is {age} years old')

my_list = ["one", "two", "three"]
my_list.append(23)
print(my_list)
my_list.pop(2)
print(my_list)

my_new_list = [1,4,5,6,12,-2,-5]
my_new_list.sort()
print(my_new_list)
# Tuples - Immutable (cannot be modified, changed)
t = (1,2,3)

listes = [1,2,3]
print(type(t))
t = ('a', 'a','b')
print(t.count('a'))# how many times occurs
print(t.index('a')) # when the first time appears
listes.append(34)
listes[1] = 45
print(listes)

# Sets
my_set = set()

my_set.add(3)
print(my_set)
newone = [77,7,7,7,71,1,1,5,5,5,52,2,2,2,2,54,54,44,4,4]
print(set(newone))

myfile = open("myfile.txt")

print(myfile.read())
myfile.seek(0) # resets the cursor so it can read from the very
# beginning of the file
print(myfile.read())
myfile.seek(0)
print(myfile.readlines()) # makes each line as a separate element in the list
#myfile.read("filepath") - gets access to the file from any location

with open("myfile.txt") as my_new_file:
    contents = my_new_file.read()
print("ALFONSO")

print(contents)

listin = [0,2]
print(listin[])

for x in range(0, 21):
    if x == 4 or x ==13:
        print(f'{x} is unlucky number')
    elif x % 2 == 0:
        print(f'{x} is even number')
    else:
        print(f'{x} is odd number')

# msg = input("Say smth")
# while msg != "Stop copying me":
#     print(msg)
#     msg = input()
# print("You won!")
from random import randint  # use randint(a, b) to generate a random number between a and b

number = 0 # store random number in here, each time through
i = 0  # i should be incremented by one each iteration


while number != 5:
    number = randint(1, 10)
    print(number)
    i+=1
print(i)

# while number != 5:
#     print(number)
#     i += 1


sounds = ["super", "cali", "fragil", "istic", "expi", "ali", "docious"]
# Define your code below:
result = ''
for s in sounds:
    result += s.upper()
print(result)

# sounds = ["super", "cali", "fragil", "istic", "expi", "ali", "docious"]
#     # Define your code below:
# result = ''
# for s in sounds:
# result += s
# result = result.upper()


# LIST METHODS (APPEND, EXTEND, INSERT)
friends = [1,2,3]
friends.append(6)
print(friends)

friends.extend(["hey", "whatsup"])
print(friends)
friends.extend([500,700,1000])
print(friends)
# append and extend adds to the end of the list
#  In order to add anything to the beginning or anywhere we want, you have to use "insert" ex:
# friends.insert(index#, value)
friends.insert(1, "THE VERY BEGINNING OF THE LIST")
print(friends)
friends.insert(len(friends), "the very END!!!!")
print(friends)
# CLEAR, POP, REMOVE
# CLEAR Removes everything
# friends.clear()
# print(friends)
# Pop removes single item based in index # BY default it removes the very last item
print(friends.pop())
print(friends.pop(5))
print(friends)
# Remove removes the item based on the value. For example you have an item you don't know if its in the list or not
# use .remove(value) to remove that value
friends.remove(500)
print(friends)
friends.append(6)
print(friends)

# INDEX, COUNT, SORT, REVERSE, JOIN
# INDEX Finds index of a specific value in a list
print(friends.index(6))
print(friends.index(1, 0, 6)) # object, start, finish(end)
# COUNT - counts number of values that has in the list
print(friends.count(6))
#  REVERSE - reverses the order(in-place)
friends.reverse()
print(friends)
#  SORT - sorts the list (in-place)
numBar = [6,21,56,1,0, 57]
numBar.sort()
print(numBar)
# Join(its not a list method its a string method. Usually is being used to convert list values into strings
listwithvalues = ["Mr", "Avetisyan", "Dr", "Jacob", "Mr", "Zeynab"]
newvalues = ". ".join(listwithvalues)# ". " is added between  values returns the value , so we can save in the variable
print(newvalues)

# SLICING
# list [start: stop: stop]
# reversing
str1 = "ILOVE YOU"
print(str1[::-1])
names1 = ["alfonso", "amareto","idalgo"]
print(names1[1][1::])
numeric = [1,2,3,4,5]
numeric[1:3] = ['a','b','c','d']
print(numeric)

#  Swapping list
name12 = ["alfonso", "fiorello"]
name12 [0], name12[1] = name12[1], name12[0]
print(name12)

new_list = ["Ellie", "Tim", "Matt"]
answer = [letter[0] for letter in new_list ]
print(answer)
answer2 =[x for x in [1,2,3,4,5,6] if x%2 == 0]
print(answer2)

answer3 = [x for x in [1,2,3,4] if x in [3,4,5,6]]
print(answer3)


answer4 = [x[::-1].lower() for x in ["Elie", "Tim", "Matt"]]
print(answer4)


# NESTED for loops
new_list3 = []
for x in [1, 2, 3]:
    for y in [1, 10, 1000]:
        new_list3.append(y*x)
print(new_list3)
# same result with list comprehension
new_list3 = [x*y for x in [1,2,3] for y in [1, 10, 1000]]
print(new_list3)
# looping through values in nested loops
nested_list1 = [[1,2,3],[4,5,6],[7,8,9]]
# for x in nested_list1:
#     for y in x:
#         print(y)
# same thing using list comprehension
nested_list2 = [[print(y) for y in x] for x in nested_list1]


# BOARD GAME PART OF THE CODE using nested lists with list comprehensions
board = [[x for x in range(1, 10)] for y in range(1,10)]
print(board)
board2 = [["X" if x % 2 != 0 else "O" for x in range(1,4)] for y in range(1,4)]
print(board2)

answer = [[x for x in range(0,3)] for y in range(0,3)]
print(answer)

answer77 = [x for x in 'amazing' if x not in "aoeiu"]
print(answer77)

# DICTIONARY METHODS (CLEAR, COPY, FROMKEYS and GET
# clear clears out all keys and values withing a dictionary ex
newdict = {"name":"john", "lastname": "smith", 4: 56}

# newdict.clear()
print(newdict)
# COPY method copies dictionary
newcopydict = newdict.copy()
print(newcopydict)
# FROMKEYS - creates key value pairs from comma separated values (CSV)
newone = {}.fromkeys("albert", 1)
print(newone)
newone2 = {}.fromkeys(["newgame"], 2)
print(newone2)
newone3 = {}.fromkeys([1,2,4,5,6], "change")
print(newone3)
newone4 = {}.fromkeys("amarozo", [1,2,3,4,5])
print(newone4)
newone6 = {}.fromkeys(["alfred", "baret", "darina", "marina", "michel"], [1,2,3,4,5])
print(newone6)
# can also be
# newone5 = dict.fromkeys(["angel"], 2)
# print(newone5)
new_user = {}.fromkeys(["username", "profile", "score", "origin", "years of experience"], "unknown") # creates default values
print(new_user)
newone7 = {}.fromkeys(range(1,5), "unknown") # used with range function
print(newone7)
# Get method retrieves key in dictionary and if it doesn't find, doesn't throw an error example:
somevalue = {"a":1, "b":2, "c":3}
print(somevalue.get("a"))
print(somevalue.get("d")) # doesn't throw an error just returns None

# This code picks a random food item:
from random import choice #DON'T CHANGE!
food = choice(["cheese pizza", "quiche","morning bun","gummy bear","tea cake"]) #DON'T CHANGE!

#DON'T CHANGE THIS DICTIONARY EITHER!
bakery_stock = {
    "almond croissant" : 12,
    "toffee cookie": 3,
    "morning bun": 1,
    "chocolate chunk cookie": 9,
    "tea cake": 25
}
# YOUR CODE GOES BELOW:
print(food)
if food in bakery_stock:
    print("{} left".format(bakery_stock[food]))
else:
    print("We don't make that ")


# Pop, popitem, update

itemdict = dict(a=3, b=5, c = 6)
print(itemdict)
itemdict.pop("a") # removes key value based on the precise values provided
print(itemdict)
itemdict.popitem() # removes random item from the dictionary
print(itemdict)
newdict2 = {}
newdict2.update(itemdict) # updates dictionary  based on the argument provided
print(newdict2)
playlist = dict(title="patagoina bus", author="benjamin",
                songs=[
                    {"songname": "never never enough", "duration": 10.23, "artistName": ["blue"]},
                    {"songname": "be with you", "duration": 0.23, "artistName": ["jackson"]},
                    {"songname": "cold as ice", "duration": 0.23, "artistName": ["d12", "50 cents"]},
                    {"songname": "fantasy", "duration": 0.23, "artistName": ["pitbul", "jarule", "drake"]},
                    {"songname": "candy shop", "duration": 0.23, "artistName": ["blue"]},

                ],
                date=[2019, 2018, 2017])
print(playlist)

total_duration = 0
for song in playlist["songs"]:
    total_duration += song["duration"]
print(total_duration)

newwave = dict(first = 1, second = 2, third = 3, fourth = 4 )

# newdict34 = {key: value**3 for key, value in newwave.items()}


# print(newdict34)
newdict34 = {(key*2 if key is "second" else key): value**3 for key, value in newwave.items()}
print(newdict34)
str2 = "ABC"
str4 = "123"
combo = {str2[i]: str4[i] for i in range(0,len(str2))}
print(combo)
#
# article = [1,2,3,4,5]
evenorodd = {num:("even" if num % 2 == 0 else "odd") for num in range(0, 102)}

list1 = ["CA", "NJ", "RI"]
list2 = ["California", "New Jersey", "Rhode Island"]

# make sure your solution is assigned to the answer variable so the tests can work!
answer23 = {list1[i]: list2[i] for i in range(len(list2))}
print(answer23)

person = [["name", "Jared"], ["job", "Musician"], ["city", "Bern"]]

# use the person variable in your answer
person2 = dict(person)
print(person2)


answer = {num:chr(num).upper() for num in range(65, 91)}
print(answer)

# Locations and using Tuples . tuples can be used in dictionaries as keys, whereaas lists cannot be used as keys

location = {(30.567, 54.345): "Tokyo", (23.456, 14.987): "Amsterdam", (56.876, 49.678): "Moscow"}
print(location[30.567, 54.345])
# .items() method used in dictionaries return list of tuples ex:
cat = {"name": "rusty", "age": 12, "iscute": True}
print(cat.items())
# .count() method used to count number of items in tuple also .index() finds index associated with the value
# Sets unordered collections of data, however, you can use good old for loop to access the data
# METHODS used in SETs:
# .add() method
s = {1,2,3}
s.add(4)
print(s)
# .remove() if argument passed to .remove() is not present in the set it throws an error
# in order to avoid throwing error use .discard()
s.remove(2)
print(s)
s.discard(7) # no error shows
print(s.pop())
# clear
s.clear()

# sets can be used to find intersections and unions like in math
#  for example using "&" for intersection and "|" for union of unique objects from different sets

def last_element(last_el):
    if last_el is False:
        return None
    return len(last_el)
last_element([])
def number_compare(x, y):
    if x > y:
        return "{x} is greater than {}".format(x, y)
    elif y > x:
        return "{y} is greater than {x}".format(y, x)
    else:
        return "They are equal!"
# when we use parameters, args , default parameters and kwargs, we HAVE TO KNOW THTAT
#ORDER MATTERS
# 1. parameters (regular parameters)
# 2. *args
# 3. default parameters
# 4. **kwargs
# example
def display_info(a,b, *args, instructor = "colt", **kwargs):
    return [a,b,args,instructor, kwargs]
print(display_info(1,2,3, last_name = "steele", job = "instructor"))

def summer_69(arr):
    count = 0
    for x in range(len(arr)):
        count += arr[x]
    return count
summer_69([1,2,3])

print(evenorodd)

# ANY and ALL
names = ['carl', 'caron', 'cat', 'capitan']
print(all([name[0] == 'c' for name in names])) # return TRUE(cause all values in names
# starts with 'c'. If by any reason one of these values is not true(meaning doesn't start
# with 'c' then it WILL Return FALSE
#
newnumbers = [[],'', 1, 0]
print(any(newnumbers)) # returns TRUE if 'any' item in the iterable is thruthy. 1 is truthy
# thats why it returns true

users = [
	{"username": "samuel", "tweets": ["I love cake", "I love pie", "hello world!"]},
	{"username": "katie", "tweets": ["I love my cat"]},
	{"username": "jeff", "tweets": [], "color": "purple"},
	{"username": "bob123", "tweets": [], "num": 10, "color": "teal"},
	{"username": "doggo_luvr", "tweets": ["dogs are the best", "I'm hungry"]},
	{"username": "guitar_gal", "tweets": []}
]
# Sorted() and .sort() are different. .sort() is a list method only it accepts, lists only, alos
# it changes the original copy, however, sorted() works with any other iterable but lists and will
# NOT change the original copy it will simply give back a new copy sorted.

# To sort users by their username
sorted(users,key=lambda user: user['username'])

# Finding our most active users...
# Sort users by number of tweets, descending
sorted(users,key=lambda user: len(user["tweets"]), reverse=True)

# ANOTHER EXAMPLE DATA SET==================================
songs = [
	{"title": "happy birthday", "playcount": 1},
	{"title": "Survive", "playcount": 6},
	{"title": "YMCA", "playcount": 99},
	{"title": "Toxic", "playcount": 31}
]

# To sort songs by playcount
sorted(songs, key=lambda s: s['playcount'])

fg = "amzing"
newfg = sorted(fg)
print(newfg)
# --------------------------------------
# MIN AND MAX 
# --------------------------------------
names = ['Arya', "Samson", "Dora", "Tim", "Ollivander"]

# finds the minimum length of a name in names
min(len(name) for name in names) # 3

# find the longest name itself
max(names, key=lambda n:len(n)) #Ollivander

songs = [
    {"title": "happy birthday", "playcount": 1},
    {"title": "Survive", "playcount": 6},
    {"title": "YMCA", "playcount": 99},
    {"title": "Toxic", "playcount": 31}
]

# Finds the song with the lowerest playcount
min(songs, key=lambda s: s['playcount']) #{"title": "happy birthday", "playcount": 1}

# Finds the title of the most played song
max(songs, key=lambda s: s['playcount'])['title'] #YMCA

# REVERSED() Works the same way as sorted(). So, there is a list method callled 
# .reverse(). However this one works with other iterable objects as well and 
# returns a copy of the object 
list1 = [1,2,3,4,5]
list(reversed(list1))
for x in reversed(range(0,10)):
    print(x)
# prints ...9,8,7,6,5,4,3,2,1,0

# SUM()
sum([1,2,3]) # 6
sum([1,2,3], 10) # 16 (10 + 1,2,3) starts at 10 second parameter
math.fsum()
# more precise sum with the float 
round() # by default, takes 2 arguments, rounds the number to the nearest integer, otherwise define 
# 2nd argument number of decimal points 
round(2.45634634, 4) # 2.4563 
def max_magnitude(listy):
    return max([abs(x) for x in listy])
def sum_even_values(*args):
    return sum([x if x % 2 == 0 else 0 for x in args]) # returns integer 

# ZIP Function 
a = [1,2,3,4,5]
b = [6,7,8,9,10]
list(zip(a,b)) # returns [(1, 6), (2, 7), (3, 8), (4, 9), (5, 10)] can work with more than 2 lists 

# to UNZIP it you do the following:
c = [('ha', 'ge', 'lol'), ('kek', 'mek', 'sec'), (1,2,3), (555,777,556), ('a','b','c')]
list(zip(*c)) # returns [('ha', 'kek', 1, 555, 'a'), 
                        # ('ge', 'mek', 2, 777, 'b'), 
                        # ('lol', 'sec', 3, 556, 'c')]
name = ['dan', 'and', 'kate']
midterm = [98, 79, 89]
final = [79,90, 69]

# tuple(zip(name, midterm, final))

# list(zip(midterm, final))
[abs(x) for x in list(zip(midterm, final))]
[zip(midterm, final)]
dict(zip(name,[max(x) for x in list(zip(midterm, final))]))
dict(map(lambda n: max(n), zip(midterm, final)))

# function exercise has to return interleave('ha', 'ho') -> 'hhao'
def interleave(s1, s2):
    return ''.join([''.join(x) for x in zip(s1, s2)])

# triple and filter
def triple_and_filter(list1)
    return [x*3 for x in (filter(lambda x: x % 4 == 0, list1))]


names = [{'first': 'Elie', 'last': 'Schoppik'}, {'first': 'Colt', 'last': 'Steele'}]
 # ['Elie Schoppik', 'Colt Steele']

def extract_full_name(names):
    return  list(map(lambda x: "{} {}".format(x['first'],x['last']), names))
extract_full_name(names)

#------------------------------------
DEBUGGING ! ! ! 
#------------------------------------
# ERRORS (The most common ones are the following):
# 1. Syntax error
# 2. Name Error (when the name is not defined)
# 3. Type Error when you try to do operations with the types that cannot be together 
# 4. Index error - when we try to access element on the iterable object that doesn't exist
# out of range or something like that 
# 5. ValueError for ex: int('string') type error  int('10') - is ok!
# 6. KeyError ( when we trying to access key in dict that doesn't exist)
# 7. Attribute Error When, let's say, we are trying to achieve methods that do not exist
# ex: [1,2,3,4].hello() - hello() method doesn't exist 

# RAISING YOUR OWN EXCEPTIONS !
def color(text, color):
    colors = ['cyan', 'blue', 'red', 'purple', 'orange']
    if color not in colors:
        raise ValueError("color must be withing this range of values ['cyan', 'blue', 'red', 'purple', 'orange']")
    if type(text) is not str:
        raise TypeError("has to be string")
    print(f'printed {text} in {color}')
color('hello', 'blue')


# THE BASIC SYNTAX:
# try:
# except:

# try: 
#     foobar
# except:
#     print("PROBLEM!")
# print("after the try")

def get(d,key):
    try:
        return d[key]
    except KeyError:
        return None
d = {"name": "Ricky"}
print(get(d, "city"))

def sum(d,key):
    try:
        return d[key]
    except KeyError:
        return "rpoblem occured"

# try: tries to run
# except: if try doesn't happen it 
# else: runs when try did run! 
# finally: runs, no matter what !!! (either try or except runs) doesn't matter IT WILL RUN! 


while True:
    try:
        num = int(input("please enter a number: "))
    except ValueError:
        print("That's not a number!")
    else:
        print("Good job, you entered a number!")
        break
    finally:
        print("RUNS NO MATTER WHAT!")
print("REST OF GAME LOGIC RUNS!")

# try:
#   num = int(input("please enter a number: "))
# except:
#   print("That's not a number!")
# else:
#   print("I'M IN THE ELSE!")
# finally:
#   print("RUNS NO MATTER WHAT!")


# DEBUGGING THE CODE PYTHON MODULE pdb - used to find out where the code is not
# runnig the way it's supposed to run 

# To set breakpoints in our code we can use this line of code :
# import pdb
# pdb.set_trace()

# FIRST EXAMPLE:
# import pdb
# first = "First"
# second = "Second"
# pdb.set_trace()
# result = first + second
# third = "Third"
# result += third
# print(result)


# Be careful with variable names!
def add_numbers(a, b, c, d):
    import pdb; pdb.set_trace() 

    return a + b + c + d
add_numbers(1,2,3,4)

# ===================
# NOTES  NOTES  NOTES
# ===================
# import pdb
# pdb.set_trace()

# Also commonly on one line:
# import pdb; pdb.set_trace() 

# Common PDB Commands:
# l (list)
# n (next line)
# p (print)
# c (continue - finishes debugging)


# Write a function called divide, which accepts 
# two parameters (you can call them num1 and num2). The 
# function should return the result of num1 divided by num2. 
# If you do not pass the correct amount of arguments to the 
# function, it should return the string "Please provide two integers or floats". 
# If you pass as the second argument a 0, Python will raise a ZeroDivisionError, 
# so if this function is invoked with a 0 as the value of num2, return the string 
# "Please do not divide by zero"

    # Examples
    
    # divide(4,2)  2
    # divide([],"1")  "Please provide two integers or floats"
    # divide(1,0)  "Please do not divide by zero"
def divide(num1, num2):
    import pdb; pdb.set_trace()
    try:
        return num1/num2
    except TypeError as err:
        return f"{err} Has to be type int or floats"
    except ZeroDivisionError:
        return "you cannot divide by 0"
    
