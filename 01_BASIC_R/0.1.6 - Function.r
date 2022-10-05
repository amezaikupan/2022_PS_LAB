FlipCoins <- function(n){
    #Generate random flips
    randomFlip <- round(runif(n, 0, 1), 0)

    #Head and tail counts
    head <- 0

    for(i in randomFlip){
        if(i == 0) head <- head + 1
    }

    cat("Heads:", head, " - Tails:", n - head, "\n")
}

BetFlipCoins <- function(n){
    #Generate flips with probability
    randomPFlip <- sample(c(0, 1), n, replace = TRUE, prob = c(0.65, 0.35))

    #Head and tail money count
    headM <- 0
    tailM <- 0
    for(i in randomPFlip){
        if(i == 0) tailM <- tailM + 10
        else headM <- headM + -5
    }

    cat ("After coin flips:", headM + tailM, "\n")
}

FlipCoins(10)
BetFlipCoins(10)
