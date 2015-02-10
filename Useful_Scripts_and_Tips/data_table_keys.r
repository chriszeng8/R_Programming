# Keys in datatable can fast track the query process
library(data.table)

# Example 1: Use keys to subset tables
# Query group based on "numeric" key
# Create a data table
DT<-data.table(x=rep(c(3,2,1),each=100),y=rnorm(300))
# Set x as the key column (like SQL)
setkey(DT,x)
# Find all data records with 1 in the key column
DT[.(1)] # if key is numeric value
DT[list(1)] # if key is a numeric value
# Not to confused with DT[1] which own subset the first row


# Example 2: Use keys to subset tables
# Query group based on "textual" key
DT2<-data.table(x=rep(c("a","b","c"),each=100),y=rnorm(300))
# Set x as the key column (like SQL)
setkey(DT2,x)
# Find all data records with 'a' in the key column
DT2['a']


# Example 2: Use keys to merge 
# (Note that key does not need to be unique ID, but in the following example, it makes
# to use distinctive values in the key column)
DT1<-data.table(student=c("Kevin","Chris","Cherie","Bob","Prash"),chemistry=c(80,81,92,72,93))
DT2<-data.table(student=c("Lily","Chris","Cherie","Kat","Shane"),physics=c(80,81,92,72,77))
setkey(DT1,student)
setkey(DT2,student)
merge(DT1,DT2)
