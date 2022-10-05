# Week01: 
# 01:

#List of x
x <- c(1, 2, 3, 4, 5, 6, 7, 8)

#Input i 
var <- readline()
i <- as.integer(var)
sum <- 0

#Calculate sum of x to i
if (i > length(x)) print("Can't calculate: input > vector");
else{
    for (x in 1:i){
        sum <- sum + x[i]
    }
}
print ("Sum: ")
sum