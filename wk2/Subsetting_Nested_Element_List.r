## Created on 1/1/2014.
## Based on JHU's coursera course, with slight modification by Chris Zhuo Zeng
## This is to demonstrate how you can extract an element within an element of a list

# A list with two elements, with the first and second elements both being vectors themselves
x<-list(a=c(10,12,14),b=c(3.14,2.81))
# within the 1st element of the list (i.e., a), subset the 3rd element
x[[c(1,3)]]

# A list with two elements, with the first element being a nested list, and second being a vector
y<-list(a=list(10,12,14),b=c(3.14,2.81))
y[[c(1,3)]]

# if we were to take it a new level, we can had triple-nested list
z<-list(a=list(c=list(10,11,13),12,14),b=list(3.14,2.81))
z[[c(1,1,3)]]
## Here we subset the first element of the list (i.e., a), then subset the first element with
## the list a (i.e. list c), finally extracting the 3rd element from the list c.

z[[c(1,1)]]
## this will return us the list c