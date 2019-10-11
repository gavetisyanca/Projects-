# FUNCTIONS 
rnorm()
print()
c()
seq()
rep()
is.integer()
is.double()
is.numeric()
is.character()
isTRUE()
isFALSE()
typeof()
sqrt()
paste()
# to call help for a certain function
# type ? in front of a function
?rnorm(n = 5, mean = 3, sd = 5) 
# st deviation means how far the generated
# number will fall. mean is a middle of that so 
# in this ex. number will fall btw 2 and 5 
?seq(from = 1, to = 10, by = 2) # 1,3,5,7,9
seq(from = 1, to = 10, length.out = 40)
# this seq makes a sequence from 1 to 10 fitting 40 values 
# between 1 and 10 
x <- c('a', 'b', 'c')
A <- seq(from = 0, to = 10, along.with = x)
rep(5:6, times = 5) # '5656565656'
rep(5:6, each = 5) # '5555566666'
rep(x, times = 3) # 'abcabcabc'
rep(x, each = 3) # 'aaabbbccc'
B <- sqrt(A)
B

