# UCI HAR Activity Data Cleanup

This repo is a part of the "Coursera: Getting and Cleaning Data" project. 

***run_analysis.R**: performs data clean up and writes a summary table

***step5_summary.txt**: the resulting tidy data

***CodeBook.md**: describes the variables, the data, and any transformations 


### The run_analysis.r script:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.



The project data is available at 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This is a part of the data collected from the accelerometers from the Samsung Galaxy S smartphone by Univeristy of California Irvine

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### References

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

