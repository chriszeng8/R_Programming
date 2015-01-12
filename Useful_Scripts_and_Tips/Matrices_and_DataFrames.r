# Takeaways:
# 1. Matrix only allows single class of data, whereas data frames allows mixed types.
# 2. vector does not have dimension just length.
# 3. cbind(a,b) can potentially cause implicit coercion.
# Therefore, data.frame(a,b) is better than cbind(a,b) for the sake to preserve data type.

# Matrices and data frames both represent 'rectangular' data types.
# =========================== DIFFERENCES =============================================
# Matrix contains a single class of data, while data frames consist of different type.

# 1. ================vector does not have dimension just length========================
my_vector=1:20
dim(my_vector) # NULL
length(my_vector) # [1] 20

# What happens if we give a vector a `dim` attribute?
dim(my_vector) <- c(4, 5)
# very strange!
#>dim(my_vector) #[1] 4 5
my_matrix<-my_vector

# A matrix is simply an atomic vector with a dimension attribute.
# A more direct method of creating the same matrix uses the matrix() function.
my_matrix2<-matrix(1:20,nrow=4,ncol=5)

# How about we label the rows? create an additional column and put it on the left side.
patients<-c("Bill","Gina","Kelly","Sean")
cbind(patients,my_matrix)
# ====================== 2. Danger about : Implicit Coercion ==========================
# Something is fishy about our result! It appears that combining the character vector
# with our matrix of numbers caused everything to be enclosed in double quotes. This
# means we're left with a matrix of character strings, which is no good.

# ====================== IN MOST SITUATIONS, data.frame is better =====================
# ====================== 3. data.frame(a,b) is better than cbind(a,b) =================
my_data<-data.frame(patients,my_matrix) # preserve the data type of all columns

# How to assign variable/column names?
cnames<-c("patient", "age", "weight", "bp","rating", "test")
colnames(my_data)<-cnames
