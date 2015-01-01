# Author: Chris Zhuo Zeng
# This example is show:
# 1. multiple ways of subsetting a list (i.e., $ [[#]]or [["var_name"]])
# 2. the difference between single [] and double [[]]

x<-list(foo=1:9,bar=0.1)
# What would x look like when we print it out? (an array of 2 elements, 10 elements? or what?)
x
# What is the length or how many elements are there in list x? (2 or 10?)
length(x)
# Subsetting using []
# REMEMBER that single bracket always subset and return the same type of class.
# which in this case, is the type LIST
x[1]    #subsetting list using [, which returns a list
x["foo"]#subsetting list using [""], which also returns a list


#Subsetting using [[""]] or  $
x[[1]]  #subsetting list using [[
x$foo   #subsetting list using $



