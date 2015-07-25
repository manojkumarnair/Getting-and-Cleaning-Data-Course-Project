## Getting and Cleaning Data Project

### Description
Additional information about the variables, data and transformations used in the course project for the Johns Hopkins Getting and Cleaning Data course.

### Source Data
A full description of the data used in this project can be found at [The UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/HumanActivityRecognition+Using+Smartphones)

[The source data for this project can be found here.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

### Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


### Processing information


load the Acitivity files
Activity files are y_test.txt & y_train.txt
Get the activity labels
load the subject files
Subject files are subject_train.txt & subject_test.txt
Load features and apply filter to get measusrements for mean and std deviation
load features data
Feature files are X_test.txt & X_train.txt 
Merge the training and test data and create combined data set
Add labels to the merged data sets
Get subset of features by applying filter to get specific measurements namely mean & std deviation
Combine the merged  data for feature , activity and Subject as single dataset
Creates a tidy dataset that consists of mean value of each variable for each subject and activity pair

### Varaible information

# Activity objects
    myActivitytrain
    myActivitytest
    activitylabels

#  Subject
   mySubjecttrain
   mySubjecttest

#  features
   requiredFeatures
   myFeaturestrain	
   myFeaturestest

# Merged Files
   dataMergedAcitivity
   dataMergedSubject
   dataMergedFeatures
   fullDataSubActFeatures

# Tidy data
  tidyData

