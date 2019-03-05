#1
summary(college)

#2
pairs(college[,1:10])

#3
boxplot(college$Outstate~college$Private,main="Box Plot for Outsate Vs Private",xlab="Private",
        ylab="Outsate")
#4

college$Elite=rep("NO",dim(college)[1])

college$Elite[college$Top10perc>50]="Yes"
summary(as.factor(college$Elite))



#5
summary(college)
boxplot(college$Outstate~college$Elite,main="Boxplot for Outstate Vs Elite",ylab="Outstate",xlab="Elite")


#6
hist(college$Personal,xlab = "Estimated Personal spending",main = "Variation in Students' Expenditure")
hist(college$Terminal,xlab = "Percent of faculty with terminal degree",main = "Count of faculties holding a Terminal degree")
hist(college$PhD,xlab = "Percent of Faculty with PhD",main = "Count of Faculties holding PhD")

