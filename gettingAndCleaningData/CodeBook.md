# Samsung Data Codebook

## Data Collection Description

Summary: This data collection and its corresponding features are derived from the dataset of the experiment described at <a href="http://archive.ics.uci.edu/ml/datasets/HumanActivityRecognitionUsingSmartphones"> http://archive.ics.uci.edu/ml/datasets/HumanActivityRecognitionUsingSmartphones</a>, you can find more information about the features in the README file of the original dataset. Particularly this dataset shows the average of the mean and the standard deviation values of each feature in the original dataset computed over each activity and each subject.

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
The assignment states to extract only the mean and average of the standard deviation values each feature in the original dataset .Therefore the criteria to select the features  in the original dataset was to take all the features which have the substring "mean()" and "std()" contained in their names. Moreover the variables identifying the subject performing the activity and the activity performed were added to the dataset. The data is presented in a wide form where e the average of the variables over the subjectid and the activity are stored in separate columns . For a more detailed  description of the original features  please refer to the README file of the original dataset. All the variables describing the avg values have been named according to the following pattern:

  - avg_{sig_name}_{measure}{_x|y|z}? where
    - signame : refers to the name of the signal the avg has been computed on( e.g tbodyacc,tgravityacc ecc)
    - measure : refers to the value estimated for the variable. Can be one of "mean" and "stddev" to denote respectively the mean and the standard deviation   
    - axis: the last part of the name if present denotes the axis component of the signal
  

## 


## Codebook

