# 1. Clear the console:
cat("\014")  
# Alternatively, Ctrl + L
# However, clearing the console would not clean the workspace.

# 2. Clean the workspace: remove all the variables stored in workspace
rm(list=ls())

# 3. Str (structure) function 
# a. str can give brief summary of a function
str(lm)
# b. str can also quickly give a short summary output of any R object.
x<-list(a=1:4,b=8:12,c=16:20)
str(x)
