#Clear workspace
rm(list=ls())
#Shortcut key: ctrl+L to clear all typed commands

## This is to demostrate to subset a vector using a logical vector.
##Create a logical vector with 5 elements
TFv<-c(T,F,T,F,T) #T is short for True, and F is short for False.
TFv
a<-1:5
a[TFv] ## [ using single bracket to subset the elements corresponding to True (which are the 1st, 3rd and 5th elements)

## Another example which demonstrate how to use this logical vector implicitly
LetterVector=c("a","b","c","d","d","b")
LetterVector>"b" # prints out a logical vector
LetterVector[LetterVector>"b"] # Return subset of data that is greater than "b" in alphebatical order
