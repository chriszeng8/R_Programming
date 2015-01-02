x<-c(1,2,NA,4,NA,5)
#is.na() will return a logical vector labeling the NA (missing) elements as true
bad<-is.na(x)
# However, as would like to keep the elements that are not missing
# we invert the logical vector
x[!bad]

y<-c("a",NA,NA,NA,"c",NA)
# Using the complete cases function to find the index of mutually exisiting elements
good<-complete.cases(x,y)
good
x[good]
y[good]