library(caret)
library(ISLR)
library(rattle)
dim(Carseats)
names(Carseats)
head(Carseats)
?Carseats
library(randomForest)
library(tree)
#partition the data
trainData<-sample(1:nrow(Carseats),200) # A<-sample(400,300) trainData<-Carseats[A,]
testData<-Carseats[-trainData,]
trainData<-Carseats[trainData,]

fit1<-rpart::rpart(Sales~.,trainData)
pred<-predict(fit1,newdata = testData)
mean((pred-testData$Sales)^2)# test-Error 3.43554 (lower  the test error better the accuracy)

plo<-plot(pred,testData$Sales)
abline(lm(testData$Sales~pred),col='red',lwd=5)

fit2<-ctree(Sales~.,trainData)
pred2<-predict(fit2,testData)

mean((pred2-testData$Sales)^2) #test-Error 4.803699( which means rpart is better than ctree)
plo2<-plot(pred2,testData$Sales)
abline(lm(testData$Sales~pred2),col="red")

fit1
fit2

#Bagging or Bootstrap(Picking smaller overlapping datasets from a larger data set) method using randomForest
A<-sample(1:nrow(Carseats),200)
tr<-Carseats[A,]
te<-Carseats[-A,]

fit3<-randomForest(Sales~.,trainData,importance=TRUE)
pred3<-predict(fit3,te)
mean((pred3-te$Sales)^2) #1.803414 is the test error (lower than both the previous tests,better accuracy)
plot(pred3,te$Sales)
abline(lm(te$Sales~pred3),col="red")

fit3

Call:
  randomForest(formula = Sales ~ ., data = trainData, importance = TRUE) 
Type of random forest: regression
Number of trees: 500 #(500 smaller data sets and corresponding 500 decision 
                      #trees were made )
No. of variables tried at each split: 3

Mean of squared residuals: 3.098443
% Var explained: 55.77













