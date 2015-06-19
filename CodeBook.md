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

## Varaible names can be obtained by reading "Features.txt" file and subsequently selecting the mean() and std() measurement names

## Activity names can be edited using the following commands:
activity_data[activity_data=="1"]<- "WALKING"
activity_data[activity_data=="2"]<- "WALKING_UPSTAIRS"
activity_data[activity_data=="3"]<- "WALKING_DOWNSTAIRS"
activity_data[activity_data=="4"]<- "SITTING"
activity_data[activity_data=="5"]<- "STANDING"
activity_data[activity_data=="6"]<- "LAYING"
The names are obtained by reading 'activity_labels.txt' file.

## Names of the the Subject and Activity data are edited using names() command.
colnames(subject_data)<- "Subjects"
colnames(activity_data)<- "Acts"

## Finally a tidy data is created "tidy_data.txt" using write.table() command
