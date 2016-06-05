I have used the  test data set (subject_test, X_test and y_test) and the train data set (subject_train, X_train and y_train)from the UCI HAR Dataset.

I transformed these to one data set containing with variables:

- subject: 
   Subjects id 1:30 from binding of subject_test and subject_train.
- activity:
   This is the full activity names, of which there are 6; walking, walking_upstairs, walking_downstairs, sitting, standing and laying.
   This was obtained by using the activity code 1:6 from y_test and y_train and the full activity name codes as found in the activity_labels file of the UCI HAR Datasetwas used to rename them.
- 79 data variable columns: 
  The data is the average mean and std values for each activity and each subject for each of the variables.
  The variables are those below, as decribed in the features_info file from the UCI HAR Dataset. They are also clearly labelled for mean or std.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

 