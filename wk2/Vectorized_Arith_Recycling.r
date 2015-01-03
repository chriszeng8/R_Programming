# If two vectors are of unequal length, the shorter one will be recycled in order
# to match the longer vector. For example, the following vectors u and v have 
# different lengths, and their sum is computed by recycling values of the shorter vector u.
u = c(10,20,30)
ul= c(10,20,30,40) 
v = c(1,2,3,4,5,6,7,8,9) 

# Note that v length is a multiple of u length, u will be recycled three time
u+v
# Since the longer object length is not a multiple of shorter object length,
# there will be warning message.
ul+v
