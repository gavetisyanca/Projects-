# R specific iteration 
x <- rnorm(5)
for (i in x) {
  print(i)
}

# conventional iteration 
for (j in 1:5) {
  print(x[j])
}
# ---------------- 2 part 

N <- 100
a <- rnorm(N)
b <- rnorm(N)
# vectorized approach 
c <- a * b
c
# De-vectrozied approach
d <- rep(NA, N)
for (i in 1:N){
  d[i]<- (a[i] * b[i])
}
d







