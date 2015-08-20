# Samsung Data Codebook

## Data Collection Description

Summary: This data collection and its corresponding features are derived from the dataset of the experiment described at <a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"> http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones</a>, you can find more information about the features in the README file of the original dataset. Particularly this dataset shows the average of the mean and average of the standard deviation values each feature in the original dataset for each activity and each subject.

## Sources
The original dataset used to generate this collection  can be downloaded from <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ">https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip</a>.
The relevant files used to generate the data collection are:

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.


## Feature Selection
The assignment states to extract only the mean and average of the standard deviation values each feature in the original dataset .Therefore all the variables in the original dataset which have the substring "mean()" and "std()" contained in their names have been selected . Moreover i have selected the variables identifying the subject performing the activity and the activity performed . For a more detailed  description of the original features  please refer to the README file of the original dataset


## 


## Codebook

| Name     | Description | Values                                             |  
|----------|-------------   |  -----------------------------------------------|
|subjectid |  value identifying the subject performing the activity| integer range from 1-30  |
|activity  | categorical variable describing the activity performed|possible values are <ul><li>WALKING</li><li>WALKING_UPSTAIRS</li><li>WALKING_DOWNSTAIRS</li><li>SITTING</li><li>STANDING</li><li>LAYING</li></ul>|
|avg_tbodyacc_mean_x|average of the mean values of the x component of the signal tBodyAcc|value expressed in standard gravity units 'g'|
|avg_tbodyacc_mean_y|average of the mean values of the y component of the signal tBodyAcc|value expressed in standard gravity units 'g'|
|avg_tbodyacc_mean_z|average of the mean values of the z component of the signal tBodyAcc|value expressed in standard gravity units 'g'|
|avg_tbodyacc_stddev_x|average of the standard deviation values of the x component of the signal tBodyAcc|value expressed in standard gravity units 'g'|
|avg_tbodyacc_stddev_y|average of the standard deviation values of the y component of the signal tBodyAcc|value expressed in standard gravity units 'g'|
|avg_tbodyacc_stddev_z|average of the standard deviation  values of the z component of the signal tBodyAcc|value expressed in standard gravity units 'g'|
|avg_tgravityacc_mean_x|average of the mean values of the x component of the signal tGravityAcc|value expressed in standard   gravity units 'g'|
|avg_tgravityacc_mean_y|average of the mean values of the y component of the signal tGravityAcc|value expressed in standard gravity units 'g'|
|avg_tgravityacc_mean_z|average of the mean values of the z component of the signal tGravityAcc|value expressed in standard gravity units 'g'  |
|avg_tgravityacc_stddev_x|average of the standard deviation values of the x component of the signal tGravityAcc|value expressed in standard   gravity units 'g'|
|avg_tgravityacc_stddev_y|average of the standard deviation values of the y component of the signal tGravityAcc|value expressed in standard gravity units 'g'|
|avg_tgravityacc_stddev_z|average of the standard deviation  values of the z component of the signal tGravityAcc|value expressed in standard gravity units 'g'  |
|avg_tbodyaccjerk_mean_x|average of the  mean values of the x component of the signal tBodyAccJerk|value expressed in m/s<sup>3</sup>|
|avg_tbodyaccjerk_mean_y|average of the mean  values of the y component of the signal tBodyAccJerk|value expressed in m/s<sup>3</sup>|
|avg_tbodyaccjerk_mean_z|average of the  mean   values of the z component of the signal tBodyAccJerk|value expressed in m/s<sup>3</sup>|
|avg_tbodyaccjerk_stddev_x|average of the  standard deviation values of the x component of the signal tBodyAccJerk|value expressed in m/s<sup>3</sup>|
|avg_tbodyaccjerk_stddev_y|average of the standard deviation  values of the y component of the signal tBodyAccJerk|value expressed in m/s<sup>3</sup>|
|avg_tbodyaccjerk_stddev_z|average of the  standard deviation values of the z component of the signal tBodyAccJerk|value expressed in m/s<sup>3</sup>|
|avg_tbodygyro_mean_x|average of the mean values of the x component of the signal tBodyGyro|value expressed in radians/second|
|avg_tbodygyro_mean_y|average of the mean values of the y component of the signal tBodyGyro|value expressed in radians/second|
|avg_tbodygyro_mean_z|average of the  mean values of the z component of the signal tBodyGyro|value expressed in radians/second|
|avg_tbodygyro_stddev_x|average of the standard deviation values of the x component of the signal tBodyGyro|value expressed in radians/second|
|avg_tbodygyro_stddev_y|average of the standard deviation  values of the y component of the signal tBodyGyro|value expressed in radians/second|
|avg_tbodygyro_stddev_z|average of the standard deviation values of the z component of the signal tBodyGyro|value expressed in radians/second|
|avg_tbodygyrojerk_mean_x|average of the  mean values of the x component of the signal tBodyGyroJerk|value expressed in m/s<sup>3</sup>|
|avg_tbodygyrojerk_mean_y|average of the mean values of the y component of the signal tBodyGyroJerk|value expressed in m/s<sup>3</sup>|
|avg_tbodygyrojerk_mean_z|average of the  mean values of the z component of the signal tBodyGyroJerk|value expressed in m/s<sup>3</sup>|
|avg_tbodygyrojerk_stddev_x|average of the  standard deviation values of the x component of the signal tBodyGyroJerk|value expressed in m/s<sup>3</sup>|
|avg_tbodygyrojerk_stddev_y|average of the standard deviation values of the y component of the signal tBodyGyroJerk|value expressed in m/s<sup>3</sup>|
|avg_tbodygyrojerk_stddev_z|average of the  standard deviation  values of the z component of the signal tBodyGyroJerk|value expressed in m/s<sup>3</sup>|
|avg_tbodyaccmag_mean| average of the mean values of the the signal tBodyAccMag|value calculated as the Euclidean norm of the signal tBodyAcc|
|avg_tbodyaccmag_stddev|  average of the standard deviation values of the the signal tBodyAccMag|value calculated as the Euclidean norm of the signal tBodyAcc|
|avg_tgravityaccmag_mean| average of the mean values of the the signal tGravityAccMag|value calculated as the Euclidean norm of the signal tGravityAcc|
|avg_tgravityaccmag_stddev| average of the standard deviation values the the signal tGravityAccMag|value calculated as the Euclidean norm of the signal tGravityAcc|
|avg_tbodyaccjerkmag_mean|  average of the mean values of the the signal tBodyAccJerkMag|value calculated as the Euclidean norm of the signal tBodyAccJerk|
|avg_tbodyaccjerkmag_stddev| average of the standard deviation values the the signal tBodyAccJerkMag|value calculated as the Euclidean norm of the signal tBodyAccJerk|
|avg_tbodygyromag_mean|  average of the mean values of the the signal tBodyGyroMag|value calculated as the Euclidean norm of the signal tBodyGyro|
|avg_tbodygyromag_stddev| average of the standard deviation values the the signal tBodyGyroMag|value calculated as the Euclidean norm of the signal tBodyGyro|
|avg_tbodygyrojerkmag_mean|  average of the mean values of the the signal tBodyGyroJerkMag|value calculated as the Euclidean norm of the signal tBodyGyroJerk|
|avg_tbodygyrojerkmag_stddev| average of the standard deviation values the the signal tBodyGyroJerk|value calculated as the Euclidean norm of the signal tBodyGyroJerk|
|avg_fbodyacc_mean_x|average of the mean values of the x component of the signal fBodyAcc|value expressed in standard gravity units 'g'|
|avg_fbodyacc_mean_y|average of the mean  values of the y component of the signal fBodyAcc|value expressed in standard gravity units 'g'|
|avg_fbodyacc_mean_z|average of the mean deviation values of the z component of the signal fBodyAcc|value expressed in standard gravity units 'g'|
|avg_fbodyacc_stddev_x|average of the standard deviation values of the x component of the signal fBodyAcc|value expressed in standard gravity units 'g'|
|avg_fbodyacc_stddev_y|average of the standard deviation  values of the y component of the signal fBodyAcc|value expressed in standard gravity units 'g'|
|avg_fbodyacc_stddev_z|average of the standard deviation values of the z component of the signal fBodyAcc|value expressed in standard gravity units 'g'|
|avg_fbodyaccjerk_mean_x|average of the mean values of the x component of the signal fBodyAccJerk|value expressed in m/s<sup>3</sup>|
|avg_fbodyaccjerk_mean_y|average of the mean  values of the y component of the signal fBodyAccJerk|value expressed in m/s<sup>3</sup>|
|avg_fbodyaccjerk_mean_z|average of the mean deviation values of the z component of the signal fBodyAccJerk|value expressed in m/s<sup>3</sup>|
|avg_fbodyaccjerk_stddev_x|average of the standard deviation values of the x component of the signal fBodyAccJerk|value expressed in m/s<sup>3</sup>|
|avg_fbodyaccjerk_stddev_y|average of the standard deviation  values of the y component of the signal fBodyAccJerk|value expressed in m/s<sup>3</sup>|
|avg_fbodyaccjerk_stddev_z|average of the standard deviation values of the z component of the signal fBodyAccJerk|value expressed in m/s<sup>3</sup>|
|avg_fbodygyro_mean_x|average of the mean values of the x component of the signal fBodyGyro|value expressed in radians/second|
|avg_fbodygyro_mean_y|average of the mean  values of the y component of the signal fBodyGyro|value expressed in radians/second|
|avg_fbodygyro_mean_z|average of the mean deviation values of the z component of the signal fBodyGyro|value expressed in radians/second|
|avg_fbodygyro_stddev_x|average of the standard deviation values of the x component of the signal fBodyGyro|value expressed in radians/second|
|avg_fbodygyro_stddev_y|average of the standard deviation  values of the y component of the signal fBodyGyro|value expressed in radians/second|
|avg_fbodygyro_stddev_z|average of the standard deviation values of the z component of the signal fBodyGyro|value expressed in radians/second|
|avg_fbodyaccmag_mean|  average of the mean values of the the signal fBodyAccMag|value calculated as the Euclidean norm of the signal tBodyGyroJerk|
|avg_fbodyaccmag_stddev| average of the standard deviation values the the signal fBodyAccMag|value calculated as the Euclidean norm of the signal fBodyAccMag|
|avg_fbodyaccjerkmag_mean|  average of the mean values of the the signal fBodyAccJerkMag|value calculated as the Euclidean norm of the signal fBodyAccJerk|
|avg_fbodyaccjerkmag_stddev| average of the standard deviation values the the signal fBodyAccJerkMag|value calculated as the Euclidean norm of the signal fBodyAccJerk|
|avg_fbodygyromag_mean|  average of the mean values of the the signal fBodyGyroMag|value calculated as the Euclidean norm of the signal fBodyGyro|
|avg_fbodygyromag_stddev| average of the standard deviation values the the signal fBodyGyroMag|value calculated as the Euclidean norm of the signal fBodyGyro|
|avg_fbodygyrojerkmag_mean|  average of the mean values of the the signal fBodyGyroJerkMag|value calculated as the Euclidean norm of the signal fBodyGyroJerk|
|avg_fbodygyrojerkmag_stddev| average of the standard deviation values the the signal fBodyGyroJerkMag|value calculated as the Euclidean norm of the signal fBodyGyroJerk|











