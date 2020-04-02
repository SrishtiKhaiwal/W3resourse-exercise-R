#Write a R program to take input from the user (name and age) and display the values. Also print the version of R installation.
name = readline(prompt="Input your name: ")
age =  readline(prompt="Input your age: ")
print(paste("My name is",name, "and I am",age ,"years old."))
print(R.version.string)

#Write a R program to get the details of the objects in memory
name = "R"; 
n1 =  10; 
n2 =  3.5
nums = c(1, 2, 3, 4, 5, 6)
print(ls())
print("Details of the objects in memory:")
print(ls.str())

#Write a R program to create a sequence of numbers from 20 to 50 and find the mean of numbers from 20 to 60 and sum of numbers from 51 to 91
seq(20,50)
mean(20:50)
sum(51:91)

#Write a R program to create a vector which contains 10 random integer values between -50 and +50
sample(-50:50,10)

#Write a R program to get the first 10 Fibonacci numbers.
Fibonacci<-numeric(10)
Fibonacci[1]<-Fibonacci[2]<-1  
for (i in 3:10)
Fibonacci[i]<- Fibonacci[i - 2] + Fibonacci[i - 1]
Fibonacci

#Write a R program to get all prime numbers up to a given number
prime_numbers <- function(n) {
  if (n >= 2) {
    x = seq(2, n)
    prime_nums = c()
    for (i in seq(2, n)) {
      if (any(x == i)) {
        prime_nums = c(prime_nums, i)
        x = c(x[(x %% i) != 0], i)
      }
    }
    return(prime_nums)
  }
  else 
  {
    stop("Input number should be at least 2.")
  }
} 
prime_numbers(12)


#Write a R program to print the numbers from 1 to 100 and print "Fizz" for multiples of 3, print "Buzz" for multiples of 5, and print "FizzBuzz" for multiples of both.
for (i in 1:100)
{
if (i%%3==0)
  print( "Fizz")
  else if (i%%5==0)
    print("Buzz")
  else if (i%%3==0 && i%%5==0)
    print("FizzBuzz")
  else
    print(i)
}



#Write a R program to extract first 10 english letter in lower case and last 10 letters in upper case and extract letters between 22nd to 24th letters in upper case.
print("First 10 letters in lower case")
t=head(letters,10)
print(t)
print("last 10 letters in upper case")
u=tail(LETTERS,10)
print(u)
print("Letters between 22nd to 24th letters in upper case:")
e = tail(LETTERS[22:24])
print(e)


#Write a R program to find the factors of a given number.
print_factors=function(n)
{
for (i in 1:n)
{
  if (i%%2==0)
    print(i)
}
}
print_factors(6)


#Write a R program to find the maximum and the minimum value of a given vector.
a<-c(4,6,1,7,8,4,9)
min(a)
max(a)


#Write a R program to get the unique elements of a given string and unique numbers of vector
str1 = "The quick brown fox jumps over the lazy dog ."
print(unique(tolower(str1)))
v<-c(1,2,2,3,3,4,5,6,4)
print(unique(v))


#Write a R program to create three vectors a,b,c with 3 integers. Combine the three vectors to become a 3×3 matrix where each column represents a vector. Print the content of the matrix.
a<-c(1,2,3)
b<-c(4,5,6)
d<-c(7,8,9)
cbind(a,b,d)


#Write a R program to create a list of random numbers in normal distribution and count occurrences of each value.
n = floor(rnorm(1000, 50, 100))
print('List of random numbers in normal distribution:')
print(n)
t = table(n)
print("Count occurrences of each value:")
print(t)


# Write a R program to create three vectors numeric data, character data and logical data. Display the content of the vectors and their type.
a<-c(1:2)
a
class(a)
b<-c('a','b','s','d')
b
class(b)
c<-c(TRUE,TRUE,FALSE)
c
class(c)


#Write a R program to create a 5 x 4 matrix , 3 x 3 matrix with labels and fill the matrix by rows and 2 × 2 matrix with labels and fill the matrix by columns
row=c('r1','r2','r3','r4','r5')
column=c('c1','c2','c3','c4')
matrix(1:20,nrow = 5,ncol = 4,dimnames = list(row,column))
row1=c('r1','r2','r3')
column1=c('c1','c2','c3')
matrix(1:9,nrow = 3,ncol = 3,dimnames = list(row1,column1))
matrix(1:4,nrow = 2,ncol = 2,byrow=FALSE)


#Write a R program to create an array, passing in a vector of values and a vector of dimensions. Also provide names for each dimension.
array(1:36,  dim = c(4, 3, 2),dimnames = list(
  c("Col1", "Col2", "Col3", "Col4"),
  c("Row1", "Row2", "Row3"),
  c("Part1", "Part2")
))


# Write a R program to create an array with three columns, three rows, and two "tables", taking two  vectors as input to the array.  Print the array
array(1:18,  dim = c(3, 3, 2),dimnames = list(
  c("Col1", "Col2", "Col3"),
  c("Row1", "Row2", "Row3"),
  c("Part1", "Part2")
))


#Write a R program to create a list of elements using vectors, matrices and a functions. Print the content of the list. 
list(
  c(1, 2, 2, 5, 7, 12),  
  month.abb,
  matrix(c(3, -8, 1, -3), nrow = 2),
  asin
)


#Write a R program to draw an empty plot and an empty plot specify the axes limits of the graphic
plot(1,type="n",xlim=c(1,10),ylim =c(1,10) )


#Write a R program to create a simple bar plot of five subjects marks
marks<-c(10,20,30,40)
barplot(marks,names.arg = c("English", "Science", "Math.", "Hist."))


#Write a R program to create  bell curve of a random normal distribution.
n = floor(rnorm(10000, 500, 100))
t = table(n)
barplot(t)


#Write a R program to compute sum, mean and product of a given vector elements
v<-c(1,2,3,4,5,6)
sum(v)
mean(v)
prod(v)


#Write a R program to create a list of heterogeneous data, which include character, numeric and logical vectors. Print the lists
list(chr='Srishti',num=(1:10),flag=TRUE)


# Write a R program to create a Dataframes which contain details of 5 employees and display the details.
Employee=data.frame(Names=c('a','b','c','d','e'),Salary=c(1000,2000,3000,4000,5000),Gender=c('F','M','F','M','F'))
Employee

#Write a R program to create a Data Frames which contain details of 5 employees and display summary of the data
Employee=data.frame(Names=c('a','b','c','d','e'),Salary=c(1000,2000,3000,4000,5000),Gender=c('F','M','F','M','F'))
Employee
summary(Employee)


#Write a R program to create the system's idea of the current date with and without time
print("System's idea of the current date with and without time:")
print(Sys.Date())
print(Sys.time())
