y<-rnorm(1000)
z<-rep(NA,1000)
my_data <-sample(c(y, z), 100)
# Assign the result of is.na(my_data) to the variable my_na.
my_na<-is.na(my_data)
my_na
#[1]  TRUE  TRUE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE FALSE
#...
#[97] FALSE  TRUE FALSE  TRUE

# In our previous discussion of logical operators, we introduced the `==`
# operator as a method of testing for equality between two objects. So, you
# might think the expression my_data == NA yields the same results as
# is.na().
> my_data==NA
#[1] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
#[25] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
#[97] NA NA NA NA

# The reason you got a vector of all NAs is that NA is not really a value,
# but just a placeholder for a quantity that is not available. Therefore the
# logical expression is incomplete and R has no choice but to return a vector
# of the same length as my_data that contains all NAs.