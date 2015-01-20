# Jan 20 2015, C.Z.Zeng
# 
#setwd("~/Github_Repo/Getting_and_Cleaning_Data/Summarizing_Data/")
restData<-read.csv("Restaurants.csv")
# Downloadable at:
# https://data.baltimorecity.gov/Culture-Arts/Restaurants/k5ry-ef3g

# ========================= MAKE TABLE ===============================
table(restData$zipCode,useNA ="ifany")
# if any NAs, the table will make an extra column for NA (heading NA and number of NAs appeared)
# By default, the table function removes the NAs, therefore, if interested in knowing the number of NAs, 
# useNA = "ifany" is important.
# >table(restData$zipCode)

# ================== Make a 2 dimensional table ======================
# ======================= COUNTIF in excel ===========================
# 2D table is a cross table of two parameter with the count value of each combination as the output.
# In excel, it would be a COUNTIFS() with the unique councilDistrict(row) and unique zipCode(column) as 
# the if conditions.
table(restData$councilDistrict,restData$zipCode)
# Count y1 y2 y3 y4 y5 y6
# x1    2  0  0  1  1  1
# x2    1  0  0  0  0  3
# x3    0  1  0  0  0  0

# Frequency of combination of 
# ================= Cross table of 2 variables======================
# ======================= Sumif in excel ===========================
xt<-xtabs(councilDistrict~policeDistrict+zipCode,restData)
# SumofConcilDistr |y1 y2 y3 y4 y5 y6 
# _________________|_________________
#             x1   |2  0  0  1  1  1
#             x2   |1  0  0  0  0  3
#             x3   |0  1  0  0  0  0

# ================= Cross table of 3 input variables =====================
# ============== Break it down to several 2D cross tab ===================
# ========================= Sumif in excel ===============================
set.seed(1)
DF<-data.frame(x=sample(1:1000,100,replace=T),y=sample(letters[1:5],100,replace=T),z=1:100)
DF$Add<-rep(1:10,length=100)
xt2<-xtabs(x~.,data=DF)
xt2