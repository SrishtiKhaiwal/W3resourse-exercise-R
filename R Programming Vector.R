#Write a R program to create a vector of a specified type and length. Create vector of numeric, complex, logical and  character types of length 6.
vector("numeric", 5)
vector("complex", 5)
vector("logical", 5)
vector("character", 5)


#Write a R program to add two vectors of integers type and length 3
a<-c(1,2,3)
b<-c(4,5,6)
a+b


#Write a R program to append value to a given empty vector
c1=c()
c<-c(1,2,3,4,5,6,7,8,9)
for (i in c)
{
  c1[i]=c[i]
}
print(c1)


#Write a R program to multiply two vectors of integers type and length 3.
a<-c(1,2,3)
b<-c(4,5,6)
a*b


#Write a R program to divide two vectors of integers type and length 3
a<-c(1,2,3)
b<-c(4,5,6)
a/b


#Write a R program to find Sum, Mean and Product of a Vector
a<-c(1,2,3)
sum(a)
mean(a)
prod(a)


#Write a R program to find the minimum and the maximum of a Vector.
max(a)
min(a)


#Write a R program to sort a Vector in ascending and descending order
order(a,decreasing = TRUE)
order(a,decreasing = FALSE)

#Write a R program to test whether a given vector contains a specified element
a<-c(3,4,6,1,2,7,6)
print(is.element(25, x))
print(is.element(2, x))


#Write a R program to count the specific value in a given vector
print(sum(a==6))


#Write a R program to access the last value in a given vector.
tail(a,n=1) #tail(a,n=2)


#Write a R program to find second highest value in a given vector
b<-sort(a,decreasing=TRUE)
b
b[2]


#Write a R program to find nth highest value in a given vector
n=4
print(sort(a,decreasing=TRUE)[n])


#Write a R program to find common elements from multiple vectors
x = c(10, 20, 30, 20, 20, 25, 29, 26)
y = c(10, 50, 30, 20, 20, 35, 19, 56)
z = c(10, 40, 30, 20, 20, 25, 49, 26)
print(intersect(x,y),z)


#Write a R program to convert given dataframe column(s) to a vector
names<-c('a','b','c','d')
roll_no<-c(1,2,3,4)
sub<-c('a1','b1','c1','d1')
age<-c(11,22,33,44)
df<-data.frame("names"=names,"roll_no"=roll_no,"sub"=sub,"age"=age)
df


#Write a R program to extract every nth element of a given vector
z<-c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)
z[seq(1,length(z),5)]


#Write a R program to list the distinct values in a vector from a given vector
unique(a)


#Write a R program to find the elements of  a given vector that are not in another given vector.
setdiff(x,y)


#Write a R program to reverse the order of given vector
rev(a)


#Write a R program to concatenate a vector
a = c("Srishti","Khaiwal")
paste(a,collapse = "")


#Write a R program to count number of  values in a range in a given vector.
a<-c(1,2,3,6,4,5,6)
sum(a>3 & a<6)


#Write a R program to convert two columns of a data frame to a named vector.
a<-c(1,2,3,4,5)
b<-c(22,11,33,55,66)
df<-data.frame("roll_no"=a,"age"=b)
setNames(as.character(df$roll_no),df$age)


#Write a R program to create a vector and find the length and the dimension of the vector
length(a)
dim(a)


#Write a R program to combines two given vectors by columns, rows.
v1 = c(1,3,5,7,9)
v2 = c(2,4,6,8,10)
cbind(v1,v2)
rbind(v1,v2)


#Write a R program to test whether the value of the element of a given vector greater than 10 or not. Return TRUE or FALSE
v2 = c(2,4,6,8,10)
print(v2>10)


#Write a R program to add 3 to each element in a given vector. Print the original and new vector
v2
v2+3


#Write a R program to create a vector using : operator and seq() function
v<-1:5
v
seq(1,3,0.1)
seq(1,10,length.out=6)
