#Codebook for Human Activity Recognition Using Smartphones Dataset


## Project Description
Cleaning the data of the Human Activity Recognition database 

##Study design and data processing


###Collection of the raw data
Data was collected from 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

###Notes on the original (raw) data 
The dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The data is therefore divided in two types of files, training and test, containing the same type of data for different subjects.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

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
    5. From the data set in step 4, creates a second, independent tidy data set with the average 
    of each variable for each activity and each subject.

For a more detailed description on each of the operationsm pleas read the [README](./README.md) file.

##Description of the variables in the tiny_data.txt file
 - Dimensions of the dataset: 180 observations of 88 variables
 - Variables present in the dataset
 
**All of the variables are the mean of the values for each activity and subject**
**All of the variables are normalized, with values between -1 and 1 (except subject and activity)**


 
										vars   n  mean   sd median trimmed   mad   min   max range  se
		Subject                          1 180 15.50 8.68  15.50   15.50 11.12  1.00 30.00 29.00  0.65
		Activity                         2 180   NaN   NA     NA     NaN    NA   Inf  -Inf     NA   NA
		tBodyAccMeanX                    3 180  0.27 0.01   0.28    0.28  0.01  0.22  0.30  0.08  0.00
		tBodyAccMeanY                    4 180 -0.02 0.01  -0.02   -0.02  0.00 -0.04  0.00  0.04  0.00
		tBodyAccMeanZ                    5 180 -0.11 0.01  -0.11   -0.11  0.01 -0.15 -0.08  0.08  0.00
		tBodyAccStdX                     6 180 -0.56 0.45  -0.75   -0.60  0.36 -1.00  0.63  1.62  0.03
		tBodyAccStdY                     7 180 -0.46 0.50  -0.51   -0.49  0.65 -0.99  0.62  1.61  0.04
		tBodyAccStdZ                     8 180 -0.58 0.40  -0.65   -0.61  0.47 -0.99  0.61  1.60  0.03
		tGravityAccMeanX                 9 180  0.70 0.49   0.92    0.81  0.05 -0.68  0.97  1.65  0.04
		tGravityAccMeanY                10 180 -0.02 0.35  -0.13   -0.07  0.18 -0.48  0.96  1.44  0.03
		tGravityAccMeanZ                11 180  0.07 0.29   0.02    0.04  0.19 -0.50  0.96  1.45  0.02
		tGravityAccStdX                 12 180 -0.96 0.03  -0.97   -0.97  0.02 -1.00 -0.83  0.17  0.00
		tGravityAccStdY                 13 180 -0.95 0.03  -0.96   -0.96  0.02 -0.99 -0.64  0.35  0.00
		tGravityAccStdZ                 14 180 -0.94 0.04  -0.95   -0.94  0.03 -0.99 -0.61  0.38  0.00
		tBodyAccJerkMeanX               15 180  0.08 0.01   0.08    0.08  0.01  0.04  0.13  0.09  0.00
		tBodyAccJerkMeanY               16 180  0.01 0.01   0.01    0.01  0.01 -0.04  0.06  0.10  0.00
		tBodyAccJerkMeanZ               17 180  0.00 0.01   0.00    0.00  0.01 -0.07  0.04  0.11  0.00
		tBodyAccJerkStdX                18 180 -0.59 0.42  -0.81   -0.63  0.27 -0.99  0.54  1.54  0.03
		tBodyAccJerkStdY                19 180 -0.57 0.43  -0.78   -0.60  0.31 -0.99  0.36  1.34  0.03
		tBodyAccJerkStdZ                20 180 -0.74 0.28  -0.88   -0.77  0.16 -0.99  0.03  1.02  0.02
		tBodyGyroMeanX                  21 180 -0.03 0.05  -0.03   -0.03  0.02 -0.21  0.19  0.40  0.00
		tBodyGyroMeanY                  22 180 -0.07 0.04  -0.07   -0.07  0.02 -0.20  0.03  0.23  0.00
		tBodyGyroMeanZ                  23 180  0.09 0.04   0.09    0.09  0.02 -0.07  0.18  0.25  0.00
		tBodyGyroStdX                   24 180 -0.69 0.29  -0.79   -0.71  0.30 -0.99  0.27  1.26  0.02
		tBodyGyroStdY                   25 180 -0.65 0.35  -0.80   -0.70  0.28 -0.99  0.48  1.47  0.03
		tBodyGyroStdZ                   26 180 -0.62 0.37  -0.80   -0.65  0.27 -0.99  0.56  1.55  0.03
		tBodyGyroJerkMeanX              27 180 -0.10 0.02  -0.10   -0.10  0.01 -0.16 -0.02  0.14  0.00
		tBodyGyroJerkMeanY              28 180 -0.04 0.01  -0.04   -0.04  0.00 -0.08 -0.01  0.06  0.00
		tBodyGyroJerkMeanZ              29 180 -0.05 0.01  -0.05   -0.05  0.01 -0.09 -0.01  0.09  0.00
		tBodyGyroJerkStdX               30 180 -0.70 0.30  -0.84   -0.73  0.23 -1.00  0.18  1.18  0.02
		tBodyGyroJerkStdY               31 180 -0.76 0.27  -0.89   -0.80  0.15 -1.00  0.30  1.29  0.02
		tBodyGyroJerkStdZ               32 180 -0.71 0.30  -0.86   -0.75  0.20 -1.00  0.19  1.19  0.02
		tBodyAccMagMean                 33 180 -0.50 0.47  -0.48   -0.53  0.70 -0.99  0.64  1.63  0.04
		tBodyAccMagStd                  34 180 -0.54 0.43  -0.61   -0.59  0.51 -0.99  0.43  1.41  0.03
		tGravityAccMagMean              35 180 -0.50 0.47  -0.48   -0.53  0.70 -0.99  0.64  1.63  0.04
		tGravityAccMagStd               36 180 -0.54 0.43  -0.61   -0.59  0.51 -0.99  0.43  1.41  0.03
		tBodyAccJerkMagMean             37 180 -0.61 0.40  -0.82   -0.64  0.26 -0.99  0.43  1.43  0.03
		tBodyAccJerkMagStd              38 180 -0.58 0.42  -0.80   -0.62  0.29 -0.99  0.45  1.45  0.03
		tBodyGyroMagMean                39 180 -0.57 0.40  -0.66   -0.60  0.46 -0.98  0.42  1.40  0.03
		tBodyGyroMagStd                 40 180 -0.63 0.34  -0.74   -0.66  0.34 -0.98  0.30  1.28  0.03
		tBodyGyroJerkMagMean            41 180 -0.74 0.28  -0.86   -0.77  0.19 -1.00  0.09  1.08  0.02
		tBodyGyroJerkMagStd             42 180 -0.76 0.27  -0.88   -0.79  0.17 -1.00  0.25  1.25  0.02
		fBodyAccMeanX                   43 180 -0.58 0.43  -0.77   -0.61  0.34 -1.00  0.54  1.53  0.03
		fBodyAccMeanY                   44 180 -0.49 0.48  -0.59   -0.52  0.56 -0.99  0.52  1.51  0.04
		fBodyAccMeanZ                   45 180 -0.63 0.36  -0.72   -0.66  0.37 -0.99  0.28  1.27  0.03
		fBodyAccStdX                    46 180 -0.55 0.46  -0.75   -0.60  0.37 -1.00  0.66  1.66  0.03
		fBodyAccStdY                    47 180 -0.48 0.47  -0.51   -0.51  0.64 -0.99  0.56  1.55  0.04
		fBodyAccStdZ                    48 180 -0.58 0.39  -0.64   -0.62  0.47 -0.99  0.69  1.67  0.03
		fBodyAccMeanFreqX               49 180 -0.23 0.19  -0.26   -0.24  0.24 -0.64  0.16  0.80  0.01
		fBodyAccMeanFreqY               50 180  0.01 0.14   0.01    0.01  0.13 -0.38  0.47  0.85  0.01
		fBodyAccMeanFreqZ               51 180  0.04 0.19   0.07    0.06  0.16 -0.52  0.40  0.92  0.01
		fBodyAccJerkMeanX               52 180 -0.61 0.40  -0.81   -0.65  0.27 -0.99  0.47  1.47  0.03
		fBodyAccJerkMeanY               53 180 -0.59 0.41  -0.78   -0.62  0.30 -0.99  0.28  1.27  0.03
		fBodyAccJerkMeanZ               54 180 -0.71 0.30  -0.87   -0.75  0.18 -0.99  0.16  1.15  0.02
		fBodyAccJerkStdX                55 180 -0.61 0.40  -0.83   -0.65  0.25 -1.00  0.48  1.47  0.03
		fBodyAccJerkStdY                56 180 -0.57 0.43  -0.79   -0.61  0.30 -0.99  0.35  1.34  0.03
		fBodyAccJerkStdZ                57 180 -0.76 0.26  -0.90   -0.79  0.14 -0.99 -0.01  0.99  0.02
		fBodyAccJerkMeanFreqX           58 180 -0.07 0.25  -0.06   -0.07  0.35 -0.58  0.33  0.91  0.02
		fBodyAccJerkMeanFreqY           59 180 -0.23 0.20  -0.23   -0.23  0.26 -0.60  0.20  0.80  0.01
		fBodyAccJerkMeanFreqZ           60 180 -0.14 0.21  -0.09   -0.12  0.23 -0.63  0.23  0.86  0.02
		fBodyGyroMeanX                  61 180 -0.64 0.35  -0.73   -0.66  0.38 -0.99  0.47  1.47  0.03
		fBodyGyroMeanY                  62 180 -0.68 0.33  -0.81   -0.72  0.26 -0.99  0.33  1.32  0.02
		fBodyGyroMeanZ                  63 180 -0.60 0.38  -0.79   -0.64  0.29 -0.99  0.49  1.48  0.03
		fBodyGyroStdX                   64 180 -0.71 0.27  -0.81   -0.73  0.27 -0.99  0.20  1.19  0.02
		fBodyGyroStdY                   65 180 -0.65 0.36  -0.80   -0.69  0.28 -0.99  0.65  1.64  0.03
		fBodyGyroStdZ                   66 180 -0.66 0.34  -0.82   -0.69  0.24 -0.99  0.52  1.51  0.03
		fBodyGyroMeanFreqX              67 180 -0.10 0.15  -0.12   -0.11  0.16 -0.40  0.25  0.64  0.01
		fBodyGyroMeanFreqY              68 180 -0.17 0.18  -0.16   -0.16  0.19 -0.67  0.27  0.94  0.01
		fBodyGyroMeanFreqZ              69 180 -0.06 0.17  -0.05   -0.06  0.15 -0.51  0.38  0.88  0.01
		fBodyAccMagMean                 70 180 -0.54 0.45  -0.67   -0.58  0.45 -0.99  0.59  1.57  0.03
		fBodyAccMagStd                  71 180 -0.62 0.35  -0.65   -0.66  0.43 -0.99  0.18  1.17  0.03
		fBodyAccMagMeanFreq             72 180  0.08 0.14   0.08    0.08  0.14 -0.31  0.44  0.75  0.01
		fBodyAccJerkMagMean             73 180 -0.58 0.43  -0.79   -0.61  0.30 -0.99  0.54  1.53  0.03
		fBodyAccJerkMagStd              74 180 -0.60 0.41  -0.81   -0.64  0.27 -0.99  0.32  1.31  0.03
		fBodyAccJerkMagMeanFreq         75 180  0.16 0.14   0.17    0.16  0.18 -0.13  0.49  0.61  0.01
		fBodyGyroMagMean                76 180 -0.67 0.32  -0.77   -0.70  0.31 -0.99  0.20  1.19  0.02
		fBodyGyroMagStd                 77 180 -0.67 0.29  -0.77   -0.70  0.29 -0.98  0.24  1.22  0.02
		fBodyGyroMagMeanFreq            78 180 -0.04 0.18  -0.05   -0.04  0.18 -0.46  0.41  0.87  0.01
		fBodyGyroJerkMagMean            79 180 -0.76 0.26  -0.88   -0.79  0.17 -1.00  0.15  1.14  0.02
		fBodyGyroJerkMagStd             80 180 -0.77 0.25  -0.89   -0.81  0.15 -1.00  0.29  1.29  0.02
		fBodyGyroJerkMagMeanFreq        81 180  0.13 0.11   0.11    0.13  0.12 -0.18  0.43  0.61  0.01
		tBodyAccMeanGravityAngle        82 180  0.01 0.04   0.01    0.01  0.03 -0.16  0.13  0.29  0.00
		tBodyAccJerkGravityMeanAngle    83 180  0.00 0.04   0.00    0.00  0.03 -0.12  0.20  0.32  0.00
		tBodyGyroGravityMeanAngle       84 180  0.02 0.14   0.02    0.02  0.06 -0.39  0.44  0.83  0.01
		tBodyGyroJerkGravityMeanAngle   85 180 -0.01 0.07  -0.02   -0.01  0.07 -0.22  0.18  0.41  0.01
		gravityMeanAngleX               86 180 -0.52 0.48  -0.74   -0.62  0.14 -0.95  0.74  1.68  0.04
		gravityMeanAngleY               87 180  0.08 0.28   0.17    0.13  0.12 -0.87  0.42  1.30  0.02
		gravityMeanAngleZ               88 180 -0.04 0.23   0.01   -0.01  0.14 -0.87  0.39  1.26  0.02


