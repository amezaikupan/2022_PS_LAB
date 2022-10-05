#Get and set up data workspace

#Check that wd is in the folder containing giamcan.csv
getwd()

#Get data
giamcan <- read.csv("01_BASIC_R/data/giamcan.csv")
attach(giamcan)

#Print giamcan
giamcan

#Count people bellow 65 kg
bl65 <- 0

#Count people between 65 and 75 kg
bw67 <- 0

#Length of matrix
l <- length(Nguoi)

for (i in 1:l){
    if (Truoc[i] < 65 && Sau[i] < 65) bl65 <- bl65 + 1;
    if (Sau[i] > 65 && Sau[i] < 75) bw67 <- bw67 + 1;
}

cat("Below 65:", bl65, "\nRatio:", bl65/l, "\n")
cat("Between 65 - 75 after lost weight:", bw67, "\nRatio:", bw67/l, "\n")
