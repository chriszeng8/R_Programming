# Jan 14, 2015, by Chris Zeng
# ============================= STOP FUNCTION =================================================
# This is to demonstrate how we can stop an invalid input and gives error message and terminate
# the execution of a program
Toss_Coins<-function(times, fair_prob=0.95) {
 # It is a good programming practice to check the validity of the inputs:
     if (fair_prob<0||fair_prob>1) {
          stop("Invalid probability. The probability to succeed must be between 0 and 1")
     } 
     coin_results<-rbinom(1:times,1,fair_prob)     
     coin_results
}

# Execute a function that does not satisfy the criteria:
Toss_Coins(1000,1.1)
# Sourcing this file will execute this function above and throw an error, 
# which is what we intended.

# Try calling the function with the parameters below:
#>Toss_Coins(1000,0.5)