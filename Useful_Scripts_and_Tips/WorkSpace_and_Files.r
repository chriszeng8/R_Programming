# 1. Create a directory in the current working directory called "testdir".
dir.create("testdir")

# 2. Set your working directory to "testdir".
setwd("testdir")

# 3. Create a file in your working directory called "mytest.R".
file.create("mytest.R")

# 4.Check to see if "mytest.R" exists in the working directory
file.exists("mytest.R")

# 5. Access information about the file "mytest.R".
file.info("mytest.R")

# 6. Change the name of the file "mytest.R" to "mytest2.R".
file.rename("mytest.R","mytest2.R")

# 7. Make a copy of "mytest2.R" called "mytest3.R".
file.copy("mytest2.R","mytest3.R")

# 8. Provide the full path to the file "mytest3.R".
file.path("mytest3.R")

# 9. Create a directory in the current working directory called 
# "testdir2" and a subdirectory for it called "testdir3", all in 
#  one command.
dir.create("testdir2/testdir3",recursive=TRUE)

# 10. Delete the "testdir2" directory that you created
# Note that if there exists subfolder within "testdir2" directory,
# you would need to recursively delete the subfolders also.
unlink("testdir2",recursive=TRUE)
# Again, you need the recursive = TRUE argument. Otherwise, R is concerned
# that you are unaware that, when deleting testdir2, you are also deleting
# testdir3, which is nested within it. R reasons that, if you don't tell it
# that recursive equals TRUE, you don't know that something is in testdir2.
# So, it tries to prevent you from making a mistake.

# 11a. At the start of the program, remeber to store the original directory
# so that we can go back to it later easily.
old.dir<-getwd()
# 11b. Go back to your original working directory. (Recall that we created the
# variable old.dir with the full path for the orginal working directory at
# the start of these questions.)
setwd(old.dir)
# It is often help to save the settings that you had before you began an
# analysis and the go back to them at the end.
