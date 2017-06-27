# Getting-and-Cleaning-Data-Course-Project
## Data Description
Data collected from the accelerometers from the Samsung Galaxy S smartphone obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. The variables in data X are sensor signals measured from the smartphone of 30 subjects. The variable in Y indicates the type of activity being performed.

## Code Explanation
The R Script `run_analysis.R` does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive actiivity names to name the activities to the data set.
4. Appropriately labels the data set with descriptive variable names.
5. From the data in step 4, creates a second, independent tidy data set with the average of each variable for each subject.
