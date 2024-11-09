#plotting
plot(3,5)
plot(c(4,5),c(3,2))#two cordinates are given
plot(1:12)#plotting 1 to 12

#declaring first and calling later
x<-c(1,2,3)
y<-c(7,8,9)
plot(x,y)

#use col function to addcolors to circle
plot(1:8,col="blue")

#give lables
plot(c(5,6),c(6,8.5),col="red",main = "howstudylooks",xlab="timegiventostudy",ylab="cgpagot",type="b",pch="20")
#here main means the topic,xlab=x axis name,type=b means to plot line and pch means to converst various other shape
#here is one more function cex we forgot to write which helps ti reduce size and shape


#lwd means width ot the line
plot(c(4,5),c(6,7),main="x&y",xlab="x",ylab="y",type="b",length=1,pch=20,lwd=20,col="yellow")

#lty gives a proper line pattern(ther are patter from 0 to 6)
plot(c(4,5),c(6,7),type="b",col="blue",lwd=10,lty=6)


#lines andd multiple line
#line
linesam<-c(2,3,4,5,6,7,8,9,10)
plot(linesam,col="pink",type="l",lwd=10,lty=4)
#multiple lines
lineram<-c(3,5,2,6,7)
lines(lineram,col="blue",type="l",lwd=5,lty=5)

#scatterplot= taking twoo variables in plotting scenario

car<-c(1,2,3,4,5,6,7)
petrol<-c(40,50,60,70,80,55,120)
plot(car,petrol,main="study_of-petrol_used_by_cars",xlab="carno",ylab="petrol_used-per_litre",type="l",col="black",lwd=5)





