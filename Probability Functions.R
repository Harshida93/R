#1
probability=0.2
pbinom(4,20,prob = 0.2)
dbinom(4,20,prob = 0.2)

#2
ppois(q=16,lambda = 12,lower.tail = FALSE)

#3
A<-runif(100,min = 1,max = 3)
plot(A)

#4
ppois(q=1,lambda = 2)
#Or
1-ppois(1,lambda = 2,lower.tail = FALSE)

#5
X=85
mu=74
sigma=21.2
Z<-(X-mu)/sigma
Z
#From the Z-score table the probability value for 0.52 is 0.3015 which means approximately 30% of students
#have scored 84 or more.

