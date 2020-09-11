## Code Book

This code book describes the variables in the `tidy_data.txt` file.   
Raw data from this [link][rawLink] has been processed according to the indications given in the project description (see README.md) to achieve this result.

### Identifiers
 - `subject_id`, `integer` : the identifier of the subject
    > - 1 - 30  


 - `activity`, `character` : the activity performed by the subject when the measurements were taken

   >- `WALKING` : subject was walking during the measurement
   - `WALKING_UPSTAIRS` : subject was walking up a staircase during the measurement
   - `WALKING_DOWNSTAIRS` : subject was walking down a staircase during the measurement
   - `SITTING` : subject was sitting during the measurement
   - `STANDING` : subject was standing during the measurement
   - `LAYING` : subject was laying down during the measurement


### Measurements

- `79` `numeric` variables (list below) : `average` of  the corresponding measurement  for each activity and each subject.

  > - tBodyAccMeanX
 - tBodyAccMeanY
 - tBodyAccMeanZ
 - tBodyAccStdX
 - tBodyAccStdY
 - tBodyAccStdZ
 - tGravityAccMeanX
 - tGravityAccMeanY
 - tGravityAccMeanZ
 - tGravityAccStdX
 - tGravityAccStdY
 - tGravityAccStdZ
 - tBodyAccJerkMeanX
 - tBodyAccJerkMeanY
 - tBodyAccJerkMeanZ
 - tBodyAccJerkStdX
 - tBodyAccJerkStdY
 - tBodyAccJerkStdZ
 - tBodyGyroMeanX
 - tBodyGyroMeanY
 - tBodyGyroMeanZ
 - tBodyGyroStdX
 - tBodyGyroStdY
 - tBodyGyroStdZ
 - tBodyGyroJerkMeanX
 - tBodyGyroJerkMeanY
 - tBodyGyroJerkMeanZ
 - tBodyGyroJerkStdX
 - tBodyGyroJerkStdY
 - tBodyGyroJerkStdZ
 - tBodyAccMagMean
 - tBodyAccMagStd
 - tGravityAccMagMean
 - tGravityAccMagStd
 - tBodyAccJerkMagMean
 - tBodyAccJerkMagStd
 - tBodyGyroMagMean
 - tBodyGyroMagStd
 - tBodyGyroJerkMagMean
 - tBodyGyroJerkMagStd
 - fBodyAccMeanX
 - fBodyAccMeanY
 - fBodyAccMeanZ
 - fBodyAccStdX
 - fBodyAccStdY
 - fBodyAccStdZ
 - fBodyAccMeanFreqX
 - fBodyAccMeanFreqY
 - fBodyAccMeanFreqZ
 - fBodyAccJerkMeanX
 - fBodyAccJerkMeanY
 - fBodyAccJerkMeanZ
 - fBodyAccJerkStdX
 - fBodyAccJerkStdY
 - fBodyAccJerkStdZ
 - fBodyAccJerkMeanFreqX
 - fBodyAccJerkMeanFreqY
 - fBodyAccJerkMeanFreqZ
 - fBodyGyroMeanX
 - fBodyGyroMeanY
 - fBodyGyroMeanZ
 - fBodyGyroStdX
 - fBodyGyroStdY
 - fBodyGyroStdZ
 - fBodyGyroMeanFreqX
 - fBodyGyroMeanFreqY
 - fBodyGyroMeanFreqZ
 - fBodyAccMagMean
 - fBodyAccMagStd
 - fBodyAccMagMeanFreq
 - fBodyBodyAccJerkMagMean
 - fBodyBodyAccJerkMagStd
 - fBodyBodyAccJerkMagMeanFreq
 - fBodyBodyGyroMagMean
 - fBodyBodyGyroMagStd
 - fBodyBodyGyroMagMeanFreq
 - fBodyBodyGyroJerkMagMean
 - fBodyBodyGyroJerkMagStd
 - fBodyBodyGyroJerkMagMeanFreq


<!-- links -->
 [rawLink]: <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>
