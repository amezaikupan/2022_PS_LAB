#1: Find Expectation and Variance using for loop 
mathGrade <- round(runif(40, 0, 10), 0)

#Expectation
exp <- 0

#Variance
var <- 0

#Because the math grades are taken randomly in a collection of 40
#And the value of each grades does not effect others
#And because we're rounding the number to having no digit after the comma
#We have the posibility of each grade to be 1/40
pos <- 1/40;

for(i in mathGrade){
    #Calculate expectation
    exp <- pos * i;

    #Calculate variance
    var <- pos * i ^ 2;
}

#Finalizing variance
var <- var - exp ^ 2;

#Pring result
print("Expectation: ")
exp

print("Variance: ")
var