library(MASS)
?Boston
View(Boston)

#1
nrow(Boston)
ncol(Boston)
Number of rows in the dataset :506
Number of rows in the dataset :14
dim(Boston)

#2
plot(Boston$medv,Boston$crim,xlab = "Median value of owner-occupied homes in per $1000s"
     ,ylab="per capita crime rate by town", main="Relationship between median value of homes vs crime rate",pch=16)
abline(lm(Boston$crim~Boston$medv),col="red")
     
plot(Boston$medv,Boston$rm,xlab ="Median value of owner-occupied homes in per $1000s",
     ylab ="average number of rooms per dwelling",main = "Relationship between median value of homes vs average # of rooms",pch=18) 
abline(lm(Boston$rm~Boston$medv),col="red")
#3
plot(Boston$dis,Boston$crim,xlab="weighted mean of distances to five Boston employment centres"
     ,ylab ="per capita crime rate by town",main="Crime rate Vs Mean of distances to 5 employment centres",pch=16)
abline(lm(Boston$crim~Boston$dis),col="red")

#4
range(Boston$crim)
max(Boston$crim)
range(Boston$tax)
range(Boston$ptratio)
#5
Boston$chas
Boston$chas<-as.character(Boston$chas)
nrow(Boston[Boston$chas=="1",])

#6








