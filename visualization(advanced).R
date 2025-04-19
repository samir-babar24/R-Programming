#attractive graphs in r by sam

#referred website:
#https://www.cedricscherer.com/2019/08/05/a-ggplot2-tutorial-for-beautiful-plotting-in-r/

install.packages(
  c("ggplot2", "tibble", "tidyr", "forcats", "purrr", "prismatic", "corrr", 
    "cowplot", "ggforce", "ggrepel", "ggridges", "ggsci", "ggtext", "ggthemes", 
    "grid", "gridExtra", "patchwork", "rcartocolor", "scico", "showtext", 
    "shiny", "plotly", "highcharter", "echarts4r")
)
#creating a big data for analysid using dataframe of students
myfriends<-data.frame(
  name=c("samir","azim","laxman","vijay","virendra","keshav","advait","abhijit","trupti","pratik",
         "Aarav", "Pranav", "Adwait", "Rohan", "Shreyas", "Akshay", "Siddharth", "Nikhil", "Vishal", "Kunal"),
  
  born_year=c(2005,2004,2004,2005,2003,2006,2003,2004,2006,2005,
              2005,2004,2004,2005,2003,2006,2003,2004,2006,2005),
  
  MA_marks=c(30,60,99,10,39,82,46,90,62,9,40,88,65,77,32,90,99,88,43,78),
  
  DSA_marks=c(21, 41, 19, 54, 72, 57, 51, 64, 84, 35, 98, 9, 22, 35, 95, 65, 60, 30, 27, 94),
  
  BSFE_marks=c(38, 72, 15, 94, 5, 62, 47, 29, 83, 91, 11, 68, 27, 76, 34, 8, 50, 19, 100, 41),
  
  girlfriends=c(2, 5, 3, 1, 4, 3, 2, 5, 1, 4, 2, 3, 5, 1, 4, 2, 3, 5, 4, 1),
  
    pointer=c(5.3, 8.1, 6.7, 9.4, 7.2, 4.8, 8.9, 5.5, 6.3, 7.8, 9.1, 6.5, 
              8.3, 4.2, 7.5, 9.7, 5.9, 8.0, 4.6, 10.0)
  
)
print(myfriends)



#Starting geompoint to wotk on the graphs with dataset created over
#simple
library(ggplot2)
ggplot(data=chicago_air_pollution,aes(x=date,y=tmpd))+geom_point()
colorr<-c("red","yellow","blue","green","orange")
#making it look like attractive
ggplot(data=chicago_air_pollution,aes(x=date,y=tmpd))+geom_point(color="brown",shape="triangle",size=1.75)+
  
  labs(x="Temprature of chicago",y="Dates",title = "Studying chicago Temprature(datewise)",subtitle =" Hii I am samir here,loving data visualization in r" )+
  
  theme(axis.title.x = element_text(color="blue",size = 22,face="italic"),
        axis.title.y = element_text(color="purple",size = 20,face="bold"),
        plot.title = element_text(color="orange",size = 25,face="italic"),
        plot.subtitle = element_text(color="red",size = 19,face="bold"),
        axis.text  = element_text(color="navy",size = 17,face="italic"),
        axis.text.x  = element_text(color="navyblue",size = 17,face="italic"))

#adding legend
chicago_air_pollution$category <- ifelse(chicago_air_pollution$tmpd > 75, "Hot",ifelse(chicago_air_pollution$tmpd <25,"very cold","Cold"))

ggplot(data=chicago_air_pollution,aes(x=date,y=tmpd,color =category))+geom_point(shape="triangle",size=1.75)+
  
  labs(x="Temprature of chicago",y="Dates",title = "Studying chicago Temprature(datewise)",subtitle =" Hii I am samir here,loving data visualization in r" )+
  
  theme(axis.title.x = element_text(color="blue",size = 22,face="italic"),
        axis.title.y = element_text(color="purple",size = 20,face="bold"),
        plot.title = element_text(color="orange",size = 25,face="italic"),
        plot.subtitle = element_text(color="red",size = 19,face="bold"),
        axis.text  = element_text(color="navy",size = 17,face="italic"),
        axis.text.x  = element_text(color="navyblue",size = 17,face="italic"))
