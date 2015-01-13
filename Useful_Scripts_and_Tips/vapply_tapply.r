# Data source:
# http://archive.ics.uci.edu/ml/datasets/Flags


# Problem with the sapply function()
# >sapply(flags, unique)
# =========================== Motivation of vapply() ==============================================
# If your intent was create a vector, and the end is a list. Sourcing the script would you tell you
# info about the class type of sapply(flags, unique). This is where vapply comes in!!!!
# ======================================== RULE OF THUMB ==========================================
# =============== vapply() is 'safer' than sapply in non-interactive coding =======================

# Whereas sapply() tries to 'guess' the correct format of the result, vapply() allows you to specify
# it explicitly. If the result doesn't match the format you specify, vapply() will throw an error,
# causing the operation to stop.

sapply(flags, unique)
# say if you mistakenly expected each element of the result to be a numeric vector of length,
# and specify the that the format you would expected for EACH ELEMENT as the 3rd argument.
vapply(flags, unique, numeric(1))
# vapply will give you an error and stop you in this case!!!!

#======================= The following cases will produce the same results. ======================
sapply(flags, class)
vapply(flags, class,character(1))


# ==============================Table function=========================================
table(flags$animate)
#0   1 
#155  39 

# ======================== Key word here: SUBSET, FACTOR LEVEL =======================
# ================ tapply (x_values, factor_level_vect, func) ========================
# what it is doing is to apply the func to the subset of xvalues of that correponds 
# to each FACTOR level.
tapply(flags$animate, flags$landmass, mean) 
#         1         2         3         4         5         6 
# 0.4193548 0.1764706 0.1142857 0.1346154 0.1538462 0.3000000 

