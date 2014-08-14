Coursera - Data Science - Getting and Cleaning Data - project
=============================================================
Guido Gallopyn - August 2014

Data
=====

 
The features selected for this database come from Human Activity Recognition Using Smartphones Dataset Version 1.0 mentioned in publication [1].

For each record it is provided:
===============================

- A 66-feature vector with mean and standard deviation of time and frequency domain measurements. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The training and test portions of the dataset including subject IDs of who carried out the experiment, the activity labels, and 561 dimensional feature vectors, were merged.

Subsequently, the mean and standard deviation for each accelerometer measurement were retained together with the Subject ID. A descriptive activity name was added according to the codes in the data set (WALKING=1,WALKING_UPSTAIRS=2,WALKING_DOWNSTAIRS=3,SITTING=4,STANDING=5, LAYING=6). 

Descriptive variable names were added by cleaning up the feature names in the original dataset by removing punctuation characters [-,()] and providing consistent capitalization of cancatenated words. e.g  fBodyBodyGyroJerkMagStd

Finaly a tidy data set was constructed with the average of each variable for each activity and each subject. 

The list variables in each observation of the data set includes:  

- Activity: activity label. (WALKING,WALKINGUPSTAIRS,WALKINGDOWNSTAIRS,SITTING,STANDING, LAYING). 
- Subject:  An identifier of the subject who carried out the experiment.
- tBodyAccMeanXYZ
- tGravityAccMenXYZ
- tBodyAccJerkmeanXYZ
- tBodyGyroMeanXYZ
- tBodyGyroJerkMeanXYZ
- tBodyAccMagMean
- tGravityAccMagmean
- tBodyAccJerkMagmean
- tBodyGyroMagMean
- tBodyGyroJerkMagMean
- fBodyAccmeanXYZ
- fBodyAccJerkmeanXYZ
- fBodyGyromeanXYZ
- fBodyAccMagmean
- fBodyAccJerkMagMean
- fBodyGyroMagMean
- fBodyGyroJerkMagMean

In addition there are the same varriable names as above with Mean substituted with Std 

Note: 'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


References:
===========

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012