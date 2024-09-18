#vector in r
a<-c("fruits","apple")
a
b<-1:8
b
d<-c(64,45,33,4,5,56)
#vector length
length(a)
#sort
sort(a)
sort(d)
#accessing the vectors
a[c(1)]
b[3]
d[2]
#change an item in vector
a[c(2)]<-"pineapple"
a[c(2)]
#repeat vectors
a<-rep(c(1,3,4),each =3)
a
#generating sequenced vector
sam<-seq(from=9,to=9000,by=200)
sam
#sort vectors
ram<-c(22,12,3455,22222,45)
sort(ram)