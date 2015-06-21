# Getting and Cleaning Data Course Project

##List of Files needed to restructure the data
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity. Its Range is 1 to 30. 
- 'test/subject_test.txt" : Each row identifies the subject who performed the activity. Its Range is 1 to 30. 

## Variable names:
1. train_data, test_data, subject_train, subject_test, activity_train, activity_test, var_names: List of all the variable names created by downloading the respective files from Samsung Data.
2. merged_data, subject_data, activity_data: Merging the data using "rbind" command
3. mean_std_features: filtering the mean() and std() measurement names using grep command.
4. data: Merging merged_data, subject_data and activity_data using cbind command.
5. means_data: Averaging each variable for each activity and each subject using aggregate and order command.
6. Finally a tidy data is created "tidy_data.txt" using write.table() command

### Feature names can be obtained by reading "Features.txt" file and subsequently selecting the mean() and std() measurement names.

## Activity names can be edited using the following commands:
activity_data[activity_data=="1"]<- "WALKING". 
Same command can be used to edit other activity names
The names are obtained by reading 'activity_labels.txt' file.
