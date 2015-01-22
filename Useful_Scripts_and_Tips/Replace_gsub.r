# Say if I would like to remove $ and `,` to convert the 
# following vector into a numeric vector 
d = c("$0.00", "$10,598.90", "$13,082.47")

# if we would like to remove just the $
gsub('\\$', '', d)
# if we would like to remove just the `,`
gsub('\\,', '', d)
# if we would like to remove both the `,` and $
new_d<-gsub('\\$|,', '', d)
as.numeric(new_d)
