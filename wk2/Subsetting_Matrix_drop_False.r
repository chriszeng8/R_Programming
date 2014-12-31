## Author: Chris Zhuo Zeng
## Date: Dec 31, 2014
## This is a r script to demonstrate how to apply "drop=False" to avoid dimension drop
## in subsetting a matrix

## We first create a matrix, by creating a sequence of int from 1 to 6, then
## filling this matrix with 2 rows and 3 columns with this sequence (by columns).
x<-matrix(1:6,2,3) 
x
## The matrix x should look like this:
##      [,1] [,2] [,3]
## [1,]    1    3    5
## [2,]    2    4    6

## Extracting/Subsetting the 2nd column will return a vector
col_a<-x[,2]
col_a
## Extracting/Subsetting the 2nd column with DROP turned off, will retain the original structure
col_b<-x[,2,drop=F]
col_b

## please pay attention to the difference between col_a and col_b

## However, if both subsetted row and column sets are sequence. The dimension drop
## will be automatically turned off (i.e., the original matrix format will be retained)
sub_mat=x[,2:3]
sub_mat  ## Here sub_mat is stored as a matrix rather than vector
dim(sub_mat)

