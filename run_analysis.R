library(plyr)
library(dplyr)
library(tidyr)

featureFile <- "./features.txt"
testFile1 <- "./test/X_test.txt"
testFile2 <- "./test/y_test.txt"
testFile3 <- "./test/subject_test.txt"
trainingFile1 <- "./train/X_train.txt"
trainingFile2 <- "./train/y_train.txt"
trainingFile3 <- "./train/subject_train.txt"
activityLabelFile <- "./activity_labels.txt"
outputFile <-"./tidyData.txt"

featureDf <- read.csv(featureFile, sep="", stringsAsFactors = FALSE, quote="", header=FALSE)

testFileDf <- read.csv(testFile1, sep="", stringsAsFactors = FALSE, quote="", dec=".", numerals = "no.loss", header=FALSE, col.names=featureDf$V2)
testActivityFileDf <- read.csv(testFile2, sep="", stringsAsFactors = FALSE, quote="", dec=".", numerals = "no.loss", header=FALSE, col.names="Activity")
testSubjectFileDf <- read.csv(testFile3, sep="", stringsAsFactors = FALSE, quote="", dec=".", numerals = "no.loss", header=FALSE, col.names="Subject")

activityLabelFileDf <- read.csv(activityLabelFile, sep="", stringsAsFactors = FALSE, quote="", dec=".", numerals = "no.loss", header=FALSE, col.names=c("Activity","ActivityName"))

trainFileDf <- read.csv(trainingFile1, sep="", stringsAsFactors = FALSE, quote="", dec=".", numerals = "no.loss", header=FALSE, col.names=featureDf$V2)
trainActivityFileDf <- read.csv(trainingFile2, sep="", stringsAsFactors = FALSE, quote="", dec=".", numerals = "no.loss", header=FALSE, col.names="Activity")
trainSubjectFileDf <- read.csv(trainingFile3, sep="", stringsAsFactors = FALSE, quote="", dec=".", numerals = "no.loss", header=FALSE, col.names="Subject")


testFileDfDplyr <- tbl_df(testFileDf)
rm(testFileDf)
testActivityFileDfDplyr <- tbl_df(testActivityFileDf)
rm(testActivityFileDf)
testSubjectFileDfDplyr <- tbl_df(testSubjectFileDf)
rm(testSubjectFileDf)

trainFileDfDplyr <- tbl_df(trainFileDf)
rm(trainFileDf)
trainActivityFileDfDplyr <- tbl_df(trainActivityFileDf)
rm(trainActivityFileDf)
trainSubjectFileDfDplyr <- tbl_df(trainSubjectFileDf)
rm(trainSubjectFileDf)

activityLabelFileDfDplyr <- tbl_df(activityLabelFileDf)
rm(activityLabelFileDf)

#1 Merges the training and the test sets to create one data set.
# First we must complete 

testFileDfDplyr$Activity <- testActivityFileDfDplyr$Activity
testFileDfDplyr$Subject <- testSubjectFileDfDplyr$Subject

trainFileDfDplyr$Activity <- trainActivityFileDfDplyr$Activity
trainFileDfDplyr$Subject <- trainSubjectFileDfDplyr$Subject

mergedDf <-rbind(testFileDfDplyr, trainFileDfDplyr) 

#2 Extracts only the measurements on the mean and standard deviation for each measurement. 
filteredDf <- select(mergedDf, matches("std|mean|Subject|Activity"))

#3 Uses descriptive activity names to name the activities in the data set
namedFilteredDf <- inner_join(filteredDf,activityLabelFileDfDplyr, by="Activity")
namedFilteredDf$Activity <- NULL

