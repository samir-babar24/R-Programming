#gather function in r 
# make a dataframe
studentsbase<-data.frame(
  mark=c(22,33,44,55),
  henry=c(44,33,88,76),
  garry=c(55,87,65,90)
  
)
studentsbase



samir<-gather(studentsbase,key="students",value="marks_of_students")
samir

