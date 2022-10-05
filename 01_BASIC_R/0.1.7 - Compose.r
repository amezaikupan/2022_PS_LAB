#a
meanN <- function (x, n){
    if (n > length(x)) {
        cat(n, 
        "is bigger than the length of a. Please try again\n")
        return (0);
    }else{
        mean <- 0
        for(i in 1:n){
            mean <- mean + x[i]
        }
        mean <- mean / n;

        cat("Mean is", mean, "\n")
        return (mean)
    }
}

labGrade <- function(){
    x <- runif(20, 0, 10)
    return(x)
}



#Run 01
x <- c(1, 2, 4, 5, 6, 7, 8)

mean <- meanN(x, 10)
mean <- meanN(x, 4)

#Run 02
#Generate vector x of lab grades for 20 students
x <- labGrade()

#Find the average of the grade
meanGrade <- meanN(x, 20)

#Calculate variance from formula: s^2 = E(x^2) - E(x)^2
#Make vector of E(x^2)
ex2 <- c()
for(i in 1:length(x)){
    ex2[i] <- x[i]^2;
}

#make sum of E(x^2)
sumEx2 <- meanN(ex2, 20)

#Calculate variance
var <- sumEx2 - meanGrade ^ 2


