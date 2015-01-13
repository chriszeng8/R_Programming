# Chris Zeng, Jan 12, 2015

#install.packages(lpSolveAPI)
#install.packages(lpSolve)        if these packages are not installed already
library(lpSolveAPI)
library(lpSolve)

# Set up problem: minimize
# x1 + x2 + x3 + ... + x10 subject to
# ....
solve_splits<-function() {
     # Construct a constraint matrix
     Num_UPCs<-5
     UPCs<-paste("UPC",letters[1:Num_UPCs],sep="_")
     FCs<-1:15
     Num_FCs<-length(FCs)
     FC_names<-paste("FC",FCs,sep="_")
     ConstraintMatrix<-matrix(rep(0,Num_FCs*Num_UPCs),nrow=Num_UPCs,ncol=Num_FCs)
     colnames(ConstraintMatrix)<-FC_names
     
     # ========== Randomly generate 1s to fill the constraint matrix ==========
     # 1 represents the FC that can meet demand
     for (i in 1:Num_UPCs) {
          x<-sample(FCs,3)
          for (j in x) {
               ConstraintMatrix[i,j]=1
          }
     }
     
     # objective, constraint, criteria, and right hand side that will be passed to lp() function
     f.obj <- rep(1,Num_FCs)
     f.con <- ConstraintMatrix
     f.dir <- rep("=",Num_FCs)
     f.rhs <- rep(1,Num_FCs)
     
     lp ("min", f.obj, f.con, f.dir, f.rhs,all.bin=TRUE)
     Sol<-lp ("min", f.obj, f.con, f.dir, f.rhs,all.bin=TRUE)$solution
     SolutionMatrix<-rbind(Sol,ConstraintMatrix)
     rownames(SolutionMatrix)<-c("Solution",UPCs)
     Total_FC<-c(sum(Sol),rep(NA,Num_UPCs))
     SolutionMatrix<-cbind(SolutionMatrix,Total_FC)
     SolutionMatrix
}

#Call this following function after sourcing this script
#solve_splits()