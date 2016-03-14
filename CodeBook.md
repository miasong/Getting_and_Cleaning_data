### This code book describes the variables, the data, and any transformations or work performed to clean up the data. 

"subject": Identifier of the subjects who performed the activity for each window sample. Its range is from 1 to 30.

"activity": class labels with activity names

	- WALKING
	- WALKING_UPSTAIRS 
	- WALKING_DOWNSTAIRS
	- SITTING
	- STANDING
 	- LAYING

Note: Names of the featuers have been cleaned by removing non-character values ('-','()') and substituting "std" with "Std". 

66 features with mean and standard deviation values:

	- "tBodyAccmeanX" 
	- "tBodyAccmeanY" 
	- "tBodyAccmeanZ" 
	- "tBodyAccStdX" 
	- "tBodyAccStdY" 
	- "tBodyAccStdZ" 
	- "tGravityAccmeanX" 
	- "tGravityAccmeanY" 
	- "tGravityAccmeanZ" 
	- "tGravityAccStdX" 
	- "tGravityAccStdY" 
	- "tGravityAccStdZ" 
	- "tBodyAccJerkmeanX" 
	- "tBodyAccJerkmeanY" 
	- "tBodyAccJerkmeanZ" 
	- "tBodyAccJerkStdX" 
	- "tBodyAccJerkStdY" 
	- "tBodyAccJerkStdZ" 
	- "tBodyGyromeanX" 
	- "tBodyGyromeanY" 
	- "tBodyGyromeanZ" 
	- "tBodyGyroStdX" 
	- "tBodyGyroStdY" 
	- "tBodyGyroStdZ" 
	- "tBodyGyroJerkmeanX" 
	- "tBodyGyroJerkmeanY" 
	- "tBodyGyroJerkmeanZ" 
	- "tBodyGyroJerkStdX" 
	- "tBodyGyroJerkStdY" 
	- "tBodyGyroJerkStdZ" 
	- "tBodyAccMagmean" 
	- "tBodyAccMagStd" 
	- "tGravityAccMagmean" 
	- "tGravityAccMagStd" 
	- "tBodyAccJerkMagmean" 
	- "tBodyAccJerkMagStd" 
	- "tBodyGyroMagmean" 
	- "tBodyGyroMagStd" 
	- "tBodyGyroJerkMagmean" 
	- "tBodyGyroJerkMagStd" 
	- "fBodyAccmeanX" 
	- "fBodyAccmeanY" 
	- "fBodyAccmeanZ" 
	- "fBodyAccStdX" 
	- "fBodyAccStdY" 
	- "fBodyAccStdZ" 
	- "fBodyAccJerkmeanX" 
	- "fBodyAccJerkmeanY" 
	- "fBodyAccJerkmeanZ" 
	- "fBodyAccJerkStdX" 
	- "fBodyAccJerkStdY" 
	- "fBodyAccJerkStdZ" 
	- "fBodyGyromeanX" 
	- "fBodyGyromeanY" 
	- "fBodyGyromeanZ" 
	- "fBodyGyroStdX" 
	- "fBodyGyroStdY" 
	- "fBodyGyroStdZ" 
	- "fBodyAccMagmean" 
	- "fBodyAccMagStd" 
	- "fBodyBodyAccJerkMagmean" 
	- "fBodyBodyAccJerkMagStd" 
	- "fBodyBodyGyroMagmean" 
	- "fBodyBodyGyroMagStd" 
	- "fBodyBodyGyroJerkMagmean" 
	- "fBodyBodyGyroJerkMagStd"
