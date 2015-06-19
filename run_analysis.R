# Step 1- Merging the training and the test sets
train_data<- read.table("train/X_train.txt")
test_data<- read.table("test/X_test.txt")
merged_data<- rbind(train_data, test_data)
subject_train<-read.table("train/subject_train.txt")
subject_test<-read.table("test/subject_test.txt")
subject_data<- rbind(subject_train,subject_test)
activity_train<- read.table("train/y_train.txt")
activity_test<- read.table("test/y_test.txt")
activity_data<- rbind(activity_train,activity_test)

#Step 2- Extracting only the measurements on the mean and standard deviation for each measurement.
var_names<- read.table("features.txt")
mean_std_features<- grep("-(mean|std)\\(\\)", var_names[,2])
merged_data<- merged_data[,mean_std_features]
names(merged_data)<- var_names[mean_std_features,2]

#Step 3- Using descriptive activity names to name the activities in the data set
activity_data[activity_data=="1"]<- "WALKING"
activity_data[activity_data=="2"]<- "WALKING_UPSTAIRS"
activity_data[activity_data=="3"]<- "WALKING_DOWNSTAIRS"
activity_data[activity_data=="4"]<- "SITTING"
activity_data[activity_data=="5"]<- "STANDING"
activity_data[activity_data=="6"]<- "LAYING"

#Step 4- labeling the data set with descriptive variable names.
colnames(subject_data)<- "Subjects"
colnames(activity_data)<- "Acts"
merge_subject<- cbind(merged_data, subject_data)
data<- cbind(merge_subject,activity_data)

#Step 5-  Creating independent tidy data set with the average of each variable for each activity and each subject.
means_data<- aggregate(. ~Subjects+Acts, data, mean)
means_data<- means_data[order(means_data$Subjects, means_data$Acts),]
write.table(means_data, "tidy_data.txt", row.name=FALSE)
