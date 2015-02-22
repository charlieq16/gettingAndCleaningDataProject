# CodeBook For The Tidy Dataset

## Introduction This dataset is generated as part of the Getting and Cleaning
Data Course Project with the goal of preparing a tidy dataset from a larger one that can be used later for analysis.

## Source
The data for this project comes from a project in the Center for Machine Learning and Intelligent Systems and the Univserity of California Irvine called the Human Activity Recognition Using Smartphones Data Set. This dataset is built from data obtained from 30 subjects using wrist -mounted smartphones with enbedded inertial sensors while they performed their normal daily activities (e.g. sleeping, walking, sitting, etc). More information on the project, and the original data source, can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

## Feature Selection

I refer you to the original project for a complete description behind the original dataset (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

To create the derived dataset we extact only the mean and standard deviation for each movement; this is per the spec of the assignment.

In short, for this derived dataset, these signals were used to estimate variables of the feature vector for each pattern:
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
The set of variables that were estimated (and kept for this assignment) from these signals are:

mean(): Mean value
std(): Standard deviation
Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean


## Data set information

This dataset contains the averages and standard deviation values from the original datasets organized into the averages.txt file. 

The transformation from the original dataset to the tidy data set is done
using the R script run_analysis.R 

run_analysis.R performs the transformation by doing the following:
* merge the test and training datasets into a single dataset
* extracts the average and standard deviation values
* provide descriptive (readable) names for the values
* organize the data into a single table
* write the resulting table to the averages.txt file
