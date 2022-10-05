#0.1.5
X <- c(1.3975068, 1.1253621, 0.7472591, 0.8144085, 1.8202663,
0.8671346, 1.4210106, 1.67840051, 3697046, 0.6182268,
1.9064036, 0.9360782, 1.1175578, 1.2527916, 1.9584229,
1.3689436, 1.5685716, 1.0691046, 1.6625395, 1.7949509)

Median <- function (n){
    if (n > 20) return (0)
    else{
        median <- 0
        for(i in 1:n){
            median <- median + X[i]
        }
        median <- median/n;
    }
    return (median);
}

Expectation <- function(n){
    if (n > 20) return (0)
    else{
        exp <- 0
        median <- Median (n)
        for(i in 1:n){
            exp <- (X[i] - median)^2 + exp
        }
        exp <- exp/ (n - 1)
    }
    return (exp)
}

Median(10)
Expectation(10)