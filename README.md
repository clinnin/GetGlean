GetGlean
========
#run_analysis.R Readme

##Study Design


These data were collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the [site where the data was obtained:](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

[Raw Data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)



##Process


The X_test and X_train files do not have row ids, so these are added in processing so they will line up with their respective y_ and subject_ files representing activity type and individual subject IDs. Variable names, subject IDs, and activity names are added into the X_ data sets, as well as an indicator that describes whether the subject was in the test or train groups. THe test and train data sets are then combined, and only metrics including the description "mean" or "std" (representing the average or standard deviation) are included. This includes a number of "meanFreq" measures that represent weighted averages. Finally, averages are taken of each metric by subject (including whether they are train or test) and activity type.
