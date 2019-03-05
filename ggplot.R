A<-matrix(c(1,2,3,4,5,6,7,8,9,9,8,7,6,5,4,3,2,1),6,3)
A
plot(A)
image(A)
contour(A)
persp(A,expand = 0.2)
library(help="datasets")
library(ggplot2)
library(plotly)
library(Histdata)
Hismtcars
quakes
names(trees)
X<-ggplot(trees,aes(Height,Volume,color=Girth))+geom_point()
plot_ly(data=mtcars,x=~wt,y=~mpg,type = "scatter",mode="markers",symbol =~as.factor(cyl),
        symbols = c('circle','x','o'),marker=list(size=8) )%>%layout(showlegend=FALSE)

plot_ly(data=mtcars,x=~wt,y=~mpg,type = "scatter",mode="markers",symbol =~as.factor(cyl),
        symbols = c('circle','x','o'),marker=list(size=8) )%>%layout(legend=list(orientation='h'))


plot_ly(data=mtcars,x=~wt,y=~mpg,type = "scatter",mode="markers",symbol =~as.factor(cyl),
        symbols = c('circle','x','o'),marker=list(size=8) )%>%layout(legend=list(x=0.8,y=0.9))


View(Titanic)
Titanic<-as.data.frame(Titanic)
ggplot(Titanic,aes(Sex,Freq,fill=Age))+geom_bar(stat = "identity",position=position_dodge())+
  scale_x_discrete(limits=c("Male","Female"),label=c("Male\n(n=1731)","Female\n(n=470)"))
Female<-Titanic[Titanic$Sex==c("Female"),]
Male<-Titanic[Titanic$Sex==c("Male"),]
sum(Female$Freq)
sum(Male$Freq)
plot_ly(data = Titanic,x=~Sex,y=~Freq,type = "bar",mode="markers",symbol =~as.factor(Class),
        marker=list(size=1))%>%layout(legend=list(orientation='h'))

View(rivers)
A<-seq(1,141,by=1)
cbind(rivers,A)
rivers[-2]
rivers<-as.data.frame(rivers)
ggplot(rivers,aes(x=rivers))+geom_histogram(binwidth = 100,col='red',fill='blue',alpha=0.5)+
  ggtitle("River Data")+geom_vline(aes(xintercept=mean(rivers),na.rm=T),col='red',linetype="longdash")


msleep
msleep<-msleep[!is.na(msleep$vore),]
msleep

ggplot(msleep,aes(sleep_total))+geom_density()

  
msleep<-msleep[!msleep$sleep_total==c("carnivore"),]
msleep<-msleep[!msleep$sleep_total==c("omnivore"),]
msleep<-msleep[!msleep$sleep_total==c("herbivore"),]
msleep<-msleep[!msleep$sleep_total==c("insectivore"),]

library(plyr)
library(reshape2)
Titanic
Survival<-ddply(Titanic,.(Survived),summarize,Surv=sum(Freq))
Survival
SurvivalByAge<-Titanic%>% group_by(Sex,Age,Survived)%>% summarise(Total=sum(Freq))
SurvivalByAge
ZooAnimals<-data.frame(Zoo,Lion,Tiger,Cheetah)
Lion<-c(1,3,4,5,6,8)
Tiger<-c(2,3,5,6,7,8)
Cheetah<-c(3,2,1,4,5,6)
Zoo<-c('A','B','C','D','E','F')
ZooAnimals
melted<-melt(ZooAnimals,id.vars = c("Zoo"),measure.vars = c("Lion","Tiger","Cheetah"),variable.name = "Animals",
             value.name = "NumofAnimals")
melted
ggplot(melted,aes(Zoo,NumofAnimals,fill=Animals))+geom_bar(stat = "identity",
                                                           position = position_dodge())
#melt is used when column names are wanted as factors 




  