###Subject
Index that indicates the subject number

###Activity
Activity that was measured, by type:

    1. WALKING
    2. WALKING_UPSTAIRS
    3. WALKING_DOWNSTAIRS
    4. SITTING
    5. STANDING
    6. LAYING

###tBodyAccMeanX
- Domain: time
- Mean of the body acceleration signal on the X axis.

###tBodyAccMeanY
- Domain: time
- Mean of the body acceleration signal on the Y axis.

###tBodyAccMeanZ
- Domain: time
- Mean of the body acceleration signal on the Z axis.

###tBodyAccStdX
- Domain: time
- Standard deviation of the body acceleration signal on the X axis.

###tBodyAccStdY
- Domain: time
- Standard deviation of the body acceleration signal on the Y axis.

###tBodyAccStdZ
- Domain: time
- Standard deviation of the body acceleration signal on the Z axis.

###tGravityAccMeanX
- Domain: time
- Mean of the gravity acceleration signal on the X axis.

###tGravityAccMeanY
- Domain: time
- Mean of the gravity acceleration signal on the Y axis.

###tGravityAccMeanZ
- Domain: time
- Mean of the gravity acceleration signal on the Z axis.

###tGravityAccStdX
- Domain: time
- Standard deviation of the gravity acceleration signal on the X axis.

