# Named vectors 
Charlie <- 1:5
Charlie
# giving the name of Charlie
names(Charlie) # with no name it gives 'Null'
names(Charlie) <- c('a','b','c','d','e')
Charlie['c'] # 3
names(Charlie) <- NULL # clears the name values
Charlie # returns NULL again

# naming vector's dimensions

temp.vector = rep(c('A', 'B', 'C'), each = 3)
c('A', 'B', 'C')
temp.vector
Bravo <- matrix(temp.vector, 3, 3)
Bravo
rownames(Bravo) <- c(1:3)
Bravo
colnames(Bravo) <- c('x','y','z')
Bravo
Bravo['3', 'y'] <- "dadgfad"
rownames(Bravo) <- NULL
rownames(Bravo) <- NULL 
names(Bravo)

# MATRIX OPERATIONS 
Games
rownames(Games)
colnames(Games)

FieldGoals
round(FieldGoals / Games, 2) # field goals per game 
round(MinutesPlayed / Games) # minutes per game 
round(FieldGoals / FieldGoalAttempts, 2) # gives accuracy of shots 


