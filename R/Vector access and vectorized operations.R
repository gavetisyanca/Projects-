# How to access individual objects in a vector ?
w <- c('a','b','c','d','e')
w
w[1] # prints 'a'
w[-1] # prints without 'a'
w[-3] # prints wthout 'c'
v <- w[-3]
v
w[c(1,3,5)] # prints 'a','b', 'c'
w[c(-2,-4)] # prints the same 'a', 'b', 'c'
w[-3:-5] # 'a', 'b'
w[1:2] # 'a', 'b'
w[1000] # NA

# WHY THIS '[]' are not so important in 'R' and 
# what is the main principle of R 
#---------------------
# VECTORIZED OPERATIONS 
#---------------------
# In R, in order to add vectors you don't have to loop
# through and add each element of vector to each other and
# then add to the third one. in R you can simply add
# these vectors together. THAT's UNDERLYING CONCEPT 
# OF R ! ! ! ! ! EVEN boolean operations can be perforemed 
# in R withput loop

a <- c(4,5,7,10)
b <- c(5,6,8,11)
c <- a+b
d <- c(3,5,6,7,8,9,0,10)
e <- d + a
e
f <- c(1,2,3,4,5,6)
g <- f + b
g
b>d
a>b
       

















