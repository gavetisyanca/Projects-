x <- 10
total <- 0
for (m in rnorm(x)) {
  
  if (m >= -1 & m <= 1) {print(m) 
    total <- total + 1 } }
result <- paste((total/x)*100,'%') 
result 
  

