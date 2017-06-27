# Getting and Cleaning Data Course Project
# Data Source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# This R script produces a tidy data set.

library(dplyr)

# Download and unzip the dataset:
filename <- "HARdata.zip"

if (!file.exists(filename)) {
  URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(URL, filename, method = "curl")
}
if (!file.exists("UCI HAR Dataset")) {
  unzip(filename)
}

# 1. MERGE THE TRAINING AND TEST SETS INTO ONE DATASET.
## Read the train data:
Xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
Ytrain <- read.table("./UCI HAR Dataset/train/Y_train.txt")
Strain <- read.table("./UCI HAR Dataset/train/subject_train.txt")

## Read the test data:
Xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
Ytest <- read.table("./UCI HAR Dataset/test/Y_test.txt")
Stest <- read.table("./UCI HAR Dataset/test/subject_test.txt")

## Merge into one data set (via row bind):
X <- rbind(Xtrain, Xtest)
Y <- rbind(Ytrain, Ytest)
subject <- rbind(Strain, Stest)

# 2. EXTRACTS ONLY THE MEASUREMENTS ON THE MEAN AND STANDARD DEVIATION FOR EACH MEASUREMENT.
## Read the features:
features <- read.table("./UCI HAR Dataset/features.txt")

## Get only measurements of mean and stdev:
sub <- grep(".*mean.*|.*std.*", features[, 2])
X <- X[sub]

# 3. USES DESCRIPTIVE ACTIVITY NAMES TO NAME THE ACTIVITIES IN THE DATASET.
## Read the activity labels:
activitylabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
activitylabels[, 2] <- as.character(activitylabels[, 2])

## Name the activities in the dataset:
colnames(Y) <- "activity"
activitylabel <- factor(Y$activity, labels = activitylabels[, 2])

# 4. APPROPRIATELY LABELS THE DATASET WITH DESCRIPTIVE VARIABLE NAMES.
colnames(X) <- features[sub, 2]
colnames(subject) <- "subject"
tidy <- cbind(subject, activitylabel, X)

# 5. CREATE A SECOND, INDEPENDENT TIDY DATASET WITH THE AVERAGE OF EACH VARIABLE FOR EACH
#    ACTIVITY AND EACH SUBJECT.
tidymean <- tidy %>% group_by(activitylabel, subject) %>% summarize_each(funs(mean))
write.table(tidymean, file = "./UCI HAR Dataset/tidydata.txt", row.names = FALSE, col.names = TRUE)