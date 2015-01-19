# Using which function to handle the missing values

x<-data.frame(var1=sample(1:5),var2=sample(6:10))
x[c(1,3),"var2"]=NA

# Simply logical statement on a column with missing value (NA), will not enable us to subset
Subset_logical<-x$var2>8
# > Subset_logical
# [1]    NA  TRUE    NA FALSE FALSE
x[Subset_logical,] # or x[x$var2>8]
# which will include the missing values


# The which() function returns the indices of none-missing values that satisfy the criteria
x[which(x$var2>6),]

