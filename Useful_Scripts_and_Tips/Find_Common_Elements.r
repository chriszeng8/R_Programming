# Jan 21, 2015 C.Z.Zeng
# How to find the common elements/intersect of multiple vectors?
# intersect(a,b)   for two vectors
# reduce(intersect,list(a,b,c))   for multiple vectors

Music<-c("Kevin","Chris","Calvin","Justin")
Maths<-c("Alex","Chris","Calvin","Wang")
English<-c("Billy","Yoda","Chris","Calvin")

# Method1: Intersect() function only takes two arguments at a time
intersect(intersect(Music,Maths),English)

# Method2: Reduce() function which is more clear
Reduce(intersect, list(Music,Maths,English))
