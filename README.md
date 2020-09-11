### Date created
September 11, 2020

### Getting and Cleaning Data Course Project
`v1.0`

<!-- ---------------------------------------------------------------------- -->

### Description

The purpose of this project is to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.
Below are the tasks performed by the R script.

- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement.
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names.
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


### Requirements
- [`R`][Rlink] installed
- [`RStudio`][RStudiolink] installed - not mandatory
- Raw data that are downloaded by the `run_analysis.R` script from this [`link`][rawLink]


### Files
- `run_analysis.R` - the main script that downloads the raw data and performs the requested analysis
- `tidy_data.txt` - final result obtained after the execution of the script `run_analysis.R`.
- `CodeBook.md` - describes the variables in  `tidy_data.txt` file.



 <!--  links -->

 [Rlink]: <https://www.r-project.org/>
 [RStudiolink]: <https://rstudio.com/>
 [rawLink]: <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>