#4 Appropriately labels the data set with descriptive variable names. 
namedFilteredDf <- plyr::rename(namedFilteredDf, c("tBodyAcc.mean...X"= "tBodyAccMeanX", "tBodyAcc.mean...Y"= "tBodyAccMeanY", "tBodyAcc.mean...Z"= "tBodyAccMeanZ", "tBodyAcc.std...X"="tBodyAccStdX", "tBodyAcc.std...Y"="tBodyAccStdY", "tBodyAcc.std...Z"="tBodyAccStdZ", "tGravityAcc.mean...X"="tGravityAccMeanX", "tGravityAcc.mean...Y"="tGravityAccMeanY", "tGravityAcc.mean...Z"="tGravityAccMeanZ", "tGravityAcc.std...X"= "tGravityAccStdX", "tGravityAcc.std...Y"= "tGravityAccStdY", "tGravityAcc.std...Z"= "tGravityAccStdZ", "tBodyAccJerk.mean...X"= "tBodyAccJerkMeanX", "tBodyAccJerk.mean...Y"= "tBodyAccJerkMeanY", "tBodyAccJerk.mean...Z"= "tBodyAccJerkMeanZ", "tBodyAccJerk.std...X"="tBodyAccJerkStdX", "tBodyAccJerk.std...Y"="tBodyAccJerkStdY", "tBodyAccJerk.std...Z"="tBodyAccJerkStdZ", "tBodyGyro.mean...X"="tBodyGyroMeanX", "tBodyGyro.mean...Y"="tBodyGyroMeanY", "tBodyGyro.mean...Z"="tBodyGyroMeanZ", "tBodyGyro.std...X"= "tBodyGyroStdX", "tBodyGyro.std...Y"= "tBodyGyroStdY", "tBodyGyro.std...Z"= "tBodyGyroStdZ", "tBodyGyroJerk.mean...X"="tBodyGyroJerkMeanX", "tBodyGyroJerk.mean...Y"="tBodyGyroJerkMeanY", "tBodyGyroJerk.mean...Z"="tBodyGyroJerkMeanZ", "tBodyGyroJerk.std...X"= "tBodyGyroJerkStdX", "tBodyGyroJerk.std...Y"= "tBodyGyroJerkStdY", "tBodyGyroJerk.std...Z"= "tBodyGyroJerkStdZ", "tBodyAccMag.mean.."="tBodyAccMagMean", "tBodyAccMag.std.."= "tBodyAccMagStd", "tGravityAccMag.mean.."= "tGravityAccMagMean", "tGravityAccMag.std.."="tGravityAccMagStd", "tBodyAccJerkMag.mean.."="tBodyAccJerkMagMean", "tBodyAccJerkMag.std.."= "tBodyAccJerkMagStd", "tBodyGyroMag.mean.."= "tBodyGyroMagMean", "tBodyGyroMag.std.."="tBodyGyroMagStd", "tBodyGyroJerkMag.mean.."= "tBodyGyroJerkMagMean", "tBodyGyroJerkMag.std.."="tBodyGyroJerkMagStd", "fBodyAcc.mean...X"= "fBodyAccMeanX", "fBodyAcc.mean...Y"= "fBodyAccMeanY", "fBodyAcc.mean...Z"= "fBodyAccMeanZ", "fBodyAcc.std...X"="fBodyAccStdX", "fBodyAcc.std...Y"="fBodyAccStdY", "fBodyAcc.std...Z"="fBodyAccStdZ", "fBodyAcc.meanFreq...X"= "fBodyAccMeanFreqX", "fBodyAcc.meanFreq...Y"= "fBodyAccMeanFreqY", "fBodyAcc.meanFreq...Z"= "fBodyAccMeanFreqZ", "fBodyAccJerk.mean...X"= "fBodyAccJerkMeanX", "fBodyAccJerk.mean...Y"= "fBodyAccJerkMeanY", "fBodyAccJerk.mean...Z"= "fBodyAccJerkMeanZ", "fBodyAccJerk.std...X"="fBodyAccJerkStdX", "fBodyAccJerk.std...Y"="fBodyAccJerkStdY", "fBodyAccJerk.std...Z"="fBodyAccJerkStdZ", "fBodyAccJerk.meanFreq...X"= "fBodyAccJerkMeanFreqX", "fBodyAccJerk.meanFreq...Y"= "fBodyAccJerkMeanFreqY", "fBodyAccJerk.meanFreq...Z"= "fBodyAccJerkMeanFreqZ", "fBodyGyro.mean...X"="fBodyGyroMeanX", "fBodyGyro.mean...Y"="fBodyGyroMeanY", "fBodyGyro.mean...Z"="fBodyGyroMeanZ", "fBodyGyro.std...X"= "fBodyGyroStdX", "fBodyGyro.std...Y"= "fBodyGyroStdY", "fBodyGyro.std...Z"= "fBodyGyroStdZ", "fBodyGyro.meanFreq...X"="fBodyGyroMeanFreqX", "fBodyGyro.meanFreq...Y"="fBodyGyroMeanFreqY", "fBodyGyro.meanFreq...Z"="fBodyGyroMeanFreqZ", "fBodyAccMag.mean.."="fBodyAccMagMean", "fBodyAccMag.std.."= "fBodyAccMagStd", "fBodyAccMag.meanFreq.."="fBodyAccMagMeanFreq", "fBodyBodyAccJerkMag.mean.."="fBodyAccJerkMagMean", "fBodyBodyAccJerkMag.std.."= "fBodyAccJerkMagStd", "fBodyBodyAccJerkMag.meanFreq.."="fBodyAccJerkMagMeanFreq", "fBodyBodyGyroMag.mean.."= "fBodyGyroMagMean", "fBodyBodyGyroMag.std.."="fBodyGyroMagStd", "fBodyBodyGyroMag.meanFreq.."= "fBodyGyroMagMeanFreq", "fBodyBodyGyroJerkMag.mean.."= "fBodyGyroJerkMagMean", "fBodyBodyGyroJerkMag.std.."="fBodyGyroJerkMagStd", "fBodyBodyGyroJerkMag.meanFreq.."= "fBodyGyroJerkMagMeanFreq", "angle.tBodyAccMean.gravity."= "TBodyAccMeanGravityAngle", "angle.tBodyAccJerkMean..gravityMean."="tBodyAccJerkGravityMeanAngle", "angle.tBodyGyroMean.gravityMean."="tBodyGyroGravityMeanAngle", "angle.tBodyGyroJerkMean.gravityMean."="tBodyGyroJerkGravityMeanAngle", "angle.X.gravityMean."="gravityMeanAngleX", "angle.Y.gravityMean."="gravityMeanAngleY", "angle.Z.gravityMean."="gravityMeanAngleZ", "Subject"= "Subject", "ActivityName"="Activity") )

tidyDf <- namedFilteredDf %>%
  select(Subject,Activity, everything())
#5 From the data set in step 4, creates a second, independent tidy data set with the average 
#  of each variable for each activity and each subject.

tidyAveragedDF <- tidyDf %>% 
  group_by(Subject, Activity) %>% 
  summarise_each(funs(mean))

write.table(tidyAveragedDF, outputFile, row.names = FALSE)
