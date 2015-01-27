# 1. Clear the console:
cat("\014")  
# Alternatively, Ctrl + L
# However, clearing the console would not clean the workspace.

# 2. Clean the workspace: remove all the variables stored in workspace
rm(list=ls())

#3. get the quick argument list of a function
arg(lm)

# 4. Str (structure) function 
# a. str can give brief summary of a function
str(lm)
# b. str can also quickly give a short summary output of any R object.
x<-list(a=1:4,b=8:12,c=16:20)
str(x)

# 5. list all objects/variables in your local workspace.
ls()

# 6. Table function for counting the frequency of each factor level
y<-rbinom(10,1,0.5)
as.data.frame(table(y))

# 7. %in% used as == for subsetting with multiple equality criteria
set.seed(1)
DF<-data.frame(x=sample(1:10,8,replace=T),y=rep(letters[1:4],each=2),c=16:23)
DF# DF$y %in% c("a","c") is a logical statement that tells which one is good and 
DF[DF$y %in% c("a","c"),]

# 8. read.fwf: read fixed width file

# 9. extract numeric from text
library(tidyr)
num<-extract_numeric("class5")
