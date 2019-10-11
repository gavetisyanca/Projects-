# Visualizing with matrices using matplot()
FieldGoals #
matplot() # uses columns to visualize. if you need to flip rows
# and columns use t() transpose function (changing columns to rows)
#
matplot(t(FieldGoals/Games), type = 'b', pch = 15:18,
        col = c(1:4,6))
legend("bottomleft", inset = 0.01, legend = Players, 
       col = c(1:4,6), pch = 15:18, horiz = F)
matplot(t(FieldGoals/ FieldGoalAttempts), type = 'b', pch = 15:18,
        col = c(1:4,6))
legend("bottomleft", inset = 0.01, legend = Players, 
       col = c(1:4,6), pch = 15:18, horiz = F)
matplot(t(Points/Salary), type = 'b', pch = 15:18,
        col = c(1:4,6))
legend("bottomleft", inset = 0.01, legend = Players, 
       col = c(1:4,6), pch = 15:18, horiz = F)
