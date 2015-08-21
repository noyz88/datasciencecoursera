# Dataset generation

the purpose of this file is to describe the series of transformations performed in the script assignment.R file on the original dataset in order to obtain the final dataset. The script assumes that the dataset has been downloaded and unzipped and that the unzipped directory has been set as the current working directory in your R session. The script then generate a tidy dataset in a file "tidydata.txt" that meets the principle of tidy data since :
 - each variable measured is held in one column
 - each different observation of a variable is in a different row
 
 ## Transformations 
 
 here you find the description of all transformations applied to the dataset in order to obtain the final dataset
 
 ### Select the features for the dataset
 before reading the dataset the following operations are performed:
 - read all the features of the datasets(from the file 'features.txt')
 - subset the features to get the features we are interested in for the dataset( a regexp is applied to the feature names to select just the ones with the substring "mean()" and "std()" in their name)
 - store the result in a logical vector which will be used later to subset the columns of the dataset
 - create a factor variable to hold all the lables for the activities performed ordered in the same way as described in the file "activity_labels.txt"
 
 
 ### Reading the dataset
 as a first step both the reading and training observation datasets  are read from the files along with the labels and subject ids associated with each dataset. Then the following operations are applied to each dataset:
 
 - subsetting the columns of the dataset with the logical vector computed in the step above
 - turn the activities for the dataset in a factor vector using the factor variable generated in the step above 
 - combine the observation dataset with the subject dataset and the activity dataset (this is perfomed with a **cbind** call since the rows are linked together by position)
 - assign a name to the variable holding the subjectid and the activity
 
 ### Merging the datasets
 
 once the training and the test dataset have been computed they are subsequently merged with a **rbind** call and the result is stored in a variable which then holds the whole dataset 
 
 ### Computing the values 
 
 in order to compute the mean values for each variable over each subject and activity the following operations are applied on the merged dataset:
 
 - melt the merged dataset with a call to the **melt** function  of the reshape package using the subjectid and activity as id for the melt function . this way we get a denormalized table with the names of each variable in   the third column of the table 

the output of this transformation looks something like this

|subjectid   | activity  | variable |      value|
|------------|-------|-----------|-----------|
|       12   |WALKING_UPSTAIRS   |    fBodyAccJerk-mean()-Y| -0.11764377|
|       24   |         LAYING          | fBodyGyro-std()-Y |-0.95719323|
|      26   |WALKING_UPSTAIRS     |     tBodyGyroMag-std() |-0.55273748|
|      14   |         SITTING     |     fBodyGyro-mean()-X |-0.91738699|
|      28  |WALKING_UPSTAIRS       |    tBodyAcc-mean()-Y |-0.01546291|
|      12 |WALKING_UPSTAIRS |fBodyBodyGyroJerkMag-mean() |-0.77912834|
|      14  |        SITTING     |  tBodyGyroJerk-std()-X |-0.98888952|
      
 
   
- compute the average of each value with a call to the **dcast** function of the reshape package to get the mean of all the values  over the subjectid and the activity. With this transformation we get the mean of each variable of the dataset that was chosen for this collection of data

After assigning the correct name to the variables as documented in the Codebook.md file, the output table is then written to a file "tidydata.txt" with a call to the **writetable** function    
 
 
 
 
 
 
     