###tGravityAccStdY
- Domain: time
- Standard deviation of the gravity acceleration signal on the Y axis.

###tGravityAccStdZ
- Domain: time
- Standard deviation of the gravity acceleration signal on the Z axis.

###tBodyAccJerkMeanX
- Domain: time
- Mean of the Jerk signal of the body acceleration signal on the X axis.

###tBodyAccJerkMeanY
- Domain: time
- Mean of the Jerk signal of the body acceleration signal on the Y axis.

###tBodyAccJerkMeanZ
- Domain: time
- Mean of the Jerk signal of the body acceleration signal on the Z axis.

###tBodyAccJerkStdX
- Domain: time
- Standard deviation of the Jerk signal of the gravity acceleration signal on the X axis.

###tBodyAccJerkStdY
- Domain: time
- Standard deviation of the Jerk signal of the gravity acceleration signal on the Y axis.

###tBodyAccJerkStdZ
- Domain: time
- Standard deviation of the Jerk signal of the gravity acceleration signal on the Z axis.

###tBodyGyroMeanX
- Domain: time
- Mean of the body's gyroscope on the X axis.

###tBodyGyroMeanY
- Domain: time
- Mean of the body's gyroscope on the Y axis.

###tBodyGyroMeanZ
- Domain: time
- Mean of the body's gyroscope on the Z axis.

