#Readme for run_analysis.r

##Dependencies
The following libraries must be installed for this script to run:
 - plyr
 - dplyr
 - tidyr

##How to run
  
  1. Copy the file to the directory where the data will be ("<path>/UCI HAR Dataset/")
  2. Run the file using source('./run_analysis.R')
  3. The output file will be tidyData.txt in the same folder
  

##What it does

###Merges the training and the test sets to create one data set.
The script opens all the files containing the testing and training data, the file containing the activity labels and the file containing the column names. It saves this data in dplyr dataframes to easily manipulate the data, and includes the column names in the training and testing dataframes in the same operation (using the col.names option in the read.csv function).

It then proceeds to include the subject and activity information in each of the training and testing data frame, so that the information is correctly indexed, by simply adding an Activity and a Subject column. This can be done because the information in both dataframes is in order.

Once this is done it merges the training and testing dataframe into a single merged dataframe using rbind. This is the only dataframe that will be used from now on.

###Extracts only the measurements on the mean and standard deviation for each measurement. 

Using the select function in dplyr all columns containing "std" and "mean" are selected, as are the Subject and Activity columns. The columns include all the meanFreq variables, as well as the additional vectors gravityMean, tBodyAccMean, tBodyAccJerkMean, tBodyGyroMean, tBodyGyroJerkMean, as they are means and there is no real reason to exclude them based on the requirements.


###Uses descriptive activity names to name the activities in the data set

The Activity column gets an inner_join with the activity name dataframe, and therefore all the activities are correctly labelled in a new column, ActivityName. The Activity column gets eliminated.

###Appropriately labels the data set with descriptive variable names.

Using plyr::rename all the columns are renamed with correct and descriptive names, described in the codebook. ActivityName gets renamed Activity. The columns are also reordered to have Subject and Activity as the first columns.

###Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Using dplyr functions group\_by (with Subject and Activity) and summarise\_each (with funs(mean)), the new data set is created, and with write table it is written into the output file.
