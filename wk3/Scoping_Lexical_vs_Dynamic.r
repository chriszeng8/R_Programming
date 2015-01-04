# Lexical vs Dynamic Scoping
# R uses Lexical Scoping

# y as defined in the global enviroment 
y<-10

f<-function(x){
  y<-2
  y^2+g(x)
  # Note that both y and g are free variables.
  # the y here is defined within the function
  # g is defined outside of the function f
}

g<-function(x){
  x*y
  # the free variable is defined in the global enviroment (i.e., 10)
}

# If we use other languages with dynamic scoping, the y value 
# in the g function is looked up in the enviroment from which the 
# function was called (which is within f function). In that case,
# y value is g(x) would be 2 as defined in f function.
