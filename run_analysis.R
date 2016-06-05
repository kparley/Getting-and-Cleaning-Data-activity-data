##set working ditrectory and read in test and train files 
setwd("F:/Kris/repos/Getting and cleaning data/week 4/UCI HAR Dataset")
testsubject <- read.table("test/subject_test.txt")
y_test <- read.table("test/y_test.txt")
X_test <- read.table("test/X_test.txt")
testdata <- cbind(testsubject, y_test, X_test)
trainsubject <- read.table("train/subject_train.txt")
y_train <- read.table("train/y_train.txt")
X_train <- read.table("train/X_train.txt")
traindata <- cbind(trainsubject, y_train, X_train)

## combine test and train data sets to one data set (for point 1)
data <- rbind(traindata, testdata)

## give appropriately labels the data set with descriptive variable names using features list (as for point 3)
features <- read.table("features.txt")
colnames(data) <- c("subject", "activity", as.character(features[,2]))

## extract mean and std values for each measurement (for point 2)
mycols <- c(1, 2, grep("mean", colnames(data)),  grep("std", colnames(data)))
data2 <- data[,mycols]

## add descriptive activity names for the activities (for point 4)
library(plyr)
data2$activity <- mapvalues(data2$activity, from = 1:6, to = c("walking",  "walking_upstairs", "walking_downstairs",  "sitting", "standing",  "laying"))

## create a tidy data set with the average of each variable for each activity and each subject (for point 5)
data3 <- aggregate(data2[,3:81], list(data2$subject, data2$activity), mean)
colnames(data3)[colnames(data3) %in% c("Group.1", "Group.2")] <- c("subject", "activity")

## write tidy data set to a text file (to upload)
write.table(data3, "Tidy activity data.txt", row.names =FALSE)
