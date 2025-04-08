#samiirrrr Babarr
#tidyverse =tidyr,dplyr,ggplot2 and 6more
#install.packages("tidyverse")

#STARTINNG OF TIDYR
#tisyr has two data formats as wide and longer

#wide to long=pivot_wider()
#long to wide=pivot_longer()

#syntax for wide 
#pivot_wider(
#data,names_from="columnname",value_from="columnname")

#syntax for long
#pivot_longer(
#data,names_to="columnname",value_to="columnname")

library(tidyr)
data("airquality")

#head and tail
head(airquality)
tail(airquality)

library(ggplot2)
#making visualization of airquality dataset

ggplot(data=airquality,
       aes(x=Ozone,y=Month))+
          geom_point(color="red")+
          labs(title="sample_ggraph",
          x="ozone",y="months")

#now converting the main data to longer data(tottal data... if we want specific columns then 
#we can go for col="columnnames

#1)#pivot_longer

samlonger<-pivot_longer(
  data=airquality,
  col=everything(),# here i have selected all columns
  names_to="Day",
  values_to="Solar.R"
)
print(samlonger)

#now taking only specific columns
samlonger<-pivot_longer(
  data=airquality,
  col=c("Temp","Wind","Ozone"),
  names_to="Name", #this will only columnname means my column name sis Nmae
  values_to="Value" #this will only columnname means my column name Value
)
print(samlonger)


#2)pivot_wider

#now pivoting into wider format
#here we cant access specific columns
samwider<-pivot_wider (
  data=airquality,
  
  names_from ="Day", #give columnname name
  values_from="Solar.R" #give columnname
)
print(samwider)


#3)unite function

samdata<-data.frame(
  frriends=c("vijay","virendra","laxman","azim","piyush"),
  their_surname=c("Dhame","Japtap","Patil","Pathan","Patil"),
  their_cgpa=c(6,7,8,9,6),
  birthdate=c("2/4/2006","3/5/2004","4/4/2002","5/6/2001","7/9/1999"),
  MdM_topics=c("R","KOTLIN","business_study","english","R")
)

#using_unite function add their last naem and name into fullname
united_data<-unite(
  data=samdata,
  col=full_name,c(frriends,their_surname),#this will create new column name
  sep="_",
)
print(united_data)


#4)seperate function

#now we will separate full name into first name and last name column
seperated_data<-separate(data=united_data,
                         full_name,
                         into=c("first_name","last_name"),sep="_")
print(seperated_data)

#one more example to seperate birthdates intoo day,month anmd year
seperating_dates<-separate(data=seperated_data,
                           birthdate,into=c("Divas","Mahina","Year"),sep="/")
print(seperating_dates)




##STARTING DPLYR

#there are 6 main functions in dplyr those are
#1)select
#2)filter
#3)mutate
#4)rename
#5)arrange
#6)summarise

#pipe function=used to connect with  data

#1)select

library(dplyr)
data("mtcars")
selecting_columns<-mtcars%>%select(mpg:gear)#here i have selected 
                                            #all columns from mpg  to gear
print("selecting_columns")

#2)filter(we can give here conditions)

filtering_data<-mtcars%>%filter(disp>160 & disp<240)#here i have given conditon that 
print(filtering_data)                               #select only data whos disp is
                                                    # more than 160 and less than240

#3)using  mutate function now


mutate_data<-mtcars%>%mutate(newcolumn1=disp+hp,
                              newcolumn2=vs*gear,
                              newcolumn3=mpg/cyl,
                              newcolumn4=mpg*cyl*drat+qsec/wt)
#here we just created 4 new columns by making operations of datsets's column
print(mutate_data)

#4)arrange
  #ascending order arrnaging
 arrangeing_data<-mtcars%>%arrange(hp)
 
  #descending order arranging
 arranging_data_desc<-mtcars%>%arrange(desc(carb))

 print(arrangeing_data) 
 print(arranging_data_desc)
 
#5)Rename
 renaminng_data<-mtcars%>%rename(horsepower=hp)
 #renamed hp column as horsepower
 print(renaminng_data)
 
#6)summariise
 final_<-mtcars%>%summarise(avg_qsec=mean(qsec),mode_carb=mode(carb),
                            median_mpg=median(mpg))
 #calculating mean,mode,median of columns
 print(final_)

 
 

                               












