## Coursera: Getting and Cleaning Data
## Getting and Cleaning Data Course Project
## Last Edited: 09 Aug 2020


library(dplyr)

setwd("/Users/hx2/Downloads/UCI HAR Dataset")

# reading test data
xtest_path <- "./test/X_test.txt"
ytest_path <- "./test/y_test.txt"
subject_test_path <- "./test/subject_test.txt"
xtest <- read.table(xtest_path, sep = "")
ytest <- read.table(ytest_path, sep = "")
subjecttest <- read.table(subject_test_path)
testcomposite <- cbind(subjecttest, ytest, xtest)

# reading training data  
xtrain_path <- "./train/X_train.txt"
ytrain_path <- "./train/y_train.txt"
subject_train_path <- "./train/subject_train.txt"
xtrain <- read.table(xtrain_path, sep = "")
ytrain <- read.table(ytrain_path, sep = "")
subjecttrain <- read.table(subject_train_path, sep = "")
traincomposite <- cbind(subjecttrain, ytrain, xtrain)

# merging test and training data
composite <- rbind(testcomposite,traincomposite)


# reading names of features as character array
feature_path <- "./features.txt"
feature <- read.table(feature_path, sep = "")[,2]

# labeling the variables with appropriate names
colnames(composite) <- c("subject", "activity", feature)

# Extracting only mean and standard deviation 
select_criteria <- grep("subject|activity|mean|std", names(composite))
composite <- composite[,select_criteria]

# labeling activity with descriptive factors
activity_path <- "./activity_labels.txt"
activity <- read.table(activity_path, sep = "")
composite$activity <- as.factor(composite$activity)
levels(composite$activity) <- activity[,2]

# summarizing the average of each variable for each activity and each subject
table_summary <- composite %>%
  group_by(subject,activity) %>%
  summarise_all(mean) %>%
  ungroup()

# writing the result into a .txt file
write.table(table_summary,file = "./step5_summary.txt",row.names = F)

#checking the resulting file can be read
checkresult <- read.table('./step5_summary.txt', sep = "")
