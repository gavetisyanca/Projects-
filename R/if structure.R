# --- -2 --- -1 --- 0 --- 1 --- 2
rm(answer)
x <- rnorm(1)
if(x > 1) {
     answer <- "more than one"
  } else if (x >= -1){
     answer <- "more or equal to -1"
  } else {
    answer <- "less than - 1"
  }