# Jan 19 2015
# Sorting
x<-data.frame(var1=sample(1:5),var2=sample(6:10),var3=sample(12:16))
x[c(1,3),"var2"]=NA
# ========= 1. Simply sorting a column =====================
sort(x$var3) # by default, shows values in ascending order
sort(x$var3, decreasing = T)
sort(x$var2) # by default, NA are removed
sort(x$var2,na.last = T) # na.last=F will put NAs to the front

# ========= 2. Sorting the whole data frame ================
# ============= 2a. Using order function ===================
order(x$var1) # returns  permutation which rearranges its first argument into ascending or descending order
x[order(x$var1),]
x[order(x$var1,x$var3),]

# ======== 2b. Use external package arrange function =======
library(plyr)
arrange(x,var1)
arrange(x,var1,var3)
arrange(x,desc(var1))
