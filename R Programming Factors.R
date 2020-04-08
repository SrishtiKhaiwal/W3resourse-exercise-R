#Write a R program to find the levels of factor of a given vector
a<-c(1,2,2,3,4,NA,4,4,NA,1,1)
factor(a)
levels(factor(a))


#Write a R program to change the first level of a factor with another level of a given factor
a<-c('a','b','a','b','c')
f<-factor(a)
levels(f)[1]='e'
print(f)


#Write a R program to create an ordered factor from data consisting of the names of months
b<-c('Jan','Feb','Jan','Feb','Mar')
f=factor(b)
print(table(f))


#Write a R program to concatenate two given factor in a single factor
f1<-factor(sample(LETTERS,size=6,replace=TRUE))
f2<-factor(sample(LETTERS,size=6,replace=TRUE))
f=factor(c(levels(f1)[f1],levels(f2)[f2]))
print(f)


#Write a R program to convert a given pH levels of soil to an ordered factor
ph=c(1,5,6,5,6,5,7,8,9)
f=factor(ph,levels = c(1,5,7,8,9),ordered = TRUE)
print(f)


#Write a R program to extract the five of the levels of factor created from a random sample from the LETTERS (Part of the base R distribution.)
f1<-factor(sample(LETTERS,size=10,replace=TRUE))
f1
factor(f1[1:5])


#Write a R program to create a factor corresponding to height of women data set, which contains height and weights for a sample of women.
data=women
data
female_H=cut(women$height,3)
print(table(female_H))
