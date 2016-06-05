The code:
1) Reads in the test data set (subject_test, X_test and y_test) from the UCI HAR Dataset and binds these to one data frame, testdata.
   Reads in the train data set (subject_train, X_train and y_train) from the UCI HAR Dataset and binds these to one data frame, traindata.
   Combines these two, testdat and traindata, using rbind so that all test data set and train data set are in one (for point 1 of the question). This is data data frame.
2) Give appropriately labels the data set with descriptive variable names by reading in features list (contains varaible names for all data columns) and making column names "subject", "activity" then features list. 
   This is actually point 3 of the question but this way around seemd easiest to me.
3) Extracts mean and std values for each measurement; this is actually point 2 of the question but this way around seemd easiest to me. This is now data 2 data frame.
4) Adds descriptive activity names for the activities (for point 4 of the question)
5) Creates a tidy data set with the average of each variable for each activity and each subject (for point 5 of the question) by aggregating on subject and activity. 
   The subject and activity columns then required renaming appropriately. This is now data 3 data frame.
6) Writes tidy data set to a text file (to upload for submission)
