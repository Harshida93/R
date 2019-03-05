library(MASS)
A <-matrix(c(2,3,-2,1,2,2),3,2)
A
typeof(A)
str(A)
is.matrix(A)
#2
A<-matrix(c(2,3,-2,1,2,2),3,2)*3
A

#3
A<-matrix(c(2,3,-2,1,2,2),3,2)
B<-matrix(c(1,4,-2,1,2,1),3,2)
A+B
A-B

#4
D<-matrix(c(2,-2,1,2,3,1),2,3)
A<-matrix(c(2,3,-2,1,2,2),3,2)
D %*% A
A %*% D
D <-matrix(c(2,1,3),1,3)
D %*% A
A %*% D

#5
t(A)
#6
A <-matrix(c(4,4,-2,2,6,2,2,8,4),3,3)
A
AI<-solve(A)
AI
AI %*% A
det(A)

isTRUE(matrix(A))
