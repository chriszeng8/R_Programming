# Jan 16th, 2015 Chris Zeng
# The table function is a handy function that count the frequency of each factor levels
# Frequency of each factor level
# Combined with as.data.frame(table(DF$y))

# Example 1
DF<-data.frame(x=1:6,y=rep(letters[1:3],each=2),z=3)
AllLetters<-DF$y
as.data.frame(table(AllLetters))

# Example 2
Coin_Records<-rbinom(10,1,0.5)
as.data.frame(table(Coin_Records))

