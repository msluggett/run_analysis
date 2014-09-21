========
still requires some work
========

I have been working on this for a bit and got a result (not complete), but very happy with it as a start.

1. takes the dataset from the local directory,
2. loads packages "plyr" and "dplyr"
3. creates a directory folder called "data"
4. loads in features and activity label text files
5. Lists all the ".txt" files in directory and combines them all into "dataset"
6. Cbind and rbind the features and acitity to dataset 
7. Outputs a file called "runanalysis.txt" using write.table
