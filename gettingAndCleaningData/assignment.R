library(dplyr)
library(reshape2)
library(readr)
library(stringr)
#featureNames<-c("subjectid","activity","avg_tbodyacc_mean_x","avg_tbodyacc_mean_y","avg_tbodyacc_mean_z","avg_tbodyacc_stddev_x","avg_tbodyacc_stddev_y","avg_tbodyacc_stddev_z","avg_tgravityacc_mean_x","avg_tgravityacc_mean_y","avg_tgravityacc_mean_z","avg_tgravityacc_stddev_x","avg_tgravityacc_stddev_y","avg_tgravityacc_stddev_z","avg_tbodyaccjerk_mean_x","avg_tbodyaccjerk_mean_y","avg_tbodyaccjerk_mean_z","avg_tbodyaccjerk_stddev_x","avg_tbodyaccjerk_stddev_y","avg_tbodyaccjerk_stddev_z","avg_tbodygyro_mean_x","avg_tbodygyro_mean_y","avg_tbodygyro_mean_z","avg_tbodygyro_stddev_x","avg_tbodygyro_stddev_y","avg_tbodygyro_stddev_z","avg_tbodygyrojerk_mean_x","avg_tbodygyrojerk_mean_y","avg_tbodygyrojerk_mean_z","avg_tbodygyrojerk_stddev_x","avg_tbodygyrojerk_stddev_y","avg_tbodygyrojerk_stddev_z","avg_tbodyaccmag_mean","avg_tbodyaccmag_stddev","avg_tgravityaccmag_mean","avg_tgravityaccmag_stddev","avg_tbodyaccjerkmag_mean","avg_tbodyaccjerkmag_stddev","avg_tbodygyromag_mean","avg_tbodygyromag_stddev","avg_tbodygyrojerkmag_mean","avg_tbodygyrojerkmag_stddev","avg_fbodyacc_mean_x","avg_fbodyacc_mean_y","avg_fbodyacc_mean_z","avg_fbodyacc_stddev_x","avg_fbodyacc_stddev_y","avg_fbodyacc_stddev_z","avg_fbodyaccjerk_mean_x","avg_fbodyaccjerk_mean_y","avg_fbodyaccjerk_mean_z","avg_fbodyaccjerk_stddev_x","avg_fbodyaccjerk_stddev_y","avg_fbodyaccjerk_stddev_z","avg_fbodygyro_mean_x","avg_fbodygyro_mean_y","avg_fbodygyro_mean_z","avg_fbodygyro_stddev_x","avg_fbodygyro_stddev_y","avg_fbodygyro_stddev_z","avg_fbodyaccmag_mean","avg_fbodyaccmag_stddev","avg_fbodyaccjerkmag_mean","avg_fbodyaccjerkmag_stddev","avg_fbodygyromag_mean","avg_fbodygyromag_stddev","avg_fbodygyrojerkmag_mean","avg_fbodygyrojerkmag_stddev")
features <- read.csv("./features.txt",sep = " ",colClasses = c("integer","character"),header = F);
#select the features for the measurement we are interested in 
problemFeatures <-grepl("mean\\(\\)|std\\(\\)",features[,2])
extractedfeatures<-features[problemFeatures,2]
activitiesLabels <- c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")
featureNames<- c("subjectid","activity",extractedfeatures)
readTrainingDataSet <- function(){
        
        
        training <-read_fwf("./train/X_train.txt",fwf_widths(c(17,rep(16,559),15)),progress = T)
        subjects <-read.csv("./train/subject_train.txt",header = F)
        activities <- read.csv("./train/y_train.txt",header = F)
        #subset the training set selecting the appropriate columns
        training <- training[,problemFeatures]
        ## turn activities dataset into a factor variable
        activities <- factor(activities[[1]],labels=activitiesLabels)
        mergedSet <- cbind(subjects,activities,training)
        mergedSet<-dplyr::rename(mergedSet,subjectid=V1,activity=activities)
        invisible(mergedSet)
}

readTestDataset <-function(){
        
        
        test <-read_fwf("./test/X_test.txt",fwf_widths(c(17,rep(16,559),15)),progress = T)
        subjects <-read.csv("./test/subject_test.txt",header = F)
        activities <- read.csv("./test/y_test.txt",header = F)
        #subset the training set selecting the appropriate columns
        test <- test[,problemFeatures]
        ## turn activities dataset into a factor variable
        activities <- factor(activities[[1]],labels=activitiesLabels)
        mergedSet <- cbind(subjects,activities,test)
        mergedSet<-dplyr::rename(mergedSet,subjectid=V1,activity=activities)
        
        invisible(mergedSet)
        
}

getSigPart<- function(variable){
  tmp<-ifelse(grepl("Body",variable),"BODY","GRAVITY")
  as.factor(tmp)
}
getDomain<- function(variable){
  tmp<-ifelse(grepl("^t",variable),"T","F")
  as.factor(tmp)
}

getSigName<- function(variable){
  name<- paste()
  as.factor(name)
}


getMeasure<- function(variable){
  tmp<-ifelse(grepl("mean",variable),"MEAN","STDEV")
  as.factor(tmp)
}
getSigName<- function(variable){
  name<-str_extract(variable,"AccJerk-|AccMag-|GyroJerk-|Acc-|Gyro-|GyroJerk-|AccMag-|AccJerkMag-|GyroMag-|GyroJerkMag-")
  axis<-str_extract(variable,"X$|Y$|Z$")
  sigName<-ifelse(is.na(axis),paste(substr(name,1,nchar(name)-1)),paste(substr(name,1,nchar(name)-1),axis,sep = "_"))
  as.factor(sigName)
}

test<-readTestDataset()
train<- readTrainingDataSet()
complete <- rbind(train,test)
names(complete)<- featureNames
## melt the complete dataset to extract the observation for every feature
complete <- melt(complete,id.vars = c("subjectid","activity"),factorsAsStrings = T)
#get the mean of every feature observed in the dataset grouped by scompubjectid and activity
complete <- dcast(complete,subjectid+activity~variable,mean)
complete <- melt(complete,id.vars = c("subjectid","activity"))
complete<- dplyr::mutate(complete,domain=getDomain(variable),sigpart=getSigPart(variable),measure=getMeasure(variable),signame=getSigName(variable),mean=value)
complete$value<-complete$variable<-NULL
complete<-arrange(complete,subjectid,activity,signame,domain,sigpart,measure,mean)
#assign the correct names to the variables







