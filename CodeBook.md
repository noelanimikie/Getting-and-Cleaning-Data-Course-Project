# Code Book

## Data Description
Data collected from the accelerometers from the Samsung Galaxy S smartphone obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. The variables in data X are sensor signals measured from the smartphone of 30 subjects. The variable in Y indicates the type of activity being performed.

## Transformations Performed
The R Script `run_analysis.R` does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive actiivity names to name the activities to the data set.
4. Appropriately labels the data set with descriptive variable names.
5. From the data in step 4, creates a second, independent tidy data set with the average of each variable for each subject.

## Identifiers
* `subject`: The ID of the test subject [integer]
* `activity`: The type of activity performed when the corresponding measurements were taken [factor]


## Variables / Measurements
The following mesurements are numeric.
* `tBodyAcc-mean()-X`          
* `tBodyAcc-mean()-Y`
* `tBodyAcc-mean()-Z`
* `tBodyAcc-std()-X`          
* `tBodyAcc-std()-Y` 
* `tBodyAcc-std()-Z`
* `tGravityAcc-mean()-X`
* `tGravityAcc-mean()-Y`
* `tGravityAcc-mean()-Z`
* `tGravityAcc-std()-X`       
* `tGravityAcc-std()-Y`
* `tGravityAcc-std()-Z`
* `tBodyAccJerk-mean()-X`      
* `tBodyAccJerk-mean()-Y`
* `tBodyAccJerk-mean()-Z`
* `tBodyAccJerk-std()-X`      
* `tBodyAccJerk-std()-Y`
* `tBodyAccJerk-std()-Z`
* `tBodyGyro-mean()-X`       
* `tBodyGyro-mean()-Y`
* `tBodyGyro-mean()-Z`
* `tBodyGyro-std()-X`          
* `tBodyGyro-std()-Y` 
* `tBodyGyro-std()-Z` 
* `tBodyGyroJerk-mean()-X`     
* `tBodyGyroJerk-mean()-Y`
* `tBodyGyroJerk-mean()-Z`
* `tBodyGyroJerk-std()-X`     
* `tBodyGyroJerk-std()-Y`
* `tBodyGyroJerk-std()-Z`
* `tBodyAccMag-mean()`         
* `tBodyAccMag-std()`
* `tGravityAccMag-mean()`
* `tGravityAccMag-std()`      
* `tBodyAccJerkMag-mean()`
* `tBodyAccJerkMag-std()`
* `tBodyGyroMag-mean()`        
* `tBodyGyroMag-std()`
* `tBodyGyroJerkMag-mean()`
* `tBodyGyroJerkMag-std()`    
* `fBodyAcc-mean()-X`
* `fBodyAcc-mean()-Y`
* `fBodyAcc-mean()-Z`          
* `fBodyAcc-std()-X`
* `fBodyAcc-std()-Y`
* `fBodyAcc-std()-Z`           
* `fBodyAccJerk-mean()-X`
* `fBodyAccJerk-mean()-Y`
* `fBodyAccJerk-mean()-Z`      
* `fBodyAccJerk-std()-X`
* `fBodyAccJerk-std()-Y`
* `fBodyAccJerk-std()-Z`       
* `fBodyGyro-mean()-X`  
* `fBodyGyro-mean()-Y`
* `fBodyGyro-mean()-Z`         
* `fBodyGyro-std()-X`
* `fBodyGyro-std()-Y`   
* `fBodyGyro-std()-Z`          
* `fBodyAccMag-mean()`
* `fBodyAccMag-std()`  
* `fBodyBodyAccJerkMag-mean()` 
* `fBodyBodyAccJerkMag-std()`
* `fBodyBodyGyroMag-mean()`
* `fBodyBodyGyroMag-std()`    
* `fBodyBodyGyroJerkMag-mean()` 
* `fBodyBodyGyroJerkMag-std()`
