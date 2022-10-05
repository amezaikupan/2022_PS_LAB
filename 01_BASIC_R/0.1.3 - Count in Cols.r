#Get and set up data workspace

#Check that wd is in the folder containing giamcan.csv
getwd()

#Get data
giamcan <- read.csv("giamcan.csv")
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
    if (Truoc[i] > 65 && Truoc[i] < 75 
        && Sau[i] > 65 && Sau[i] < 75) bw67 <- bw67 + 1;
}

print ("Bellow 65: ")
bl65

print ("Ratio: ")
bl65/l

print ("Between 65 - 75: ") 
bw67

print ("Ratio: ")
bw67/l

detach()