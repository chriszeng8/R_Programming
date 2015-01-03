# Chris Zeng (3rd Jan, 2014)
# Follow Roger Peng's examples
# Simple addition with two input arguments
add2<-function(x,y){
  x+y
}

# print out values above 10 from an input vector
above10<-function(x){
  ## logical vector that figures out which elements are greater than 10
  use<-x>10
  x[use]  
}

# print out values above n (user specified) from an input vector
above<-function(x,n){
  ## logical vector that figures out which elements are greater than 10
  use<-x>n
  x[use]
}

# Default value of the second argument is 10
above_default10<-function(x,n=10){
  ## logical vector that figures out which elements are greater than 10
  use<-x>n
  x[use]
}

# y: data frame or vector
column_mean<-function(y,removeNA=TRUE){
  nc<-ncol(y)
  means<-numeric(nc)
  for (i in 1:nc){
    means[i]<-mean(y[,i],na.rm=removeNA) 
    # Quick and dirty ways to remove NA
  }
  means
}

