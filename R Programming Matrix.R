#Write a R program to create a blank matrix.
matrix(, nrow = 10, ncol = 5)

#Write a R program to create a matrix taking a given vector of numbers as input. Display the matrix
matrix(c(1:10),nrow = 2,ncol=5)

#Write a R program to create a matrix taking a given vector of numbers as input and define the column and row names.
col_name=c("c1","c2","c3","c4","c5")
row_name=c("r1","r2")
m<-matrix(c(1:10),nrow = 2,ncol=5,byrow=TRUE,dimnames = list(row_name,col_name))
m

#Write a R program to access the element at 3rd column and 2nd row, only the 3rd row and only the 4th column of a given matrix.
m[2,3]
m[2,]
print(m[,3])


#Write a R program to create two 2x3 matrix and add, subtract, multiply and divide the matrixes
m1<-matrix(c(1:6),nrow=2,ncol=3)
m1
m2<-matrix(c(7:12),nrow=2,ncol=3)
m2
m1+m2
m1-m2
m1*m2
m1/m2


#Write a R program to create a matrix from a list of given vectors.
l = list()
for (i in 1:5) 
l[[i]] <- c(i, 1:4)
print("List of vectors:")
print(l)
print("New Matrix:")
do.call(rbind, l)


#Write a R program to extract the submatrix whose rows have column value > 7 from a given matrix
m[m[,3]>6,]


#Write a R program to convert a matrix to a 1 dimensional array
as.vector(m)


# Write a R program to create a correlation matrix from a dataframe of same data type.
d=data.frame(x1=rnorm(5),x2=rnorm(5),x3=rnorm(5))
d
cor(d)


#Write a R program to convert a given matrix to a list of column-vectors. 
m
split(m,rep(1:ncol(m),each=nrow(m)))


#Write a R program to find row and column index of maximum and minimum value in a given matrix.
which(m==max(m),arr.ind=TRUE)
which(m==min(m),arr.ind=TRUE)


#Write a R program to rotate a given matrix 90 degree clockwise rotation
m
t(apply(m,2,rev))
apply(m,2,rev)#interchange rows


#Write a R program to concatenate two given matrices of same column but different rows
x = matrix(1:12, ncol=3)
x
y = matrix(13:24, ncol=3)
y
rbind(x,y)
dim(rbind(x,y))