###tBodyGyroStdX
- Domain: time
- Standard deviation of the body's gyroscope on the X axis.

###tBodyGyroStdY
- Domain: time
- Standard deviation of the body's gyroscope on the Y axis.

###tBodyGyroStdZ
- Domain: time
- Standard deviation of the body's gyroscope on the Z axis.

###tBodyGyroJerkMeanX
- Domain: time
- Mean of the Jerk signal of the body's gyroscope on the X axis.

###tBodyGyroJerkMeanY
- Domain: time
- Mean of the Jerk signal of the body's gyroscope on the Y axis.

###tBodyGyroJerkMeanZ
- Domain: time
- Mean of the Jerk signal of the body's gyroscope on the Z axis.

###tBodyGyroJerkStdX
- Domain: time
- Standard deviation of the Jerk signal of the body's gyroscope on the X axis.

###tBodyGyroJerkStdY
- Domain: time
- Standard deviation of the Jerk signal of the body's gyroscope on the Y axis.

###tBodyGyroJerkStdZ
- Domain: time
- Standard deviation of the Jerk signal of the body's gyroscope on the Z axis.

###tBodyAccMagMean
- Domain: time
- Mean of the magnitude of the body acceleration signal.

###tBodyAccMagStd
- Domain: time
- Standard deviation of the magnitude of the body acceleration signal.

