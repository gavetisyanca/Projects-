# Subsetting 
x <- c('a', 'b','c', 'd','e')
x
x[c(1,5)]
x[1]
Games
Games[1:3, 6:10]
Games[c(1,10),]
Games[,c('2008','2009')]
Games[1,]
is.matrix(Games[1,]) # returns False, cause its a vector
is.vector(Games[1,0]) # returns True
Games[1, 5] # if it returns 1 row matrix ,
# R is dropping dimension so basically it thinks that its
# a vector, so in order to change that use a 
# parameter 'drop' to set to equal False. (By default is True)
Games[1,5,drop = FALSE]# so we get matrix instead of a vector 
is.matrix(Games[1,5,drop = FALSE]) # returns True
Games[,1]

# Visualizing Subsets
matplot()
Data <- MinutesPlayed[1:3,]
matplot(t(Data), type = 'b', pch = 15:18, col = c(1:4,6))
legend("bottomleft", inset = 0.01, legend = Players[1:3], c(1:4,6), pch = 15:18, horiz = F)
Data

Data <- MinutesPlayed[1,, drop = FALSE]
matplot(t(Data), type = 'b', pch = 15:18, col = c(1:4,6))
legend("bottomleft", inset = 0.01, legend = Players[1], c(1:4,6), pch = 15:18, horiz = F)
Data
