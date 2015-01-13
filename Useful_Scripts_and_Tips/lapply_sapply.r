#========================='The Split-Apply-Combine Strategy for Data Analysis'======================

# ========================== s(l)apply(first_argument, func_argument) ==============================
# if the first argument is a matrix, then the matrix is split into columns first. Function is
# applied to each column, and then combined into a list (lapply) or simplified vector (sapply). 
# l: list
# s: simplify (it is a good idea to always go with sapply, since it either simplifies or
#              keeps the list form)
# ==================================================================================================

# lapply() and sapply(), the two most important members of R's *apply family of functions
# offer a concise and convenient means of implementing the Split-Apply-Combine strategy 
# for data analysis.

# Each of the *apply functions will SPLIT up some data into smaller pieces, APPLY a function to each
# piece, then COMBINE the results.

# Construct a data frame !
CountryList<-c("China","Japan","USA","Canada","New Zealand")
set.seed(1)
matrixA<-matrix(rnorm(20),5,4)
flags<-data.frame(CountryList,matrixA)

# ========================== l(s)apply(first_argument, func_argument) ==========================
# if the first argument is a matrix, then the matrix is split into columns first. Function is
# applied to each column, and then combined into a list (lapply) or simplified vector (sapply). 

# ======================== lapply will return a list =============================================
cls_list <- lapply(flags, class)
#The 'l' in 'lapply' stands for 'list'. Type class(cls_list) to confirm that lapply() returned a list.

# In this case, since every element of the list returned by lapply() is a character vector of
# length one (i.e. "integer" and "vector"), cls_list can be simplified to a character vector. To do
# this manually, type as.character(cls_list).
# ========================== use as.character() convert the list to a character vector=============
as.character(cls_list)

# sapply() simplifies (hence the 's' in 'sapply') the result for you. Use sapply() the same way
# you used lapply() to get the class of each column of the flags dataset and store the result in
# cls_vect.
cls_vect<-sapply(flags, class)

# ========================== lapply with ANONYMOUNS function ======================================
# Anonymous function only exists when the lapply function is called
lapply(unique_vals, function(elem) elem[2])

