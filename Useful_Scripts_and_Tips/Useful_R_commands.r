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

