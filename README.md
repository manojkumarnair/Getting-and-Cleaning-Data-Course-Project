The R script, run_analysis.R, does the following:

1.	Get the path of files in this case its the current directory

2 	load the Acitivity files

2.1 	Activity files are y_test.txt & y_train.txt

2.2 	Get the activity labels

3	load the subject files

3.1	Subject files are subject_train.txt & subject_test.txt

4.	Load features and apply filter to get measusrements for mean and std deviation

4.1	load features data

4.2	Feature files are X_test.txt & X_train.txt 

5	Merge the training and test data and create combined data set

5.1	Add labels to the merged data sets

6	Get subset of features by applying filter to get specific measurements namely mean & std deviation

7.	Combine the merged  data for feature , activity and Subject as single dataset

8.	Creates a tidy dataset that consists of mean value of each variable for each subject andactivity pair
