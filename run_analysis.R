# Get the path of files in this case its the current directory
filepath <- file.path(".")

# load the Acitivity files
# Activity files are y_test.txt & y_train.txt
   myActivitytrain = read.table(file.path(filepath,"train","y_train.txt"),header=FALSE)
   myActivitytest  = read.table(file.path(filepath,"test","y_test.txt"),header=FALSE)

# get the activity labels
   activitylabels<- read.table("activity_labels.txt")
   

# load the subject files
# Subject files are subject_train.txt & subject_test.txt
   mySubjecttrain = read.table(file.path(filepath,"train","subject_train.txt"),header=FALSE)
   mySubjecttest = read.table(file.path(filepath,"test","subject_test.txt"),header=FALSE)
   
  
#Load features and apply filter to get measusrements for mean() and std () deviation 
  measurementNames <- read.table(file.path(filepath,"features.txt"),header=FALSE)
  measurementNames[,2] <- as.character(measurementNames[,2])
  requiredFeatures <-grep("mean\\()|std\\()",measurementNames[,2])
  

# load features data
# Feature files are X_test.txt & X_train.txt 
  myFeaturestrain = read.table(file.path(filepath,"train","X_train.txt"),header=FALSE)
  myFeaturestest = read.table(file.path(filepath,"test","X_test.txt"),header=FALSE)

# Merge the training and test data and create combined data set
  dataMergedAcitivity = rbind(myActivitytrain,myActivitytest)
  dataMergedSubject   = rbind(mySubjecttrain,mySubjecttest)
  dataMergedFeatures  = rbind(myFeaturestrain,myFeaturestest)

# Add labels to the merged data sets
   names(dataMergedSubject)<-c("Subject")
   names(dataMergedAcitivity)<- c("Activity")
   dataMergedAcitivity[,1]<-activitylabels[dataMergedAcitivity[,1],2]
   names(dataMergedFeatures)<- measurementNames$V2

# Get subset of features by applying filter "requiredFeatures"
   dataMergedFeatures <- subset(dataMergedFeatures,select=requiredFeatures)

# Combine the merged  data for feature , activity and Subject as single dataset
  dataSubjectActivity<-cbind(dataMergedSubject,dataMergedAcitivity)
  fullDataSubActFeatures<-cbind(dataMergedFeatures,dataSubjectActivity)
  #str(fullDataSubActFeatures)

library(plyr)
# Create a tidy data set from the full data 
   tidyData<-aggregate(. ~Subject + Activity, fullDataSubActFeatures, mean)
   write.table(tidyData, file = "tidydata.txt",row.name=FALSE)


  
 