| Name     | Description | Values                                             |  
|----------|-------------   |  -----------------------------------------------|
|subjectid |  value identifying the subject performing the activity| integer range from 1-30  |
|activity  | categorical variable describing the activity performed|possible values are <ul><li>WALKING</li><li>WALKING_UPSTAIRS</li><li>WALKING_DOWNSTAIRS</li><li>SITTING</li><li>STANDING</li><li>LAYING</li></ul>|
|avg_tbodyacc_mean_x|average of the mean values of the x component of the signal tBodyAcc|range[-1,1] and unitless since all the features are normalized|
|avg_tbodyacc_mean_y|average of the mean values of the y component of the signal tBodyAcc|range[-1,1] and unitless since all the features are normalized|
|avg_tbodyacc_mean_z|average of the mean values of the z component of the signal tBodyAcc|range[-1,1] and unitless since all the features are normalized|
|avg_tbodyacc_stddev_x|average of the standard deviation values of the x component of the signal tBodyAcc|range[-1,1] and unitless since all the features are normalized|
|avg_tbodyacc_stddev_y|average of the standard deviation values of the y component of the signal tBodyAcc|range[-1,1] and unitless since all the features are normalized|
|avg_tbodyacc_stddev_z|average of the standard deviation  values of the z component of the signal tBodyAcc|range[-1,1] and unitless since all the features are normalized|
|avg_tgravityacc_mean_x|average of the mean values of the x component of the signal tGravityAcc|range[-1,1] and unitless since all the features are normalized|
|avg_tgravityacc_mean_y|average of the mean values of the y component of the signal tGravityAcc|range[-1,1] and unitless since all the features are normalized|
|avg_tgravityacc_mean_z|average of the mean values of the z component of the signal tGravityAcc|range[-1,1] and unitless since all the features are normalized  |
|avg_tgravityacc_stddev_x|average of the standard deviation values of the x component of the signal tGravityAcc|range[-1,1] and unitless since all the features are normalized|
|avg_tgravityacc_stddev_y|average of the standard deviation values of the y component of the signal tGravityAcc|range[-1,1] and unitless since all the features are normalized|
|avg_tgravityacc_stddev_z|average of the standard deviation  values of the z component of the signal tGravityAcc|range[-1,1] and unitless since all the features are normalized  |
|avg_tbodyaccjerk_mean_x|average of the  mean values of the x component of the signal tBodyAccJerk|range[-1,1] and unitless since all the features are normalized|
|avg_tbodyaccjerk_mean_y|average of the mean  values of the y component of the signal tBodyAccJerk|range[-1,1] and unitless since all the features are normalized|
|avg_tbodyaccjerk_mean_z|average of the  mean   values of the z component of the signal tBodyAccJerk|range[-1,1] and unitless since all the features are normalized|
|avg_tbodyaccjerk_stddev_x|average of the  standard deviation values of the x component of the signal tBodyAccJerk|range[-1,1] and unitless since all the features are normalized|
|avg_tbodyaccjerk_stddev_y|average of the standard deviation  values of the y component of the signal tBodyAccJerk|range[-1,1] and unitless since all the features are normalized|
|avg_tbodyaccjerk_stddev_z|average of the  standard deviation values of the z component of the signal tBodyAccJerk|range[-1,1] and unitless since all the features are normalized|
|avg_tbodygyro_mean_x|average of the mean values of the x component of the signal tBodyGyro|range[-1,1] and unitless since all the features are normalized|
|avg_tbodygyro_mean_y|average of the mean values of the y component of the signal tBodyGyro|range[-1,1] and unitless since all the features are normalized|
|avg_tbodygyro_mean_z|average of the  mean values of the z component of the signal tBodyGyro|range[-1,1] and unitless since all the features are normalized|
|avg_tbodygyro_stddev_x|average of the standard deviation values of the x component of the signal tBodyGyro|range[-1,1] and unitless since all the features are normalized|
|avg_tbodygyro_stddev_y|average of the standard deviation  values of the y component of the signal tBodyGyro|range[-1,1] and unitless since all the features are normalized|
|avg_tbodygyro_stddev_z|average of the standard deviation values of the z component of the signal tBodyGyro|range[-1,1] and unitless since all the features are normalized|
|avg_tbodygyrojerk_mean_x|average of the  mean values of the x component of the signal tBodyGyroJerk|range[-1,1] and unitless since all the features are normalized|
|avg_tbodygyrojerk_mean_y|average of the mean values of the y component of the signal tBodyGyroJerk|range[-1,1] and unitless since all the features are normalized|
|avg_tbodygyrojerk_mean_z|average of the  mean values of the z component of the signal tBodyGyroJerk|range[-1,1] and unitless since all the features are normalized|
|avg_tbodygyrojerk_stddev_x|average of the  standard deviation values of the x component of the signal tBodyGyroJerk|range[-1,1] and unitless since all the features are normalized|
|avg_tbodygyrojerk_stddev_y|average of the standard deviation values of the y component of the signal tBodyGyroJerk|range[-1,1] and unitless since all the features are normalized|
|avg_tbodygyrojerk_stddev_z|average of the  standard deviation  values of the z component of the signal tBodyGyroJerk|range[-1,1] and unitless since all the features are normalized|
|avg_tbodyaccmag_mean| average of the mean values of the the signal tBodyAccMag|range[-1,1] and unitless since all the features are normalized|
|avg_tbodyaccmag_stddev|  average of the standard deviation values of the the signal tBodyAccMag|range[-1,1] and unitless since all the features are normalized|
|avg_tgravityaccmag_mean| average of the mean values of the the signal tGravityAccMag|range[-1,1] and unitless since all the features are normalized|
|avg_tgravityaccmag_stddev| average of the standard deviation values the the signal tGravityAccMag|range[-1,1] and unitless since all the features are normalized|
|avg_tbodyaccjerkmag_mean|  average of the mean values of the the signal tBodyAccJerkMag|range[-1,1] and unitless since all the features are normalized|
|avg_tbodyaccjerkmag_stddev| average of the standard deviation values the the signal tBodyAccJerkMag|range[-1,1] and unitless since all the features are normalized|
|avg_tbodygyromag_mean|  average of the mean values of the the signal tBodyGyroMag|range[-1,1] and unitless since all the features are normalized|
|avg_tbodygyromag_stddev| average of the standard deviation values the the signal tBodyGyroMag|range[-1,1] and unitless since all the features are normalized|
|avg_tbodygyrojerkmag_mean|  average of the mean values of the the signal tBodyGyroJerkMag|range[-1,1] and unitless since all the features are normalized|
|avg_tbodygyrojerkmag_stddev| average of the standard deviation values the the signal tBodyGyroJerk|range[-1,1] and unitless since all the features are normalized|
|avg_fbodyacc_mean_x|average of the mean values of the x component of the signal fBodyAcc|range[-1,1] and unitless since all the features are normalized|
|avg_fbodyacc_mean_y|average of the mean  values of the y component of the signal fBodyAcc|range[-1,1] and unitless since all the features are normalized|
|avg_fbodyacc_mean_z|average of the mean deviation values of the z component of the signal fBodyAcc|range[-1,1] and unitless since all the features are normalized|
|avg_fbodyacc_stddev_x|average of the standard deviation values of the x component of the signal fBodyAcc|range[-1,1] and unitless since all the features are normalized|
|avg_fbodyacc_stddev_y|average of the standard deviation  values of the y component of the signal fBodyAcc|range[-1,1] and unitless since all the features are normalized|
|avg_fbodyacc_stddev_z|average of the standard deviation values of the z component of the signal fBodyAcc|range[-1,1] and unitless since all the features are normalized|
|avg_fbodyaccjerk_mean_x|average of the mean values of the x component of the signal fBodyAccJerk|range[-1,1] and unitless since all the features are normalized|
|avg_fbodyaccjerk_mean_y|average of the mean  values of the y component of the signal fBodyAccJerk|range[-1,1] and unitless since all the features are normalized|
|avg_fbodyaccjerk_mean_z|average of the mean deviation values of the z component of the signal fBodyAccJerk|range[-1,1] and unitless since all the features are normalized|
|avg_fbodyaccjerk_stddev_x|average of the standard deviation values of the x component of the signal fBodyAccJerk|range[-1,1] and unitless since all the features are normalized|
|avg_fbodyaccjerk_stddev_y|average of the standard deviation  values of the y component of the signal fBodyAccJerk|range[-1,1] and unitless since all the features are normalized|
|avg_fbodyaccjerk_stddev_z|average of the standard deviation values of the z component of the signal fBodyAccJerk|range[-1,1] and unitless since all the features are normalized|
|avg_fbodygyro_mean_x|average of the mean values of the x component of the signal fBodyGyro|range[-1,1] and unitless since all the features are normalized|
|avg_fbodygyro_mean_y|average of the mean  values of the y component of the signal fBodyGyro|range[-1,1] and unitless since all the features are normalized|
|avg_fbodygyro_mean_z|average of the mean deviation values of the z component of the signal fBodyGyro|range[-1,1] and unitless since all the features are normalized|
|avg_fbodygyro_stddev_x|average of the standard deviation values of the x component of the signal fBodyGyro|range[-1,1] and unitless since all the features are normalized|
|avg_fbodygyro_stddev_y|average of the standard deviation  values of the y component of the signal fBodyGyro|range[-1,1] and unitless since all the features are normalized|
|avg_fbodygyro_stddev_z|average of the standard deviation values of the z component of the signal fBodyGyro|range[-1,1] and unitless since all the features are normalized|
|avg_fbodyaccmag_mean|  average of the mean values of the the signal fBodyAccMag|range[-1,1] and unitless since all the features are normalized|
|avg_fbodyaccmag_stddev| average of the standard deviation values the the signal fBodyAccMag|range[-1,1] and unitless since all the features are normalized|
|avg_fbodyaccjerkmag_mean|  average of the mean values of the the signal fBodyAccJerkMag|range[-1,1] and unitless since all the features are normalized|
|avg_fbodyaccjerkmag_stddev| average of the standard deviation values the the signal fBodyAccJerkMag|range[-1,1] and unitless since all the features are normalized|
|avg_fbodygyromag_mean|  average of the mean values of the the signal fBodyGyroMag|range[-1,1] and unitless since all the features are normalized|
|avg_fbodygyromag_stddev| average of the standard deviation values the the signal fBodyGyroMag|range[-1,1] and unitless since all the features are normalized|
|avg_fbodygyrojerkmag_mean|  average of the mean values of the the signal fBodyGyroJerkMag|range[-1,1] and unitless since all the features are normalized|
|avg_fbodygyrojerkmag_stddev| average of the standard deviation values the the signal fBodyGyroJerkMag|range[-1,1] and unitless since all the features are normalized|