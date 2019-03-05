rnorm(10,3,0.25)
dnorm(9,0,5)
density(pnorm(2,1,2))
plot(pnorm(2,1,2))
plot(density(pnorm(9,0,5)))
plot(dnorm(9,4,5))
painters

ggplot(painters,aes(x=painters$Drawing))+geom_density(col='red',fill='blue')

ggplot(painters,aes(Composition))+geom_histogram()
plot(density(qnorm(2,0,5)))
pnorm(2)
qnorm(0.97725)
y<-sd(painters$Composition)
u<-mean(painters$Composition)
-painters$Composition
Z<-(15-u)/y
#Z score denotes 20% of values are greater than 15
20
table(painters$Composition)
pnorm(15,11.556,4.0871)
#denotes 80% of values are less that or equal to 15

#dnorm
A<-seq(-5,5,length.out = 100)
A
dnorm(A)
plot(A,dnorm(A))

B<-points(dnorm(A,mean = 1.5))
B<-rnorm(1000,mean = 50,sd=1)
C<-seq(-50,50,length.out = 1000)
C
dnorm(-49.89990)
plot(dnorm(C))
plot(dnorm(1000,1,0.5))
L<-plot(dnorm(2))
L

#Binomial distribution PPT week5
pbinom(0,size = 12,prob = 0.2)#no sales
pbinom(2,size = 12,prob = 0.2)#Atmost 2 sales(Used for Atmost)
dbinom(2,size = 12,prob = 0.2)#Exactly 2(dbinom used when exact number is known)
1-pbinom(2,size = 12,prob = 0.2)
pbinom(2,size = 12,prob = 0.2)

#geometric distribution
dgeom(2,prob = 0.2)#means first 2 failures before 3rd attempt
dgeom(2,prob = 0.2)+dgeom(3,prob = 0.2)#prob of getting a winning piece in 3rd or 4th packet
dgeom(0:4,prob = 0.2)

rgeom(1:5,prob = 0.2)
qgeom(2,prob = 0.2)
pgeom(3,prob = 0.2)
plot(pgeom(3,prob = 0.2))

pnorm(18,15,2)
 A<- seq(-4,4,length.out=10)
 plot(A)

 #poisson distribution
 dpois(x=3,lambda = 4)#gives prob of 3 powercuts a year
 dpois(x=0:4,lambda=4)#gives prob of each number of powercuts a year from 0 to 4 
sum(dpois(x=0:4,lambda = 4)) # or 
ppois(q=4,lambda = 4,lower.tail = T) #ppois(gives total prob from 0 to 4 )
                                    #lower tail refers to area below(less than or = 4)

#central limit theorem

x<-rep(0,500)
for (i in 1:500) {
  x[i]=mean(rnorm(1000))
}

hist(x)

#hypothesis testing
B<-seq(1,50,2)
sd(B)
A<-t.test(B,alternative="two.sided",mu=20,conf.level = 0.95)
A
mean(B)
H0=20
Ha=25
s0=?
Sa=14.72
n=25
C<-Sa/sqrt(n)
Z=5/C
#A(t-test)=Z

#bayes theorem
y1<-seq(1,100,by=2)
y2<-seq(1,100,by=1.5)

R<-BESTmcmc(y1,y2)
























