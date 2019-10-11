Salary
Games
MinutesPlayed

# HOW to create matrices ?  There are 3 functions to use:
# matrix(), rbind() - by raws, cbind() - by columns

?matrix()
#Usage
#matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE,
       #dimnames = NULL)
mydata <- 1:20 
mydata
A <- matrix(mydata, 4, 5,)
A
A[1,4]
A[,4]
# Next, by column
B <- matrix(mydata, 4, 5, byrow = TRUE)
B
B[3,5]
# rbind() - converts by rows 
r1 <- c('hi', "I'm", "here")
r2 <- c("what", "a", "day")
r3 <- c(1,2,3)
C <- rbind(r1,r2,r3)
C # r3 - numbers are converted to characters  '1', '2', '3'

#cbind - converts by columns
c1 <- c(4,5,6)
c2 <- c(777, 899,999)
c3 <- c(45,56,77)
D <- cbind(c1,c2,c3)
D

