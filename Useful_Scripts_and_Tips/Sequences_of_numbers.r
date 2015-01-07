##=======================1. : FUNCTION =====================================
# Sequence starting with an non-integer.
# >1:20 gave us every integer between (and including) 1 and 20. We could also
# use it to create a sequence of real numbers. For example, try pi:10.
pi:10

# [1] 3.141593 4.141593 5.141593 6.141593 7.141593 8.141593 9.141593

# This create s a vector of real number starting with pi and increasing in 
# increments of 1. The upper limit of 10 is never reached, since the next 
# number in our sequence would be greater than 10.

# Remember that if you have questions about a particular R function, you can
# access its documentation with a question mark followed by the function
# name: ?function_name_here. However, in the case of an operator like the
# colon used above, you must enclose the symbol in backticks like this: ?`:`.
# (NOTE: The backtick (`) key is generally located in the top left corner of
# a keyboard, above the Tab key. If you don't have a backtick key, you can
# use regular quotes.)
?`:`
# note enclose the operator with backtick``, not single quote''


##=======================2.SEQ FUNCTION=====================================
# Often, we'll desire more control over a sequence we're creating than what
# the `:` operator gives us. The seq() function serves this purpose.
seq(1,20)
# This gives us the same output as 1:20. However, let's say that instead we
# want a vector of numbers ranging from 0 to 10, incremented by 0.5. seq(0,
# 10, by=0.5) does just that. Try it out.
seq(0,10,by=0.5)

# Or maybe we don't care what the increment is and we just want a sequence of
# 30 numbers between 5 and 10. seq(5, 10, length=30) does the trick. 
seq(5,10,length=30)

# we want a new vector (1, 2, 3, ...) that is the same length as my_seq.
#1. 1st way 1:N, where N is the length of my_seq
1:length(my_seq)
#2. 2nd way
seq(along.with = my_seq)
#3. R has a separate built-in function for this purpose called seq_along()
seq_along(my_seq)
# the 3rd way involves least typing, the simplest approach.

##=======================3.REP FUNCTION=====================================
# rep function to:
# 1. repeat a single number multiple times;
# 2. recycle a sequence multiple times;
# 3. repeat each number in the sequence multiple times.

# If we're interested in creating a vector that contains 40 zeros, we can use
# rep(0, times = 40). Try it out.
rep(0,times=40)

# Keep working like that and you'll get there!
# If instead we want our vector to contain 10 repetitions of the vector (0,
# 1, 2), we can do rep(c(0, 1, 2), times = 10). Go ahead.
rep(c(0,1,2),times=10)

# Finally, let's say that rather than repeating the vector (0, 1, 2) over and
# over again, we want our vector to contain 10 zeros, then 10 ones, then 10
# twos. We can do this with the `each` argument. Try rep(c(0, 1, 2), each =
# 10).
rep(c(0,1,2),each=10)
