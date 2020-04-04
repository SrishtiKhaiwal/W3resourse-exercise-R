#Write a R program to convert a given matrix to a 1 dimensional array.
a<-matrix(1:10,ncol = 5,nrow = 2)
a
b<-as.vector(a)
b


#Write a R program to create an array of two 3x3 matrices each with 3 rows and 3 columns from two given two vectors
a<-c(1,2,3,4,5)
a
b<-c(6,7,8,9,10,11)
b
c<-array(c(a,b),dim=c(3,3,2))
c


#Write a R program to create an 3 dimensional array of 24 elements using the dim() function.
a<-sample(1:5,24,replace=TRUE)
array(a,dim = c(3,2,4))


#Write a R program to create an array of two 3x3 matrices each with 3 rows and 3 columns from two given two vectors. Print the second row of the second matrix of the array and the element in the 3rd row and 3rd column of the 1st matrix.
#m1<-matrix(1:9,nrow=3,ncol=3)
m1<-c(1:9)
m1
#m2<-matrix(10:18,nrow=3,ncol=3)
m2<-c(10:18)
m2
arr<-array(c(m1,m2),dim=c(3,3,2))
arr
arr[3,3,1]
arr[2,,2]


#Write a R program to combine three arrays so that the first row of the first array is followed by the first row of the second array and then first row of the third array
a1<-rbind(rep(1,3),rep(2,3),rep(3,3))
a1
a2<-rbind(rep(4,3),rep(5,3),rep(6,3))
a2
a3<-rbind(rep(7,3),rep(8,3),rep(9,3))
a3
matrix(t(cbind(a1,a2,a3)),ncol=3,byrow=T)



#Write a R program to create an array using four given columns, three given rows, and two given tables and display the content of the array.
array(1:26,dim=c(3,4,2))


# Write a R program to create a two-dimensional 5x3 array of sequence of even integers greater than 50
array(seq(from=50,length.out = 15,by=2),dim=c(5,3))
