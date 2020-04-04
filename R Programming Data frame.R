#Write a R program to create an empty data frame
a<-data.frame(Ints=integer(),
           Doubles=double(),
           Characters=character(),
           Logicals=logical(),
           Factors=factor(),
           stringsAsFactors=FALSE)
print(str(a))


#Write a R program to create a data frame from four given vectors
names<-c('a','b','c','d')
roll_no<-c(1,2,3,4)
sub<-c('a1','b1','c1','d1')
age<-c(11,22,33,44)
df<-data.frame("names"=names,"roll_no"=roll_no,"sub"=sub,"age"=age)
df

#Write a R program to get the structure of a given data frame
print(str(df))


#Write a R program to get the statistical summary and nature of the data of a given data frame
print(summary(df))


#Write a R program to extract specific column from a data frame using column name
data.frame(df$names)


#Write a R program to extract first two rows from a given data frame.
df[1:2,]

#Write a R program to extract 3rd and 4th rows with 1st and 3rd columns from a given data frame
df[c(3,4),c(1,3)]

#Write a R program to add a new column in a given data frame
df$add<-c('a2','b2','c2','d4')
df$add
df

#Write a R program to add new row(s) to an existing data frame
df2<-data.frame("names"='e',"roll_no"=5,"sub"='e1',"age"=55,"add"='e4')
df2
df<-rbind(df,df2)
df


#Write a R program to drop column(s) by name from a given data frame
subset(df,select=c(names,add))

#Write a R program to drop row(s) by number from a given data frame
df[1:2,]

#Write a R program to sort a given data frame by multiple column(s).
df[with(df,order(names,age)),]

#Write a R program to create inner, outer, left, right join(merge) from given two data frames
df1 = data.frame(numid = c(12, 14, 10, 11))
df1
df2 = data.frame(numid = c(13, 15, 11, 12))
df2
print("Left outer Join:")
merge(df1, df2, by = "numid", all.x = TRUE)
print("Right outer Join:")
merge(df1, df2, by = "numid", all.y = TRUE)
print("Outer Join:")
merge(df1, df2, by = "numid", all= TRUE)
print("Cross Join:")
merge(df1, df2, by = NULL)


#Write a R program to replace NA values with 3 in a given data frame.
names<-c('a','b','c','d')
roll_no<-c(1,2,NA,4)
sub<-c('a1','b1','c1','d1')
age<-c(11,22,33,44)
df3<-data.frame("names"=names,"roll_no"=roll_no,"sub"=sub,"age"=age)
df3
df3[is.na(df3)]=3
df3


#Write a R program to change a column name of a given data frame
colnames(df)[which(names(df)=="sub")]="subject"
df

#Write a R program to change more than one column name of a given data frame
colnames(df)[which(names(df)=="sub")]="subject"
colnames(df)[which(names(df)=="roll_no")]="RollNo"
df

#Write a R program to select some random rows from a given data frame
df[sample(nrow(df),3),]

#Write a R program to reorder an given data frame by column name
df[c("names","age","roll_no","sub")]

#Write a R program to compare two data frames to find the elements in first data frame that are not present in second data frame. 
setdiff(df, df3)

#Write a R program to find elements which are present in two given data frames
intersect(df, df3)

#Write a R program to find elements come only once that are common to both given data frames
union(df, df3)

#Write a R program to save the information of a data frame in a file and display the information of the file
save(df,file="data.rda")
load("data.rda")
file.info("data.rda") 

#Write a R program to count the number of NA values in a data frame column
print(sum(is.na(df)))
print(sum(is.na(df$names)))


#Write a R program to create a data frame using two given vectors and display the duplicated elements and unique rows of the said data frame.
a = c(10,20,10,10,40,50,20,30)
b = c(10,30,10,20,0,50,30,30)
print("Original data frame:")
ab = data.frame(a,b)
print(ab)
print("Duplicate elements of the said data frame:")
print(duplicated(ab))
print("Unique rows of the said data frame:")
print(unique(ab))


#Write a R program to call the (built-in) dataset airquality. Check whether it is a data frame or not? Order the entire data frame by the first and second column
data = airquality
print("Original data: Daily air quality measurements in New York, May to September 1973.")
print(class(data))
print(head(data,10))
result = data[order(data[,1]),]
print("Order the entire data frame by the first and second column:")
print(result)


#Write a R program to call the (built-in) dataset airquality. Remove the variables 'Solar.R' and 'Wind' and display the data frame
data = airquality
print("Original data: Daily air quality measurements in New York, May to September 1973.")
print(data)
data[,c("Solar.R")]=NULL #or data[,"Solar.R"]
data[,c("Wind")]=NULL    ##or data[,"Wind"]
print("data.frame after removing 'Solar.R'  and 'Wind' variables:")
print(data)
