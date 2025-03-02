# bars
x<-c("student a","student b","student c","student d")
y<-c(44,55,66,77)
barplot(y,names.arg=x,col="red")#names. arg used to give x axis names

#density gives to change 
name<-c("sam","ram","laxman","vaibhav")
marks<-c(50,60,20,40)
barplot(marks,names.arg=name,col="blue",density=10)

#we can change  values of plots size
forces<-c("us","india","afgan","bangladesh")
their_rating<-c(6,7,8,3)
barplot(their_rating,names.arg=forces,col="yellow",density=15,width=c(2,4,2,3))

