library(MASS)
?painters
#1
school=painters$School
schoolFreq=table(school)
barplot(schoolFreq)

#2
transform(schoolFreq,relative=prop.table(schoolFreq)*100)

#OR

relFreq=(schoolFreq/nrow(painters))*100
cbind(relFreq)

#3
barplot(table(painters$School),col = brewer.pal(8,"Set1"))

#4
school_c<-painters[painters$School=="C",]
options(digits=5)
mean(school_c$Composition)

c_school=school=="C"
c_painters=painters[c_school,]
options(digits = 5)
mean(c_painters$Composition)

#5
Avg<-ddply(painters,.(School),summarize,avrg_compositions=mean(Composition))
Avg
A_school<-painters[painters$School=="A",]
A<-mean(A_school$Composition)
B_school<-painters[painters$School=="B",]
B<-mean(B_school$Composition)
C_school<-painters[painters$School=="C",]
C<-mean(C_school$Composition)
D_school<-painters[painters$School=="D",]
D<-mean(D_school$Composition)
E_school<-painters[painters$School=="E",]
E<-mean(E_school$Composition)
F_school<-painters[painters$School=="F",]
F<-mean(F_school$Composition)
G_school<-painters[painters$School=="G",]
G<-mean(G_school$Composition)
H_school<-painters[painters$School=="H",]
H<-mean(H_school$Composition)
mean_compositions<-data.frame(A,B,C,D,E,F,G,H)
mean_compositions
transform_position(mean_compositions)
t(mean_compositions)
