# Author: Chris Zhuo Zeng
# Date: Jan 6th, 2015

# This is to show the difference in time between using apply function 
# and rowSums function to calcuation the sum of each row.
x<-matrix(rnorm(100000000),nrow=10000,ncol=10000)

# Using the apply function
# Start the clock
ptm <- proc.time()
p<-apply(x,1,sum)
# Stop the clock
time1<-proc.time()-ptm

# Using the rowSums function
# Start the clock
ptm <- proc.time()
p<-rowSums(x)
# Stop the clock
time2<-proc.time()-ptm

# print out time1 and time2, and see the difference between these two recorded time

# It can be shown that rowSums function is highly optimized and much faster than
# apply function, even though functionally they are equivalent.