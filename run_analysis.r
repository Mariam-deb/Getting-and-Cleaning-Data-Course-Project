#Load the required packages
library(dplyr)
library(tidyr)
#run_analyis.R is an R script that processes the UCI Human Activity Recognition 
# Using Smartphones Dataset in 4 steps:

#Step1: Merges the training and the test sets to create one data set.
#First read the measured variables names into a data frame and assign names to columns
features<-read.table("features.txt",col.names=c("id","var"))

#Then, read the data of the train dataset into data frames and assign names to columns
subject_train<-read.table("train/subject_train.txt",col.names="subjectID")
x_train<-read.table("train/x_train.txt",col.names=features$var)
y_train<-read.table("train/y_train.txt",col.names="activity")

#Combine the train files into one data frame
train<-cbind(subject_train,y_train,x_train)

#Then, read the data of the test dataset into data frames and assign names to columns
subject_test<-read.table("test/subject_test.txt",col.names="subjectID")
x_test<-read.table("test/x_test.txt",col.names=features$var)
y_test<-read.table("test/y_test.txt",col.names="activity")

#Combine the test files into one data frame
test<-cbind(subject_test,y_test,x_test)

#merge the train and test data sets
mergeddata<-rbind(train,test)

#Step 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
# Select only the mean() Time and Freq, and std() variable columns
#  ignore meanFreq or angle observations
mergeddata1<-select(mergeddata,subjectID,activity,matches("mean"),-matches("meanFreq"),
                    contains("std"),-matches("angle"))

#Step3: Uses descriptive activity names to name the activities in the data set
mergeddata1$activity<-factor(mergeddata1$activity,labels=c("walking","walkingupstairs",
                                                           "walkingdownstairs","sitting","standing","laying"))

#Step 4:Appropriately labels the data set with descriptive variable names. 

colnames(mergeddata1)<-sub("std","standard deviation",colnames(mergeddata1))
names(mergeddata1)<-sub("^t","time",names(mergeddata1))

names(mergeddata1)<-sub("^f","frequency",names(mergeddata1))
names(mergeddata1)<-sub("[ACC]","Acceleration",names(mergeddata1))

#Step 5:creates a second, independent tidy data set with the average of each variable for each activity and each subject.
groupeddata<-group_by(mergeddata1,subjectID,activity)
tidy<-summarise_each(groupeddata,funs(mean))

# Write the tidy data to a file
write.table(tidy,file="tidy.txt",row.name=FALSE)