###tGravityAccMagMean
- Domain: time
- Mean of the magnitude of the gravity acceleration signal.

###tGravityAccMagStd
- Domain: time
- Standard deviation of the magnitude of the gravity acceleration signal.

###tBodyAccJerkMagMean
- Domain: time
- Mean of the magnitude of the Jerk signal of the body acceleration signal.

###tBodyAccJerkMagStd
- Domain: time
- Standard deviation of the magnitude of the Jerk signal of the body acceleration signal.

###tBodyGyroMagMean
- Domain: time
- Mean of the magnitude of the body's gyroscope.

###tBodyGyroMagStd
- Domain: time
- Standard deviation of the magnitude of the body's gyroscope.

###tBodyGyroJerkMagMean
- Domain: time
- Mean of the magnitude of the Jerk signal of the body's gyroscope.

###tBodyGyroJerkMagStd
- Domain: time
- Standard deviation of the magnitude of the Jerk signal of the body's gyroscope.

###fBodyAccMeanX
- Domain: frequency
- Mean of the body acceleration signal on the X axis.

###fBodyAccMeanY
- Domain: frequency
- Mean of the body acceleration signal on the Y axis.

###fBodyAccMeanZ
- Domain: frequency
- Mean of the body acceleration signal on the Z axis.

###fBodyAccStdX
- Domain: frequency
- Standard deviation of the body acceleration signal on the X axis.

###fBodyAccStdY
- Domain: frequency
- Standard deviation of the body acceleration signal on the Y axis.

###fBodyAccStdZ
- Domain: frequency
- Standard deviation of the body acceleration signal on the Z axis.

###fBodyAccMeanFreqX
- Domain: frequency
- Weighted average (mean frequency) of the body acceleration signal on the X axis.

###fBodyAccMeanFreqY
- Domain: frequency
- Weighted average (mean frequency) of the body acceleration signal on the Y axis.

###fBodyAccMeanFreqZ
- Domain: frequency
- Weighted average (mean frequency) of the body acceleration signal on the Z axis.

###fBodyAccJerkMeanX
- Domain: frequency
- Mean of the Jerk signal of the body acceleration signal on the X axis.

###fBodyAccJerkMeanY
- Domain: frequency
- Mean of the Jerk signal of the body acceleration signal on the Y axis.

###fBodyAccJerkMeanZ
- Domain: frequency
- Mean of the Jerk signal of the body acceleration signal on the Z axis.

###fBodyAccJerkStdX
- Domain: frequency
- Standard deviation of the Jerk signal of the body acceleration signal on the X axis.

###fBodyAccJerkStdY
- Domain: frequency
- Standard deviation of the Jerk signal of the body acceleration signal on the Y axis.

