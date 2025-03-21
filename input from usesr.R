myfun <- function(x, y) {
  sum <- x + y
  return(sum)
}

str <- "give me two integers which you want to operate"
print(str)
int1 <- readline(prompt = "enter your first integer: ")
int2 <- readline(prompt = "enter your second integer: ")
x <- as.integer(int1)
y <- as.integer(int2)

addition <- myfun(x, y)
str1 <- "here's your addition"
print(str1)
print(addition)
