# Jan 20 2015, C.Z.Zeng 
# ================= 1. which() function is great in handling the missing values ========================
# ================= 2. %in % is a great replacement for equality (=) sign,      ========================
# =================    and can be applied to multiple criteria.                 ========================
# ================= 3. ifselse() function to create binary similar functions    ========================


# Create a data frame
set.seed(1)
x<-data.frame(var1=sample(1:5),var2=sample(6:10));x[c(1,3),"var2"]=NA

# Simply logical statement on a column with missing value (NA), will not enable us to subset
Subset_logical<-x$var2>8
# > Subset_logical
# [1]    NA  TRUE    NA FALSE FALSE
x[Subset_logical,] # or x[x$var2>8]
# which will include the missing values

# The which() function returns the indices of none-missing values that satisfy the criteria
x[which(x$var2>6),]

# =========================== %in% =============================
x[x$var2 %in% 6:10,]
# one great application of %in% is to combine with c(a,b) to define
# multiple discrete equality criteria
x[x$var2 %in% c(5,7,9),]


# ========= creating ifelse variables ============
l_or_g<-ifelse(x$var2<6,"less","greater")
table(l_or_g)

