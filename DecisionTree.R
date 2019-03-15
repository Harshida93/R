library(readr)
Iris_data<-read.csv("Downloads/Iris.csv")
View(Iris_data)
summary(Iris_data)

names(Iris_data)
boxplot(Iris_data$sepal_length,Iris_data$species)
head(Iris_data,5)
 library(caret)
index<-createDataPartition(Iris_data$species,p=0.80,list = FALSE)
index
testSet<-Iris_data[-index,] #getting the 20% of irisData that will b used for testing
trainSet<-Iris_data[index,] #getting the 80% of irisData that will b used for training
summary(trainSet)
levels(Iris_data$species)
 library(ggplot2)
#scatter plot
plot1<-ggplot(trainSet,aes(x=petal_length,y=petal_width))+
  geom_point(aes(color=species,shape=species))+xlab("Petal Length")+ylab("Petal Width")+
  ggtitle("Petal width vs Petal Length")+geom_smooth(method = lm)
print(plot1)

#box plot
plot2<- ggplot(trainSet,aes(x=species,y=sepal_length))+geom_boxplot(aes(fill=species))+
  ylab("Sepal Length")+ggtitle("BoxPlot for Sepal length  for different species")+
  stat_summary(fun.y = mean,geom = "point",size=4,shape=5)
Sum1<-trainSet$sepal_length[trainSet$species==c("setosa")]
mean(Sum1)# to check the functinalty of fun.y(fun.y summarises y values at every x value)
plot2

#histogram
library(ggthemes)
histogram1<-ggplot(trainSet,aes(sepal_length))+
  geom_histogram(binwidth=0.2,aes(fill=species),position = position_dodge())+facet_grid(species~.)+
  theme_economist()
histogram1

#faceting
faceting<-ggplot(trainSet,aes(x=sepal_length,y=sepal_width))+
  geom_point(aes(shape=species,color=species))+xlab("Sepal length")+ylab("Sepal width")+
  facet_grid(species~.)+geom_smooth(method = lm)+theme_fivethirtyeight()
faceting

library(rpart.plot)
library(caret)
set.seed(1000)
?rpart
 rpart.model<-rpart(species ~sepal_length+sepal_width+petal_length+petal_width,trainSet)
print(rpart.model) # to create the classification of petal length

#to see how the classification looks
prp(rpart.model)
 # rattle package for fancy rpart plot
library(rattle)
fancyRpartPlot(rpart.model)

#to check how this tree works on the trainSet#predicting the trainSet
prediction<- table(predict(rpart.model,newdata = trainSet,type = "class"))
prediction

#checking the accuracy with testSet

prediction_test<-table(predict(rpart.model,newdata = testSet,type = "class"))
rpar<-rpart(species~sepal_length+sepal_width+petal_length+petal_width,testSet)
rpar
prp(rpar)
prediction_test

#to check the accuracy
confusionMatrix(predict(rpart.model,newdata=testSet[,1:4],type = "class"),testSet$species)
















