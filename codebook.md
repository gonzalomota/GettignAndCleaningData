---
title: "Codebook for Human Activity Recognition Using Smartphones Dataset"
---

## Project Description
Cleaning the data of the Human Activity Recognition database 

##Study design and data processing


###Collection of the raw data
Data was collected from 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

###Notes on the original (raw) data 
The dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
The data is therefore divided in two types of files, training and test, containing the same type of data for different subjects.

##Creating the tidy datafile

###Guide to create the tidy data file

    1. Download the data from
    2. Unzip data
    3. Copy run_analysis.r to unzipped data folder and run
    4. tidyData.txt will be created in the same folder.    


###Cleaning of the data
The script does the following in this order:
	1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each measurement. 
    3. Uses descriptive activity names to name the activities in the data set
    4. Appropriately labels the data set with descriptive variable names. 
    5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

For a more detailed description on each of the operationsm pleas read the [README](./README.md) file.

##Description of the variables in the tiny_data.txt file
 - Dimensions of the dataset: 180 observations of 88 variables
 - Variables present in the dataset
---
                                     vars   n  mean   sd median trimmed   mad   min   max range  skew kurtosis   se
X.Subject.                              1 180 15.50 8.68  15.50   15.50 11.12  1.00 30.00 29.00  0.00    -1.22 0.65
X.Activity.*                            2 180   NaN   NA     NA     NaN    NA   Inf  -Inf  -Inf    NA       NA   NA
X.tBodyAccMeanX.                        3 180  0.27 0.01   0.28    0.28  0.01  0.22  0.30  0.08 -1.05     2.27 0.00
X.tBodyAccMeanY.                        4 180 -0.02 0.01  -0.02   -0.02  0.00 -0.04  0.00  0.04 -0.53     1.56 0.00
X.tBodyAccMeanZ.                        5 180 -0.11 0.01  -0.11   -0.11  0.01 -0.15 -0.08  0.08 -1.11     4.82 0.00
X.tBodyAccStdX.                         6 180 -0.56 0.45  -0.75   -0.60  0.36 -1.00  0.63  1.62  0.43    -1.24 0.03
X.tBodyAccStdY.                         7 180 -0.46 0.50  -0.51   -0.49  0.65 -0.99  0.62  1.61  0.23    -1.60 0.04
X.tBodyAccStdZ.                         8 180 -0.58 0.40  -0.65   -0.61  0.47 -0.99  0.61  1.60  0.45    -1.05 0.03
X.tGravityAccMeanX.                     9 180  0.70 0.49   0.92    0.81  0.05 -0.68  0.97  1.65 -1.80     1.40 0.04
X.tGravityAccMeanY.                    10 180 -0.02 0.35  -0.13   -0.07  0.18 -0.48  0.96  1.44  1.41     1.01 0.03
X.tGravityAccMeanZ.                    11 180  0.07 0.29   0.02    0.04  0.19 -0.50  0.96  1.45  1.14     1.16 0.02
X.tGravityAccStdX.                     12 180 -0.96 0.03  -0.97   -0.97  0.02 -1.00 -0.83  0.17  1.66     4.96 0.00
X.tGravityAccStdY.                     13 180 -0.95 0.03  -0.96   -0.96  0.02 -0.99 -0.64  0.35  4.78    42.00 0.00
X.tGravityAccStdZ.                     14 180 -0.94 0.04  -0.95   -0.94  0.03 -0.99 -0.61  0.38  3.22    22.01 0.00
X.tBodyAccJerkMeanX.                   15 180  0.08 0.01   0.08    0.08  0.01  0.04  0.13  0.09  0.81     2.50 0.00
X.tBodyAccJerkMeanY.                   16 180  0.01 0.01   0.01    0.01  0.01 -0.04  0.06  0.10 -0.19     1.56 0.00
X.tBodyAccJerkMeanZ.                   17 180  0.00 0.01   0.00    0.00  0.01 -0.07  0.04  0.11 -0.83     3.45 0.00
X.tBodyAccJerkStdX.                    18 180 -0.59 0.42  -0.81   -0.63  0.27 -0.99  0.54  1.54  0.42    -1.29 0.03
X.tBodyAccJerkStdY.                    19 180 -0.57 0.43  -0.78   -0.60  0.31 -0.99  0.36  1.34  0.36    -1.47 0.03
X.tBodyAccJerkStdZ.                    20 180 -0.74 0.28  -0.88   -0.77  0.16 -0.99  0.03  1.02  0.67    -0.71 0.02
X.tBodyGyroMeanX.                      21 180 -0.03 0.05  -0.03   -0.03  0.02 -0.21  0.19  0.40  0.34     2.33 0.00
X.tBodyGyroMeanY.                      22 180 -0.07 0.04  -0.07   -0.07  0.02 -0.20  0.03  0.23 -0.28     2.01 0.00
X.tBodyGyroMeanZ.                      23 180  0.09 0.04   0.09    0.09  0.02 -0.07  0.18  0.25 -0.77     3.16 0.00
X.tBodyGyroStdX.                       24 180 -0.69 0.29  -0.79   -0.71  0.30 -0.99  0.27  1.26  0.39    -1.09 0.02
X.tBodyGyroStdY.                       25 180 -0.65 0.35  -0.80   -0.70  0.28 -0.99  0.48  1.47  0.72    -0.49 0.03
X.tBodyGyroStdZ.                       26 180 -0.62 0.37  -0.80   -0.65  0.27 -0.99  0.56  1.55  0.53    -0.82 0.03
X.tBodyGyroJerkMeanX.                  27 180 -0.10 0.02  -0.10   -0.10  0.01 -0.16 -0.02  0.14  0.48     1.77 0.00
X.tBodyGyroJerkMeanY.                  28 180 -0.04 0.01  -0.04   -0.04  0.00 -0.08 -0.01  0.06 -0.81     2.72 0.00
X.tBodyGyroJerkMeanZ.                  29 180 -0.05 0.01  -0.05   -0.05  0.01 -0.09 -0.01  0.09  0.26     1.81 0.00
X.tBodyGyroJerkStdX.                   30 180 -0.70 0.30  -0.84   -0.73  0.23 -1.00  0.18  1.18  0.55    -0.94 0.02
X.tBodyGyroJerkStdY.                   31 180 -0.76 0.27  -0.89   -0.80  0.15 -1.00  0.30  1.29  1.15     1.02 0.02
X.tBodyGyroJerkStdZ.                   32 180 -0.71 0.30  -0.86   -0.75  0.20 -1.00  0.19  1.19  0.64    -0.68 0.02
X.tBodyAccMagMean.                     33 180 -0.50 0.47  -0.48   -0.53  0.70 -0.99  0.64  1.63  0.23    -1.60 0.04
X.tBodyAccMagStd.                      34 180 -0.54 0.43  -0.61   -0.59  0.51 -0.99  0.43  1.41  0.46    -1.21 0.03
X.tGravityAccMagMean.                  35 180 -0.50 0.47  -0.48   -0.53  0.70 -0.99  0.64  1.63  0.23    -1.60 0.04
X.tGravityAccMagStd.                   36 180 -0.54 0.43  -0.61   -0.59  0.51 -0.99  0.43  1.41  0.46    -1.21 0.03
X.tBodyAccJerkMagMean.                 37 180 -0.61 0.40  -0.82   -0.64  0.26 -0.99  0.43  1.43  0.36    -1.41 0.03
X.tBodyAccJerkMagStd.                  38 180 -0.58 0.42  -0.80   -0.62  0.29 -0.99  0.45  1.45  0.42    -1.34 0.03
X.tBodyGyroMagMean.                    39 180 -0.57 0.40  -0.66   -0.60  0.46 -0.98  0.42  1.40  0.31    -1.44 0.03
X.tBodyGyroMagStd.                     40 180 -0.63 0.34  -0.74   -0.66  0.34 -0.98  0.30  1.28  0.48    -1.05 0.03
X.tBodyGyroJerkMagMean.                41 180 -0.74 0.28  -0.86   -0.77  0.19 -1.00  0.09  1.08  0.65    -0.67 0.02
X.tBodyGyroJerkMagStd.                 42 180 -0.76 0.27  -0.88   -0.79  0.17 -1.00  0.25  1.25  1.01     0.51 0.02
X.fBodyAccMeanX.                       43 180 -0.58 0.43  -0.77   -0.61  0.34 -1.00  0.54  1.53  0.39    -1.35 0.03
X.fBodyAccMeanY.                       44 180 -0.49 0.48  -0.59   -0.52  0.56 -0.99  0.52  1.51  0.26    -1.58 0.04
X.fBodyAccMeanZ.                       45 180 -0.63 0.36  -0.72   -0.66  0.37 -0.99  0.28  1.27  0.47    -1.09 0.03
X.fBodyAccStdX.                        46 180 -0.55 0.46  -0.75   -0.60  0.37 -1.00  0.66  1.66  0.47    -1.17 0.03
X.fBodyAccStdY.                        47 180 -0.48 0.47  -0.51   -0.51  0.64 -0.99  0.56  1.55  0.24    -1.58 0.04
X.fBodyAccStdZ.                        48 180 -0.58 0.39  -0.64   -0.62  0.47 -0.99  0.69  1.67  0.51    -0.83 0.03
X.fBodyAccMeanFreqX.                   49 180 -0.23 0.19  -0.26   -0.24  0.24 -0.64  0.16  0.80  0.15    -1.11 0.01
X.fBodyAccMeanFreqY.                   50 180  0.01 0.14   0.01    0.01  0.13 -0.38  0.47  0.85  0.15     0.30 0.01
X.fBodyAccMeanFreqZ.                   51 180  0.04 0.19   0.07    0.06  0.16 -0.52  0.40  0.92 -0.79     0.66 0.01
X.fBodyAccJerkMeanX.                   52 180 -0.61 0.40  -0.81   -0.65  0.27 -0.99  0.47  1.47  0.44    -1.24 0.03
X.fBodyAccJerkMeanY.                   53 180 -0.59 0.41  -0.78   -0.62  0.30 -0.99  0.28  1.27  0.34    -1.50 0.03
X.fBodyAccJerkMeanZ.                   54 180 -0.71 0.30  -0.87   -0.75  0.18 -0.99  0.16  1.15  0.66    -0.70 0.02
X.fBodyAccJerkStdX.                    55 180 -0.61 0.40  -0.83   -0.65  0.25 -1.00  0.48  1.47  0.41    -1.32 0.03
X.fBodyAccJerkStdY.                    56 180 -0.57 0.43  -0.79   -0.61  0.30 -0.99  0.35  1.34  0.39    -1.40 0.03
X.fBodyAccJerkStdZ.                    57 180 -0.76 0.26  -0.90   -0.79  0.14 -0.99 -0.01  0.99  0.70    -0.63 0.02
X.fBodyAccJerkMeanFreqX.               58 180 -0.07 0.25  -0.06   -0.07  0.35 -0.58  0.33  0.91 -0.07    -1.52 0.02
X.fBodyAccJerkMeanFreqY.               59 180 -0.23 0.20  -0.23   -0.23  0.26 -0.60  0.20  0.80  0.04    -1.24 0.01
X.fBodyAccJerkMeanFreqZ.               60 180 -0.14 0.21  -0.09   -0.12  0.23 -0.63  0.23  0.86 -0.46    -0.89 0.02
X.fBodyGyroMeanX.                      61 180 -0.64 0.35  -0.73   -0.66  0.38 -0.99  0.47  1.47  0.41    -1.06 0.03
X.fBodyGyroMeanY.                      62 180 -0.68 0.33  -0.81   -0.72  0.26 -0.99  0.33  1.32  0.73    -0.50 0.02
X.fBodyGyroMeanZ.                      63 180 -0.60 0.38  -0.79   -0.64  0.29 -0.99  0.49  1.48  0.44    -1.15 0.03
X.fBodyGyroStdX.                       64 180 -0.71 0.27  -0.81   -0.73  0.27 -0.99  0.20  1.19  0.40    -1.07 0.02
X.fBodyGyroStdY.                       65 180 -0.65 0.36  -0.80   -0.69  0.28 -0.99  0.65  1.64  0.82    -0.12 0.03
X.fBodyGyroStdZ.                       66 180 -0.66 0.34  -0.82   -0.69  0.24 -0.99  0.52  1.51  0.63    -0.48 0.03
X.fBodyGyroMeanFreqX.                  67 180 -0.10 0.15  -0.12   -0.11  0.16 -0.40  0.25  0.64  0.24    -0.64 0.01
X.fBodyGyroMeanFreqY.                  68 180 -0.17 0.18  -0.16   -0.16  0.19 -0.67  0.27  0.94 -0.21    -0.16 0.01
X.fBodyGyroMeanFreqZ.                  69 180 -0.06 0.17  -0.05   -0.06  0.15 -0.51  0.38  0.88 -0.14     0.12 0.01
X.fBodyAccMagMean.                     70 180 -0.54 0.45  -0.67   -0.58  0.45 -0.99  0.59  1.57  0.46    -1.22 0.03
X.fBodyAccMagStd.                      71 180 -0.62 0.35  -0.65   -0.66  0.43 -0.99  0.18  1.17  0.49    -1.15 0.03
X.fBodyAccMagMeanFreq.                 72 180  0.08 0.14   0.08    0.08  0.14 -0.31  0.44  0.75 -0.02    -0.25 0.01
X.fBodyAccJerkMagMean.                 73 180 -0.58 0.43  -0.79   -0.61  0.30 -0.99  0.54  1.53  0.42    -1.31 0.03
X.fBodyAccJerkMagStd.                  74 180 -0.60 0.41  -0.81   -0.64  0.27 -0.99  0.32  1.31  0.45    -1.32 0.03
X.fBodyAccJerkMagMeanFreq.             75 180  0.16 0.14   0.17    0.16  0.18 -0.13  0.49  0.61  0.01    -0.89 0.01
X.fBodyGyroMagMean.                    76 180 -0.67 0.32  -0.77   -0.70  0.31 -0.99  0.20  1.19  0.58    -0.82 0.02
X.fBodyGyroMagStd.                     77 180 -0.67 0.29  -0.77   -0.70  0.29 -0.98  0.24  1.22  0.49    -0.98 0.02
X.fBodyGyroMagMeanFreq.                78 180 -0.04 0.18  -0.05   -0.04  0.18 -0.46  0.41  0.87  0.29    -0.38 0.01
X.fBodyGyroJerkMagMean.                79 180 -0.76 0.26  -0.88   -0.79  0.17 -1.00  0.15  1.14  0.95     0.24 0.02
X.fBodyGyroJerkMagStd.                 80 180 -0.77 0.25  -0.89   -0.81  0.15 -1.00  0.29  1.29  1.13     1.08 0.02
X.fBodyGyroJerkMagMeanFreq.            81 180  0.13 0.11   0.11    0.13  0.12 -0.18  0.43  0.61 -0.02    -0.15 0.01
X.TBodyAccMeanGravityAngle.            82 180  0.01 0.04   0.01    0.01  0.03 -0.16  0.13  0.29 -0.61     2.76 0.00
X.tBodyAccJerkMeanGravityMeanAngle.    83 180  0.00 0.04   0.00    0.00  0.03 -0.12  0.20  0.32  0.32     2.77 0.00
X.tBodyGyroMeanGravityMeanAngle.       84 180  0.02 0.14   0.02    0.02  0.06 -0.39  0.44  0.83 -0.06     1.42 0.01
X.tBodyGyroJerkMeanGravityMeanAngle.   85 180 -0.01 0.07  -0.02   -0.01  0.07 -0.22  0.18  0.41  0.00     0.49 0.01
X.gravityMeanAngleX.                   86 180 -0.52 0.48  -0.74   -0.62  0.14 -0.95  0.74  1.68  1.64     1.00 0.04
X.gravityMeanAngleY.                   87 180  0.08 0.28   0.17    0.13  0.12 -0.87  0.42  1.30 -1.70     2.07 0.02
X.gravityMeanAngleZ.                   88 180 -0.04 0.23   0.01   -0.01  0.14 -0.87  0.39  1.26 -1.46     2.19 0.02
---
(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

###Variable 1 (repeat this section for all variables in the dataset)
Short description of what the variable describes.


Some information on the variable including:
 - Class of the variable
 - Unique values/levels of the variable
 - Unit of measurement (if no unit of measurement list this as well)
 - In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels). 

(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

####Notes on variable 1:
If available, some additional notes on the variable not covered elsewehere. If no notes are present leave this section out.

##Sources
Sources you used if any, otherise leave out.

##Annex
If you used any code in the codebook that had the echo=FALSE attribute post this here (make sure you set the results parameter to 'hide' as you do not want the results to show again)
