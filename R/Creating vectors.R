
# Vectors in R are the same as arrays in
# C or lists in Python and JavaScript 
# to make a vector(array) we do the following:
# we use c function (combine) to create a vector 

MyFirstVector <- c(12,777,43,9)
is.numeric(MyFirstVector) # returns True
is.integer(MyFirstVector) # returns False 
# cause in R numbers (by default) are stored 
# as doubles(floats) if we want Int we put'L' 
# after the number 
is.double(MyFirstVector)
# so we create vector with integers 
V2 <- c(3L, 33L,56L, 4L, 77L)
is.numeric(V2)
is.integer(V2)
V3 <- c("hello", "7", "amadeo")
V3
is.numeric(V3)
is.character(V3)
# lets say we put a number instead of a string 
# , so what R does, it
# automatically takes that number  and 
# converts that into a string 
# ex 
V4 <- c("hi", "many", "6", 0, 45)
V4
is.character(V4)

# Seq() and rep() - (replicate) functions More ways of 
# creating a vector

seq(1,15) # prints from 1 to 15 works like '1:15'
# like range in python However, with 1:15 you cannot 
# pass additional parameters like steps, which seq()
# has for ex seq(1,15, 2) will return from 1 to 15 
# with the step of 2. This is creating vector 
seq(1,15,2)
d <- rep(3, 50) # creates a vector with nuber 3 50 times 
m <- rep('a',5)
m
# we can create replicas of other vectors like this:
V5 <- rep(V4, 3)
V5

