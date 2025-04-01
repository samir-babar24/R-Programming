#DATAframes
mydataframe<-data.frame(
  samirs_cgpa=c(6,8.7,8,8.7),
  kaiwalyas_cgpa=c(8,7,9,8),
  ram_cgpa=c(8,8,8.7,8)
)
mydataframe

#function to summarize the dataframe
summary(mydataframe)

#to add row or column
mydataframe2<-rbind(mydataframe,c("raju",5,"shailesh"))
mydataframe2
mydataframe3<-cbind(mydataframe,#columnname= c("atharv_cgpa",8,8,8,NULL,NULL))
mydataframe3


#cbind used to add column andd r bind used to add row in the datframe/other functions
#same process of removing colum or a row
#ncol,nrow,dim are some functions used to know the numbers of rows,column and amount
dim(mydataframe3)
nrow(mydataframe3)
ncol(mydataframe3)
