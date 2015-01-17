# This is to illustrate the time difference in reading a large data file
# as data.frame, and data.table

DF<-data.frame(x=rnorm(1E7),y=rnorm(1E7))
file<-tempfile()
write.table(DF,file=file,row.names=F,col.names=F,sep="\t",quote=F)

system.time(read.table(file,header=T,sep="\t"))
# user  system elapsed 
# 162.999   1.479 164.713 

system.time(fread(file))
# Read 10000000 rows and 2 (of 2) columns from 0.338 GB file in 00:00:04
# user  system elapsed 
# 3.204   0.131   3.340 



# Just in terms of speed, data.table is clearly a winner :)
# fread      read.table
# 164.71 sec vs 3.34 sec