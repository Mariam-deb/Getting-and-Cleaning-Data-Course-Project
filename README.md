##README
###Getting and Cleaning Data Course Project

This readme file explains how the run_analysis.r script works and how it is connected to the CodeBook.

The script works on the data from the UCI Human Recognition Activity Using Smartphones Data set obtained from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
It perform an analysis on the data set, and output a tidy data set. Description of the variables of the tidy data set can be found in the code book located in the same repo.

*The data set was obtained from experiments carried out on 30 volunteers, each performed six activities wearing a smartphone on the waist.
*More details can be obtained from the UCI website http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones and the readme.txt of the data set.
*

Before running the run_analysis.r script, the following steps should be done:
*Download the zipped file of the data set from the above link.
*Unzip the file.
*Save  the files in the UCI HAR Dataset folder into your working directory; these files are:
	- test folder
	- train folder
	- activity_labels.txt
	- features.txt
	- features_info.txt

###Steps of the R script to get the tidy data set:
	1- The script first loads the dplyr and tidyr packages.
	2- Read the measured variables names from featurs.txt file into a data frame and assign names to columns using read.table()
	3- Read the training subject labels from subject_train.txt file into a data frame and assign name to the column using read.table()
	4- Read the train dataset observations from x_train.txt and assign the names of the variables from the features file using read.table()
	5- Read the activity labels for the training dataset that match the observations fromy_train.txt and assign name to the column using read.table()
	6- Merge the three train files into one data frame using the cbind() function
	7- Repeat steps 3 to 6 on the test dataset, reading the files subject_test.txt , x_test.txt , y_test.txt , then merging them.
	8- Merge the train and test data sets into one data frame using rbind() function
	9- Select only the mean() Time and Freq, and std() variable columns and ignore meanFreq or angle observations and all other variables
	10- Convert the activity column  to a factor, using labels describing the activities.
	11- Clean up the column names and use descriptive variable names
	12- Group the data set by subject and activity
	13- Create a new data set with the average of each variable for each activity and each subject after grouping using summarise_each() function.
	14- Write the new tidy data set into a text file named tidy.txt

The output of the scipt is a tidy data set composed of 68 columns; the first two columns are the subjects labels and activity names and 66 columns represent the mean of the measured variables.

To read the tidy data you can use tidy<-read.table("tidy.txt") , assuming the file is saved in your working directory.


