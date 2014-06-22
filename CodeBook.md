Data Dictionary - Getting and Cleaning Data Project 
===================================================

##Feature Selection 

Average is taken from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ for each Activity and for each subject.
The set of Average variables that were calculated are based on 1 . mean(): Mean value and 2.std(): Standard deviation measurements only.
Other set of variables like min(),max(),mad() etc. are ignored.
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.Please note that 't' indicate time domain and'f' indicate frequency domain signals.

*Following variables are present in the final tidy data set <b>tidy_data_set.txt</b>,created by <a href="https://github.com/Shrikant15/GettingCleaningData/blob/master/run_analysis.R/">run_analysis.R</a> in the current working directory
 
*ActivityName                        : Identify which activity subject was performing while taking measurements.Character data,WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING,LAYING
*SubjectId                           : An identifier of the subject who carried out the experiment.Integer data , ranging from 1-30.  
*Average-tBodyAcc-mean-X             : Average of Body Linear Acceleration mean on X axis   
*Average-tBodyAcc-mean-Y				: Average of Body Linear Acceleration mean on Y axis
*Average-tBodyAcc-mean-Z				: Average of Body Linear Acceleration mean on Z axis
*Average-tBodyAcc-std-X              : Average of Body Linear Acceleration standard deviation on X axis
*Average-tBodyAcc-std-Y              : Average of Body Linear Acceleration standard deviation on Y axis
*Average-tBodyAcc-std-Z              : Average of Body Linear Acceleration standard deviation on Z axis
*Average-tGravityAcc-mean-X          : Average of Gravity Acceleration mean on X axis    
*Average-tGravityAcc-mean-Y          : Average of Gravity Acceleration mean on Y axis
*Average-tGravityAcc-mean-Z          : Average of Gravity Acceleration mean on Z axis
*Average-tGravityAcc-std-X           : Average of Gravity Acceleration standard deviation on X axis
*Average-tGravityAcc-std-Y           : Average of Gravity Acceleration standard deviation on Y axis
*Average-tGravityAcc-std-Z           : Average of Gravity Acceleration standard deviation on Z axis

Similarly, Average of Mean and Standard Deviation of following measurements were also taken  
*Jerk Signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ) were taken.  
*Magnitude of these three-dimensional signals -(tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).   
*Fast Fourier Transform (FFT) applied signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag.   

##Variables for above measurements
*Average-tBodyAccJerk-mean-X
*Average-tBodyAccJerk-mean-Y
*Average-tBodyAccJerk-mean-Z
*Average-tBodyAccJerk-std-X
*Average-tBodyAccJerk-std-Y
*Average-tBodyAccJerk-std-Z
*Average-tBodyGyro-mean-X
*Average-tBodyGyro-mean-Y
*Average-tBodyGyro-mean-Z
*Average-tBodyGyro-std-X
*Average-tBodyGyro-std-Y
*Average-tBodyGyro-std-Z
*Average-tBodyGyroJerk-mean-X
*Average-tBodyGyroJerk-mean-Y
*Average-tBodyGyroJerk-mean-Z
*Average-tBodyGyroJerk-std-X
*Average-tBodyGyroJerk-std-Y
*Average-tBodyGyroJerk-std-Z
*Average-tBodyAccMag-mean
*Average-tBodyAccMag-std
*Average-tGravityAccMag-mean
*Average-tGravityAccMag-std
*Average-tBodyAccJerkMag-mean
*Average-tBodyAccJerkMag-std
*Average-tBodyGyroMag-mean
*Average-tBodyGyroMag-std
*Average-tBodyGyroJerkMag-mean
*Average-tBodyGyroJerkMag-std
*Average-fBodyAcc-mean-X
*Average-fBodyAcc-mean-Y
*Average-fBodyAcc-mean-Z
*Average-fBodyAcc-std-X
*Average-fBodyAcc-std-Y
*Average-fBodyAcc-std-Z
*Average-fBodyAccJerk-mean-X
*Average-fBodyAccJerk-mean-Y
*Average-fBodyAccJerk-mean-Z
*Average-fBodyAccJerk-std-X
*Average-fBodyAccJerk-std-Y
*Average-fBodyAccJerk-std-Z
*Average-fBodyGyro-mean-X
*Average-fBodyGyro-mean-Y
*Average-fBodyGyro-mean-Z
*Average-fBodyGyro-std-X
*Average-fBodyGyro-std-Y
*Average-fBodyGyro-std-Z
*Average-fBodyAccMag-mean
*Average-fBodyAccMag-std
*Average-fBodyBodyAccJerkMag-mean
*Average-fBodyBodyAccJerkMag-std
*Average-fBodyBodyGyroMag-mean
*Average-fBodyBodyGyroMag-std
*Average-fBodyBodyGyroJerkMag-mean:
*Average-fBodyBodyGyroJerkMag-std
