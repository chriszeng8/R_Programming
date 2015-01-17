# Jan 16th, 2015 Chris Zeng
# The table function is a handy function that count the frequency of each factor levels
# Frequency of each factor level
# Combined with as.data.frame(table(DF$y))

# Example 1
DF<-data.frame(x=1:6,y=c("a","b","b","b","c","c"),z=3)
AllLetters<-DF$y
as.data.frame(table(AllLetters))

# Example 2
Coin_Records<-rbinom(10,1,0.5)
as.data.frame(table(Coin_Records))

# Alternatively, data.table is an alternative way
# Example 1
library(data.table)
DT<-data.table(x=1:6,y=c("a","b","b","b","c","c"),z=3)
DT[,.N,by=y]

# More on differences between data table and data frame.
# http://stackoverflow.com/questions/13618488/what-you-can-do-with-data-frame-that-you-cant-in-data-table