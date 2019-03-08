library(matlab)

#1
A<-c(1,0,1,3)
B<-c(1,sqrt(2),2,-2)
C<-c(1,0,1,3) %*% c(1,sqrt(2),2,-2)
C
normA<-sqrt(norm(A,type = "2"))
normB<-sqrt(norm(B,type = "2"))
normA
normB
  D<-normA*normB                                                 #105.86 degrees
C/D
acos(-0.074514)

#2
A<-matrix(c(1,0,4,4,0,-2,-4,7,1,3,2,1,2,4,8,0),4,4)
B<-matrix(c(1,1,7,-3,2,2,0,8),4,2)
C<-matrix(c(1,2,4,3,5,6,7,8),2,4)
D<-A%*%B%*%C 
D34<-442
E<-B%*%A%*%C #non-conformable arrays
F<-B%*%C%*%A
F43<-158
G<-A%*%C%*%B #non-conformable arrays
H<-C%*%A%*%B
H21<-109
J<-C%*%B%*%A

#3
A<- array(c(-8,0,-5,0,-4,6,1,2,7,-10,-7,-10,0,6,5,-8),c(4,4))
A
B<-c(-9,66,57,-8)
B
options(digits = 5)
solve(A,B)

