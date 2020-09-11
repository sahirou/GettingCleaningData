

# rm(list = ls())

### Set working directory, Download and unzip raw data

# Project main directory named "project"
projectFolder <- 'project'

# Raw data will be stored in a folder named "data", inside "project" folder
rawDataFolder <- 'data'

# In the user home directory, create the 'project' directory if it does not exist
# go to user home directory
setwd('~')
# Create directories if necessary
if(!dir.exists(projectFolder)) {
  dir.create(file.path(projectFolder,rawDataFolder), recursive = TRUE)
}
# Go to "project" directory
setwd(projectFolder)

# Download raw data
zipFileName <- 'getdata_projectfiles_UCI HAR Dataset.zip'
zipFileUrl <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
download.file(
  url = zipFileUrl,
  destfile = file.path(rawDataFolder,zipFileName),
  mode = "wb")

# Unzip raw data
unzip(
  zipfile = file.path(rawDataFolder,zipFileName), 
  exdir = file.path(rawDataFolder), 
  overwrite = TRUE
)




### Read training and test sets to create one data set

# Raw data are unzipped and stored here
pathData = file.path(rawDataFolder, "UCI HAR Dataset")

# Read training data
x_train = read.table(file = file.path(pathData, "train", "X_train.txt"), header = FALSE)
y_train = read.table(file = file.path(pathData, "train", "y_train.txt"), header = FALSE)
subject_train = read.table(file = file.path(pathData, "train", "subject_train.txt"), header = FALSE)

# Read test data
x_test = read.table(file = file.path(pathData, "test", "X_test.txt"), header = FALSE)
y_test = read.table(file = file.path(pathData, "test", "y_test.txt"), header = FALSE)
subject_test = read.table(file = file.path(pathData, "test", "subject_test.txt"), header = FALSE)




### Label data set with descriptive variable names

# Read features data => contains descriptive column names
features = read.table(file = file.path(pathData, "features.txt"), header = FALSE)
# Order feature id, may not be necessary
features <- features[order(features$V1),]

# Label training data set with descriptive variable names
colnames(x_train) <- features$V2
colnames(y_train) <- "activity_id"
colnames(subject_train) <- "subject_id"

# Label test data set with descriptive variable names
colnames(x_test) = features$V2
colnames(y_test) = "activity_id"
colnames(subject_test) = "subject_id"



### Merge the training and the test sets to create one data set

# Merge training sets
train_data = cbind(y_train, subject_train, x_train)
# Merge test sets
test_data = cbind(y_test, subject_test, x_test)
# Merge training and test sets
data = rbind(train_data, test_data)

# any(is.na(data))

# Free some memory
rm(train_data,test_data,y_train, subject_train, x_train,y_test, subject_test, x_test);gc()




###  Extracts only the measurements on the mean and standard deviation for each measurement

variable_names = colnames(data)
variables_to_keep <- (grepl("activity_id" , variable_names) | grepl("subject_id" , variable_names) | grepl("mean" , variable_names) | grepl("std" , variable_names))
data <- data[,variables_to_keep]

# More readable names for extracted measurement variables
colnames(data) = gsub(pattern = '-mean', replacement = 'Mean', colnames(data))
colnames(data) = gsub(pattern = '-std', replacement = 'Std', colnames(data))
colnames(data) = gsub(pattern = '[-()]', replacement = '', colnames(data))




### Uses descriptive activity names to name the activities in the data set

# Read activity labels data => contains descriptive activity labels
activity_labels = read.table(file = file.path(pathData, "activity_labels.txt"), header = FALSE)

# Label activity_labels data set with descriptive variable names
colnames(activity_labels) <- c('activity_id','activity')

# Add descriptive activity names to name the activities in the data se
data = merge(data, activity_labels, by='activity_id', all.x=TRUE)
data <- data[,c(2,ncol(data),3:(ncol(data)-1))]




### Create tidy data set with the average of each variable for each activity and each subject
tidy_df <- aggregate(. ~subject_id + activity, data, mean)



# Write tidy data set to txt file
write.table(
  x= tidy_df, 
  file = "tidy_data.txt", 
  sep = ";",
  dec = ".", 
  row.names = FALSE,
  col.names = TRUE,
  fileEncoding = "utf-8"
)


#******************************


