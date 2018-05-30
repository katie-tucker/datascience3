Note this Code Book is copied and motified from the code books of the original data which can be found here:https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and the experiement description which can
be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
# Original Data
=================

URL: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Source:
Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws

Data Set Information:

The experiment was performed on 30 subjects aged 19-48 years old. Each person performed six activities  wearing a Samsung Galaxy S II on the waist. Using its embedded accelerometer and gyroscope, they captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

# Average Tidy Data
===================
This data average of each variable for each activity and each subject from the original data source.

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean: Mean value
std: Standard deviation
meanFreq: Weighted average of the frequency components to obtain a mean frequency

Complete List of Variables
==========================
                    
 "tBodyAcc mean X"               "tBodyAcc mean Y"              
"tBodyAcc mean Z"               "tBodyAcc std X"               
 "tBodyAcc std Y"                "tBodyAcc std Z"               
"tGravityAcc mean X"            "tGravityAcc mean Y"           
"tGravityAcc mean Z"            "tGravityAcc std X"            
"tGravityAcc std Y"             "tGravityAcc std Z"            
"tBodyAccJerk mean X"           "tBodyAccJerk mean Y"          
"tBodyAccJerk mean Z"           "tBodyAccJerk std X"           
 "tBodyAccJerk std Y"            "tBodyAccJerk std Z"           
"tBodyGyro mean X"              "tBodyGyro mean Y"             
"tBodyGyro mean Z"              "tBodyGyro std X"              
"tBodyGyro std Y"               "tBodyGyro std Z"              
"tBodyGyroJerk mean X"          "tBodyGyroJerk mean Y"         
"tBodyGyroJerk mean Z"          "tBodyGyroJerk std X"          
"tBodyGyroJerk std Y"           "tBodyGyroJerk std Z"          
"tBodyAccMag mean"              "tBodyAccMag std"              
"tGravityAccMag mean"           "tGravityAccMag std"           
"tBodyAccJerkMag mean"          "tBodyAccJerkMag std"          
"tBodyGyroMag mean"             "tBodyGyroMag std"             
"tBodyGyroJerkMag mean"         "tBodyGyroJerkMag std"         
"fBodyAcc mean X"               "fBodyAcc mean Y"              
"fBodyAcc mean Z"               "fBodyAcc std X"               
"fBodyAcc std Y"                "fBodyAcc std Z"               
"fBodyAcc meanFreq X"           "fBodyAcc meanFreq Y"          
"fBodyAcc meanFreq Z"           "fBodyAccJerk mean X"          
"fBodyAccJerk mean Y"           "fBodyAccJerk mean Z"          
"fBodyAccJerk std X"            "fBodyAccJerk std Y"           
"fBodyAccJerk std Z"            "fBodyAccJerk meanFreq X"      
"fBodyAccJerk meanFreq Y"       "fBodyAccJerk meanFreq Z"      
"fBodyGyro mean X"              "fBodyGyro mean Y"             
"fBodyGyro mean Z"              "fBodyGyro std X"              
"fBodyGyro std Y"               "fBodyGyro std Z"              
"fBodyGyro meanFreq X"          "fBodyGyro meanFreq Y"         
"fBodyGyro meanFreq Z"          "fBodyAccMag mean"             
"fBodyAccMag std"               "fBodyAccMag meanFreq"         
"fBodyBodyAccJerkMag mean"      "fBodyBodyAccJerkMag std"      
"fBodyBodyAccJerkMag meanFreq"  "fBodyBodyGyroMag mean"        
"fBodyBodyGyroMag std"          "fBodyBodyGyroMag meanFreq"    
"fBodyBodyGyroJerkMag mean"     "fBodyBodyGyroJerkMag std" 

Activities
=================
WALKING
WALKING UPSTAIRS
WALKING DOWNSTAIRS
SITTING
STANDING
LAYING

