# CodeBook

This is a code book code book that describes the variables and transformation work that was performed to clean up the data.

## Transformation and Intermediate data
- **feature_names** - The file `features.txt` was read and parsed into this data frame. This was used to insert friendly labels when reading the dataset.
- **activity_label** - The file `activity_labels.txt` was read and parsed into this data frame. This was used to name activity in the final data set.
- **feature_all** - This data table contains all of the test `feature_test` and training `feature_train` data set combined together.
- **extracted** - This data table contains only mean and standard deviation variables


## Variables in tidy data
- `subject` - An id denoting the subject which carried out the test. This has range 1-30
- `activity` - A string containing either of the following values
  - WALKING
  - WALKING_UPSTAIRS
  - WALKING_DOWNSTAIRS
  - SITTING
  - STANDING
  - LAYING 
- Other variables which are either a mean or a standard deviation and part of output
	- tBodyAcc-mean()-X
	- tBodyAcc-mean()-Y
	- tBodyAcc-mean()-Z
	- tBodyAcc-std()-X        
	- tBodyAcc-std()-Y
	- tBodyAcc-std()-Z
	- tGravityAcc-mean()-X
	- tGravityAcc-mean()-Y
	- tGravityAcc-mean()-Z
	- tGravityAcc-std()-X
	- tGravityAcc-std()-Y
	- tGravityAcc-std()-Z
	- tBodyAccJerk-mean()-X
	- tBodyAccJerk-mean()-Y
	- tBodyAccJerk-mean()-Z
	- tBodyAccJerk-std()-X       
	- tBodyAccJerk-std()-Y
	- tBodyAccJerk-std()-Z
	- tBodyGyro-mean()-X
	- tBodyGyro-mean()-Y        
	- tBodyGyro-mean()-Z
	- tBodyGyro-std()-X
	- tBodyGyro-std()-Y
	- tBodyGyro-std()-Z
	- tBodyGyroJerk-mean()-X
	- tBodyGyroJerk-mean()-Y
	- tBodyGyroJerk-mean()-Z
	- tBodyGyroJerk-std()-X
	- tBodyGyroJerk-std()-Y
	- tBodyGyroJerk-std()-Z
	- tBodyAccMag-mean()
	- tBodyAccMag-std()
	- tGravityAccMag-mean()
	- tGravityAccMag-std()
	- tBodyAccJerkMag-mean()
	- tBodyAccJerkMag-std()     
	- tBodyGyroMag-mean()
	- tBodyGyroMag-std()
	- tBodyGyroJerkMag-mean()
	- tBodyGyroJerkMag-std()
	- fBodyAcc-mean()-X
	- fBodyAcc-mean()-Y
	- fBodyAcc-mean()-Z
	- fBodyAcc-std()-X      
	- fBodyAcc-std()-Y
	- fBodyAcc-std()-Z
	- fBodyAccJerk-mean()-X
	- fBodyAccJerk-mean()-Y
	- fBodyAccJerk-mean()-Z
	- fBodyAccJerk-std()-X
	- fBodyAccJerk-std()-Y
	- fBodyAccJerk-std()-Z
	- fBodyGyro-mean()-X
	- fBodyGyro-mean()-Y
	- fBodyGyro-mean()-Z
	- fBodyGyro-std()-X
	- fBodyGyro-std()-Y
	- fBodyGyro-std()-Z
	- fBodyAccMag-mean()
	- fBodyAccMag-std()
	- fBodyBodyAccJerkMag-mean()
	- fBodyBodyAccJerkMag-std()
	- fBodyBodyGyroMag-mean()
	- fBodyBodyGyroMag-std()
	- fBodyBodyGyroJerkMag-mean()
	- fBodyBodyGyroJerkMag-std()
  
  
