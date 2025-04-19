#sample paper of A2
#q1)crreating a dataframe

dataf<-data.frame(
  name=c("samir","sushant","pratik","piyush","ajim","vaibhav"),
  prn=c("123B1D007","123B1D007","123B1D007","
  123B1D007","123B1D007","123B1D007"),
  cgpa=c(7.8,5.6
,9.8  ,8.8,7.8,6),
  back_or_not=c("YES","NO","YES","NO","YES","NO"),
  birthdate=c("11/03/2005","4/3/2006","3/5/2003","1/8/2002","6/7/2005","5/4/2007")
)
print(dataf)

#Q2 iris data extracting and its sructure and summary

data("iris")
str("iris")
summary("iris")

#Q3)extracting petal length from iris dataset

petalll<-iris$Petal.Length
print(petalll)

#Q4)extarcting specific value from dataset 

extracing_specific_value<-iris[4,3]
print(extracing_specific_value)

#Q5)Deleting 2nd row from datasest
 
deleting_row<-iris[-2]
print(deleting_row)

#Q6)using wide function to have to give name as cut and values as depth_percent
install.packages("ggplot2")
library(ggplot2)
library(dplyr)
library(tidyr)

#Q7)making seperate column for birthdate
newbirth<-dataf%>%separate(birthdate,into=c("Date","Month","Year"),sep="/")
print(newbirth)



