# Vectors come in two different flavors: atomic vectors and lists. An atomic
# vector contains exactly one data type, whereas a list may contain multiple
# data types.


##=======================1. PASTE FUNCTION ==================================
my_char<-c("My","name","is")
# we want to join the elements of my_char together into one continuous character
# string (i.e. a character vector of length 1). We can do this using the paste()
# function.
# Type paste(my_char, collapse = " ") now. Make sure there's a space between
# the double quotes in the `collapse` argument. You'll see why in a second.

##=======================2. PASTE collapse ==================================

paste(my_char,collapse = " ")
# [1] "My name is"

# The `collapse` argument to the paste() function tells R that when we join
# together the elements of the my_char character vector, we'd like to
# separate them with single spaces.


# In the simplest case, we can join two character vectors that are each of
# length 1 (i.e. join two words). Try paste("Hello", "world!", sep = " "),
# where the `sep` argument tells R that we want to separate the joined
# elements with a single space.

##=========================3. PASTE sep ====================================
paste("Hello", "world!", sep = " ")
#[1] "Hello world!"

# For a slightly more complicated example, we can join two vectors, each of
# length 3. Use paste() to join the integer vector 1:3 with the character
# vector c("X", "Y", "Z"). This time, use sep = "" to leave no space between
# the joined elements.

> paste(1:3,c("X", "Y", "Z"),sep="")
#[1] "1X" "2Y" "3Z"
# With Cycling
paste(LETTERS, 1:4, sep = "-")

# Also worth noting is that the numeric vector 1:4 gets 'coerced' into a
# character vector by the paste() function.