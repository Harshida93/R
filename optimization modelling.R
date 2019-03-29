library(lpSolve)
objectives<-c(8,12)
Allconstraints<-matrix(c(10,5,5,5),nrow = 2,byrow = TRUE)
resource_const<-1200
time_const<-8*60
directions<-c("<=","<=")
rhs<-c(resource_const,time_const)
 optimum<-lp(direction = "max",objective.in = objectives,
             const.mat = Allconstraints,const.dir =directions,const.rhs = rhs)
 
 optimum$objval
optimum$solution



C <-c(30, 40, 80)
      A <-matrix(c(1, 1, -10,4, 3, -20,1, 0, -2,1, 1, 0), nrow=4, byrow=TRUE)
                 B <-c(500, 200, 100,1000)
                 constranints_direction  <-c("<=", "<=", "<=", ">=")
                 optimum <-lp(direction="min", objective.in = C,
                              const.mat = A, const.dir = constranints_direction, const.rhs = B,all.int = T)
optimum
best_sol<-optimum$solution
names(best_sol)<-c("x","y","z")
best_sol

#2
library(lpSolveAPI)
require(lpSolveAPI)
C1 <-c(45,60)
A1<-matrix(c(15,35,25,15,1,0,1,0,0,1,0,1),nrow = 6,byrow = T)
B1<-c(2400,2400,100,0,0,50)
#solve(A1,B1)
Const_directions<-c("<=","<=","<=",">=",">=","<=")
 
 opt<-lp(direction = "max",objective.in = C1,const.mat =A1,const.rhs = B1,const.dir = Const_directions,all.int = T  )
opt
print(opt$status)
best<-opt$solution
names(best)<-c(X1,X2)

lprec<-make.lp(nrow = 6,ncol = 2)
lp.control(lprec,sense="max")
set.type(lprec,1:2,type = c("integer"))
set.objfn(lprec,C1)

add.constraint(lprec,A1[1,],"<=",B1[1])
add.constraint(lprec,A1[2,],"<=",B1[2])
add.constraint(lprec,A1[3,],"<=",B1[3])
add.constraint(lprec,A1[4,],">=",B1[4])
add.constraint(lprec,A1[5,],">=",B1[5])
add.constraint(lprec,A1[6,],"<=",B1[6])

lprec
solve(lprec)
get.variables(lprec)
get.objective(lprec)
get.bounds(lprec)


C1 <-c(45,60)
A1<-matrix(c(15,35,25,15,1,0,0,1),nrow = 4,byrow = T)
B1<-c(2400,2400,100,50)
#solve(A1,B1)
Const_directions<-c("<=","<=","<=","<=")

opt<-lp(direction = "max",objective.in = C1,const.mat =A1,const.rhs = B1,const.dir = Const_directions,all.int = T  )
opt
print(opt$status)
best<-opt$solution
names(best)<-c("x1","x2")


lprec1<-make.lp(nrow = 4,ncol = 2)
lp.control(lprec1,sense="max")
set.type(lprec1,1:2,type = c("integer"))
set.objfn(lprec1,C1)

add.constraint(lprec1,A1[1,],"<=",B1[1])
add.constraint(lprec1,A1[2,],"<=",B1[2])
add.constraint(lprec1,A1[3,],"<=",B1[3])

add.constraint(lprec1,A1[4,],"<=",B1[4])

lprec1
solve(lprec1)
get.variables(lprec1)
get.objective(lprec1)
get.bounds(lprec1)




































