###fBodyAccJerkStdZ
- Domain: frequency
- Standard deviation of the Jerk signal of the body acceleration signal on the Z axis.

###fBodyAccJerkMeanFreqX
- Domain: frequency
- Weighted average (mean frequency) of the Jerk signal of the body acceleration signal on the X axis.

###fBodyAccJerkMeanFreqY
- Domain: frequency
- Weighted average (mean frequency) of the Jerk signal of the body acceleration signal on the Y axis.

###fBodyAccJerkMeanFreqZ
- Domain: frequency
- Weighted average (mean frequency) of the Jerk signal of the body acceleration signal on the Z axis.

###fBodyGyroMeanX
- Domain: frequency
- Mean of the body's gyroscope on the X axis.

###fBodyGyroMeanY
- Domain: frequency
- Mean of the body's gyroscope on the Y axis.

###fBodyGyroMeanZ
- Domain: frequency
- Mean of the body's gyroscope on the Z axis.

###fBodyGyroStdX
- Domain: frequency
- Standard deviation of the body's gyroscope on the X axis.

###fBodyGyroStdY
- Domain: frequency
- Standard deviation of the body's gyroscope on the Y axis.

###fBodyGyroStdZ
- Domain: frequency
- Standard deviation of the body's gyroscope on the Z axis.

###fBodyGyroMeanFreqX
- Domain: frequency
- Weighted average (mean frequency) of the body's gyroscope on the X axis.

###fBodyGyroMeanFreqY
- Domain: frequency
- Weighted average (mean frequency) of the body's gyroscope on the Y axis.

###fBodyGyroMeanFreqZ
- Domain: frequency
- Weighted average (mean frequency) of the body's gyroscope on the Z axis.

###fBodyAccMagMean
- Domain: frequency
- Mean of the magnitude of the body acceleration signal.

###fBodyAccMagStd
- Domain: frequency
- Standard deviation of the magnitude of the body acceleration signal.

###fBodyAccMagMeanFreq
- Domain: frequency
- Weighted average (mean frequency) of the magnitude of the body acceleration signal.

###fBodyAccJerkMagMean
- Domain: frequency
- Mean of the magnitude of the Jerk signal of the body acceleration signal.

###fBodyAccJerkMagStd
- Domain: frequency
- Standard deviation of the magnitude of the Jerk signal of the body acceleration signal.

###fBodyAccJerkMagMeanFreq
- Domain: frequency
- Weighted average (mean frequency) of the magnitude of the Jerk signal of the body acceleration signal.

###fBodyGyroMagMean
- Domain: frequency
- Mean of the magnitude of the body's gyroscope.

###fBodyGyroMagStd
- Domain: frequency
- Standard deviation of the magnitude of the body's gyroscope.

###fBodyGyroMagMeanFreq
- Domain: frequency
- Weighted average (mean frequency) of the magnitude of the body's gyroscope.

###fBodyGyroJerkMagMean
- Domain: frequency
- Mean of the magnitude of the Jerk signal of the body's gyroscope.

###fBodyGyroJerkMagStd
- Domain: frequency
- Standard deviation of the magnitude of the Jerk signal of the body's gyroscope.

###fBodyGyroJerkMagMeanFreq
- Domain: frequency
- Weighted average (mean frequency) of the magnitude of the Jerk signal of the body's gyroscope.

###tBodyAccMeanGravityAngle
- Domain: time
- Mean of the angle between body acceleration and gravity acceleration.

###tBodyAccJerkGravityMeanAngle
- Domain: time
- Mean of the angle between the Jerk of the body acceleration and gravity acceleration.

###tBodyGyroGravityMeanAngle
- Domain: time
- Mean of the angle between body's gyroscope and gravity acceleration.

###tBodyGyroJerkGravityMeanAngle
- Domain: time
- Mean of the angle between the Jerk of the body's gyroscope and gravity acceleration.

###gravityMeanAngleX
- Mean of the angle of gravity on the X axis.

###gravityMeanAngleY
- Mean of the angle of gravity on the Y axis.

###gravityMeanAngleZ
- Mean of the angle of gravity on the Z axis.
