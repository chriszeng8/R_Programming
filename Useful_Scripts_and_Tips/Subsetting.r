# Subsetting Takeaways: 

# 1. Subsetting always uses square bracket []
# 2. Quick way to subset to remove NA: x[!is.na(x)]
# 3. Be careful! R does NOT prevent us from calling elements outside range.
# 4. Negative index used to include all elements except the nth element: 
#    a. x[c(-n,-m)]
#    b. x[-c(n,m)]
# 5. How to name elements and called named elements in a vector.

x<-sample(c(rnorm(100),rep(NA,100)),40)
# remove NA
x[!is.na(x)]

# The way you tell R that you want to select some particular elements (i.e. a
# 'subset') from a vector is by placing an 'index vector' in square brackets
# immediately following the name of the vector.
x[1:10]

x[x>0]
# Since NA is not a value, but rather a placeholder for an unknown quantity,
# the expression NA > 0 evaluates to NA. Hence we get a bunch of NAs mixed in
# with our positive numbers when we do this.

# We request only values of x that are both non-missing AND greater than zero.
x[!is.na(x) & x > 0]

# How would we subset the 3rd, 5th, and 7th elements of x?
x[c(3,5,7)]

#===========================================================================
#===========================================================================
#====== R does NOT prevent us from calling elements outside range! =========
#===========================================================================
#============ You should always make sure that what you are ================
#==== asking for is within the bounds of the vector you're working with.====
#===========================================================================
#===========================================================================

# Many programming languages use what's called 'zero-based indexing', which
# means that the first element of a vector is considered element 0. R uses
# 'one-based indexing', which (you guessed it!) means the first element of a
# vector is considered element 1.
x[0]
# numeric(0)
# Unfortunately, R does not prevent us from doing this.
# What if we ask for the 3000th element of x?
x[3000]
# [1] NA
# Unfortunately, R does not prevent us from doing this either.

# How to give each element a name
vect<-c(foo=11,bar=2,norf=NA)

# > vect
# foo  bar norf 
# 11    2   NA 
names(vect)


# Alternatively, we can create an unnamed vector vect2 with c(11, 2, NA). Do
# that now.
vect2<-c(11,2,NA)
# Then, we can add the `names` attribute to vect2 after the fact with
# names(vect2) <- c("foo", "bar", "norf").
names(vect2)<-c("foo","bar","norf")

identical(vect,vect2)
# TRUE

vect[c("foo", "bar")]