#matrices
#creating and the printing of the mattrix
matrix1<-matrix(c(1,2,3,4,55),nrow=3,ncol=3)
matrix1
#access the matrix
matrix2<-matrix(c("samir","vaibhav","abhijit","laxman","sahil"),nrow=2,ncol=3)
matrix2
matrix2[2]
matrix2[2,]#elements all from row 2
matrix2[,1]#all elements from column 1
#accessing more than 1 row or column
matrix2[c(1,2),]#here i am accessing row 1 and 2
matrix2[,c(1,3)]#here i am accessing column 1 and 3
matrix2[c(1,2),c(1,2,3)]#here i am accessing row 1,2 and column 1,2,3
#adding rows and columns//cbind()also used to combine two or matrices
matrix3<-cbind(matrix2,"ram","pappu")#we usse cbind() function to add rows or column
matrix3
#we also use r bind() to ad additional rows or columns//also two join two matrices
#removing roes or column
matrix4<-matrix2[-c(1),-c(1)]#removed first row and first column
matrix4
#to check no. of rows /column use dim function
dim(matrix2)

#for loop in matrix
for (rows in 1:nrow(matrix2)) {
  for (columns in 1:ncol(matrix2)) {
    print(matrix2[rows, columns])
  }
}