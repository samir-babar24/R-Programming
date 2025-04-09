#FA1 R language
#Samir sudhir babar
#123B1D007
#computer-regional
#creating dataframe

#Q1)Creating a dataframe
students<-data.frame(
  PRN=c("123B1B01","123B1C55","123B1D12","123B1D87","123B1LO6","123B1P65"),
  Name=c("Asha","Kiran","Rjesh","Salman","Juhi","Ragini"),
  Bank_acc=c("IOB2205","IDB13001","SBI4451","AXIS002","IOB2503","ICICI123"),
  fees_paid=c(147503,22572,3759,152007,3759,154053),
  mobile_no.=c(98000046,54002456,78940069,559877800,22564200,235569800)
)
print(students)

#Q2)
#how to  see inbuilt dataset-
#syntax: data("name of inbuilt data")

library(dplyr)
library(readr)
#calling data
data("storms")

#viewing the data 
View("storms")

#strucyture of storms
str("storms")

#summary of data
summary("storms")

#Q3)
#IMPORTING CAR_PRICE-PREDICTION FILE
library(readxl)
car_price_prediction <- read_excel("Datasets/car_price_prediction.xlsx")
#View(car_price_prediction)


#Q4)finding the null values
findd<-is.null(car_price_prediction)
print(findd)

#Q5)extracting column from 101-250
library(dplyr)
head(car_price_prediction,n=250)

#Q6)
#using tidyr and pivot-wider function
library(tidyr)
Data2<-car_price_prediction%>%pivot_wider(names_from = Gear_box_type,values_from = Price)
print(Data2)

#Q7)
#FILTERING COLUMNP PETROL WHOS VALUE MORE THAN 1.8
data3<-car_price_prediction%>%filter(Engine_volume>1.8)
print(data3)

#Q8
#SORTING THE DATA
data4<-car_price_prediction%>%arrange(Prod_year,`Fuel type`)
print(data4)

#Q9
#finding avg of milage corresponding to fuel type
#creating group by
data5<-car_price_prediction%>%group_by(`Fuel type`)
print(data5)
data6<-data5%>%summarise(average=mean(Mileage))
print(data6)

