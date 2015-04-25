##Code Book

This is the code book for the Getting and Cleaning Data Course Project. It describes the data used in this project, the processing required to create the resulting data set saved in the file tidy.txt and the variable names in the created file.

##Overview
The tidy data was created from the UCI Human Recognition Activity Using Smartphones Data set. The data set was obtained from experiments carried out on 30 volunteers, each performed six activities wearing a smartphone on the waist.
The measured variables refer to accelerometer and gyroscope measurements from the smartphone (Samsung Galaxy S II). These measurements were saved in a number of text files.

###The data files used:
* features.txt: contains the names of 561 variables
* activity_labels: contains the names and IDs for the six activities
* x_train.txt: 7352 observations of the 561 features, for 70% (i.e 21) of the 30 volunteers.
* subject_train.txt: A vector of 7352 integers, denoting the ID of the volunteer related to each of the observations in x_train.txt
* y_train.txt: A vector of 7352 integers, denoting the ID of the activity related to each of the observations in x_train.txt
* X_test.txt: 2947 observations of the 561 features, for 9 of the 30 volunteers.
* subject_test.txt: A vector of 2947 integers, denoting the ID of the volunteer related to each of the observations in X_test.txt.
* y_test.txt: A vector of 2947 integers, denoting the ID of the activity related to each of the observations in X_test.txt.

More information about the files and the measured variables can be found in the README.txt and features_info.txt of the original data set obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

###Data Processing:
The detailed processing steps to create the tidy data set can be found in the README.md file in the same repo.
Summary of the steps:
	1- Read all the relevant files and label the columns
	2- Merge the train and test data sets into one data frame
	3- Select only the columns for the mean and standard deviation of the measurements.
	4- Create a tidy data set  with the average of each variable for each activity and each subject.
	5- The tidy data set was saved into tidy.txt

###The tidy data set
The tidy processed measured variables are in columns 3 to 68 of tidy.txt as shown in the list below. These variables  indicate the column contains the mean of the original dataset  in either the time domain or frequency domain, denoted by time or frequency respectively.The mean was taken for only the mean() and std() measurements from the original dataset, denoted by mean or standard deviation at the end of the variable name.

[1] "subjectID"                                                              
 [2] "activity"                                                               
 [3] "timeBodyAcceleration.mean...X"                             
 [4] "timeBodyAcceleration.mean...Y"                             
 [5] "timeBodyAcceleration.mean...Z"                             
 [6] "timeGravityAcceleration.mean...X"                          
 [7] "timeGravityAcceleration.mean...Y"                          
 [8] "timeGravityAcceleration.mean...Z"                          
 [9] "timeBodyAccelerationJerk.mean...X"                         
[10] "timeBodyAccelerationJerk.mean...Y"                         
[11] "timeBodyAccelerationJerk.mean...Z"                         
[12] "timeBodyGyroAccelerationmean...X"                            
[13] "timeBodyGyroAccelerationmean...Y"                            
[14] "timeBodyGyroAccelerationmean...Z"                            
[15] "timeBodyGyroJerkAccelerationmean...X"                        
[16] "timeBodyGyroJerkAccelerationmean...Y"                        
[17] "timeBodyGyroJerkAccelerationmean...Z"                        
[18] "timeBodyAccelerationccelerationccMag.mean.."                            
[19] "timeGravityAccelerationMag.mean.."                         
[20] "timeBodyAccelerationJerkMag.mean.."                        
[21] "timeBodyGyroMagAccelerationmean.."                           
[22] "timeBodyGyroJerkMagAccelerationmean.."                       
[23] "frequencyBodyAcceleration.mean...X"                        
[24] "frequencyBodyAcceleration.mean...Y"                        
[25] "frequencyBodyAcceleration.mean...Z"                        
[26] "frequencyBodyAccelerationJerk.mean...X"                    
[27] "frequencyBodyAccelerationJerk.mean...Y"                    
[28] "frequencyBodyAccelerationJerk.mean...Z"                    
[29] "frequencyBodyGyroAccelerationmean...X"                       
[30] "frequencyBodyGyroAccelerationmean...Y"                       
[31] "frequencyBodyGyroAccelerationmean...Z"                       
[32] "frequencyBodyAccelerationMag.mean.."                       
[33] "frequencyBodyBodyAccelerationJerkMag.mean.."               
[34] "frequencyBodyBodyGyroMagAccelerationmean.."                  
[35] "frequencyBodyBodyGyroJerkMagAccelerationmean.."              
[36] "timeBodyAcceleration.standard deviation...X"               
[37] "timeBodyAcceleration.standard deviation...Y"               
[38] "timeBodyAcceleration.standard deviation...Z"               
[39] "timeGravityAcceleration.standard deviation...X"            
[40] "timeGravityAcceleration.standard deviation...Y"            
[41] "timeGravityAcceleration.standard deviation...Z"            
[42] "timeBodyAccelerationJerk.standard deviation...X"           
[43] "timeBodyAccelerationJerk.standard deviation...Y"           
[44] "timeBodyAccelerationJerk.standard deviation...Z"           
[45] "timeBodyGyroAccelerationstandard deviation...X"              
[46] "timeBodyGyroAccelerationstandard deviation...Y"              
[47] "timeBodyGyroAccelerationstandard deviation...Z"              
[48] "timeBodyGyroJerkAccelerationstandard deviation...X"          
[49] "timeBodyGyroJerkAccelerationstandard deviation...Y"          
[50] "timeBodyGyroJerkAccelerationstandard deviation...Z"          
[51] "timeBodyAccelerationMag.standard deviation.."              
[52] "timeGravityAccelerationMag.standard deviation.."           
[53] "timeBodyAccelerationJerkMag.standard deviation.."          
[54] "timeBodyGyroMagAccelerationstandard deviation.."             
[55] "timeBodyGyroJerkMagAccelerationstandard deviation.."         
[56] "frequencyBodyAcceleration.standard deviation...X"          
[57] "frequencyBodyAcceleration.standard deviation...Y"          
[58] "frequencyBodyAcceleration.standard deviation...Z"          
[59] "frequencyBodyAccelerationJerk.standard deviation...X"      
[60] "frequencyBodyAccelerationJerk.standard deviation...Y"      
[61] "frequencyBodyAccelerationJerk.standard deviation...Z"      
[62] "frequencyBodyGyroAccelerationstandard deviation...X"         
[63] "frequencyBodyGyroAccelerationstandard deviation...Y"         
[64] "frequencyBodyGyroAccelerationstandard deviation...Z"         
[65] "frequencyBodyAccelerationMag.standard deviation.."         
[66] "frequencyBodyBodyAccelerationJerkMag.standard deviation.." 
[67] "frequencyBodyBodyGyroMagAccelerationstandard deviation.."    
[68] "frequencyBodyBodyGyroJerkMagAccelerationstandard deviation.."