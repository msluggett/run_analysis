# Set works directory

setwd("C:/Users/Bobby/Documents/Project/UCI HAR Dataset")
dateDownloaded <- date()

#checks if folder exists and loads in required row and column headings
library(plyr)
library(dplyr)

if(!file.exists("data")){dir.create("data")}
colheadings <- read.table("C:/Users/Bobby/Documents/Project/UCI HAR Dataset/total/features.txt", sep = " ")
rowheadings <- read.table("C:/Users/Bobby/Documents/Project/UCI HAR Dataset/total/activity_labels.txt", sep = " ")
  
# loads and merges the data
files <- list.files(pattern = '*.txt') 
dataset <- ldply(files, read.table, header=FALSE, sep="\t")
datawithcol <- cbind(dataset, colheadings)
finaldata <- rbind(datawithcol, rowheadings)

# verification
head(finaldata, 10)
summary(finaldata)

#output the file
write.table(runanalysis, file = "run_analysis.txt", sep =",",na ="NA", dec =".", row.names = TRUE, col.names = TRUE)