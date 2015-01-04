# n_power takes arg n
n_power<-function(n){
# Inside n_power function, define a function within
  pow<-function(x){
    x^n # note that n is a free variable in the pow function.
    # therefore, R will look through the environment to find
    # n. In this case, n in defined in the n_power function enviroment.
  }
  pow
}

#Return a function with n specified
Cube_of<-n_power(3)
Square_of<-n_power(2)

#Pass x values
Cube_of(2)
Square_of(3)

# look the enviroment in which the function is defined
ls(environment(Cube_of))
get("n",environment)