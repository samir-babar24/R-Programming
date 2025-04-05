#GGPLOT in r language\

#samir sudhir babar
#calling package

#GGPLOTING layers:
#1)Data(selecting file on which u want to work)
#2)Asthetics(selecting column)
#3)geomatrices/slecting a graph
#4)Facets
#5)statastics
#6)coordinates
#7)themes

library(ggplot2)
mtcars$mpg <- as.numeric(mtcars$mpg)


data("mtcars")
sam<-head(mtcars,n=40)
#This is scatterplot(geom point)

ggplot(data = sam,aes(x=mpg,y=wt))+geom_point

#Basic plotting in a one varible
#This is a histogram of one varible
ggplot(data = sam,aes(x=mpg))+geom_histogram()

#This is a density plot of one varibale in r
ggplot(data = sam,aes(x=mpg))+geom_density()


#This is a dotplot  of one varibale in r
ggplot(data = sam,aes(x=mpg))+geom_dotplot()


#This is a frequency plot of one varibale in r
ggplot(data = sam,aes(x=mpg))+geom_freqpoly()


#This is a heat map plot of one varibale in r
ggplot(data = sam,aes(x=mpg))+geom_tile()
