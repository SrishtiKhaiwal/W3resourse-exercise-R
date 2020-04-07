#Write a R program to create a list containing strings, numbers, vectors and a logical values
list('abc',1,c(1,2,3,4,5),TRUE)

#Write a R program to list containing a vector, a matrix and a list and give names to the elements in the list.
a<-list(c(1,2,3),matrix(c(1,2,3,4,5,6),nrow=2),list(c(6,7,8,9,0)))
names(a)<-c("Number","Matrix","List")
a

# Write a R program to create a list containing a vector, a matrix and a list and give names to the elements in the list. Access the first and second element of the list. 
a[c(1,2)]


#Write a R program to create a list containing a vector, a matrix and a list and add element at the end of the list
#append(a,list(c(4,5,6,7)),after=length(a))
a[length(a)+1]="jkncd"
a


#Write a R program to select second element of a given nested list
x = list(list(0,2), list(3,4), list(5,6))
x
lapply(x, '[[', 2)


#Write a R program to create a list containing a vector, a matrix and a list and remove the second element.
a[2]=NULL
a


#Write a R program to create a list containing a vector, a matrix and a list and update the last element
a[length(a)]="NUMBER"
a


#Write a R program to merge two given lists into one list.
d<-list(1,2)
b<-list(3,4)
c(d,b)


#Write a R program to convert a given list to vector.
v<-unlist(d)
n<-unlist(b)
v+n


#Write a R program to create a list of dataframes and access each of those dataframes from the list
df1<-data.frame(a=c(1,2,3,4),b=c(5,6,7,8))
df2<-data.frame(a=c(9,10,11,12),b=c(13,14,15,16))
l<-list(df1,df2)
l[1]
l[2]


#Write a R program to count number of objects in a given list.
length(a)


#Write a R program to convert a given dataframe to a list by rows
split(df1,seq(nrow(df1)))


#Write a R program to convert a given matrix to a list
m<-matrix(1:6,nrow=2)
m
split(m,rep(1:ncol(m),each=nrow(m)))


#Write a R program to assign NULL to a given list element.
l1<-list(1,2,3,4)
l1[1]=list(NULL)
l1


#Write a R program to create a list named s containing sequence of 15 capital letters, starting from 'E'.
LETTERS[match("E",LETTERS):(match("E",LETTERS)+15)]
LETTERS[match("E",LETTERS)+15]


#Write a R program to Add 10 to each element of the first vector in a given list
ls<-list(a=c(1,2,3,4,5),b=c('a','b','c','d'))
ls$a+10


#Write a R program to extract all elements except the third element of the first vector of a given list
ls$a[-3]


#Write a R program to add a new item g4 = "Python" to a given list.
g4 = "Python"
ls$g4 = "Python"#or ls[3]<-g4
ls


#Write a R program to assign new names "a", "b" and "c" to the elements of a given list
names(ls)=c("a","b","c")
ls


#Write a R program to get the length of the first two vectors of a given list
length(ls$a)
length(ls$b)


#Write a R program to find all elements of a given list that are not in another given list
l1<-list(1,2,3,4)
l2<-list(1,5,6,7)
setdiff(l2,l1) #All elements of l2 that are not in l1
