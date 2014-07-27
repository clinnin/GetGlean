#run_analysis.R Description and Codebook

##Study Design


These data were collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the [site where the data was obtained:](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

[Raw Data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)



##Process


The X_test and X_train files do not have row ids, so these are added in processing so they will line up with their respective y_ and subject_ files representing activity type and individual subject IDs. Variable names, subject IDs, and activity names are added into the X_ data sets, as well as an indicator that describes whether the subject was in the test or train groups. THe test and train data sets are then combined, and only metrics including the description "mean" or "std" (representing the average or standard deviation) are included. This includes a number of "meanFreq" measures that represent weighted averages. Finally, averages are taken of each metric by subject (including whether they are train or test) and activity type.

##Code Book for file "tidy" created by "DataProcessing.R"

#	|Variable Name			|Complete Description
--------|:-----------------------------:|:-----------------------------------------------------------------------------------------------:|
|1|group|Group (train or test)|
|2|subject|Subject ID|
|3|activity_name|Activity Name|
|4|tBodyAcc-mean()-X|time - average - X axis - Body Accelleration|
|5|tBodyAcc-mean()-Y|time - average - Y axis - Body Accelleration|
|6|tBodyAcc-mean()-Z|time - average - Z axis - Body Accelleration|
|7|tBodyAcc-std()-X|time - standard deviation - X axis - Body Accelleration|
|8|tBodyAcc-std()-Y|time - standard deviation - Y axis - Body Accelleration|
|9|tBodyAcc-std()-Z|time - standard deviation - Z axis - Body Accelleration|
|10|tGravityAcc-mean()-X|time - average - X axis - Gravity Accelleration|
|11|tGravityAcc-mean()-Y|time - average - Y axis - Gravity Accelleration|
|12|tGravityAcc-mean()-Z|time - average - Z axis - Gravity Accelleration|
|13|tGravityAcc-std()-X|time - standard deviation - X axis - Gravity Accelleration|
|14|tGravityAcc-std()-Y|time - standard deviation - Y axis - Gravity Accelleration|
|15|tGravityAcc-std()-Z|time - standard deviation - Z axis - Gravity Accelleration|
|16|tBodyAccJerk-mean()-X|time - average - X axis - Body Accelleration - Linear|
|17|tBodyAccJerk-mean()-Y|time - average - Y axis - Body Accelleration - Linear|
|18|tBodyAccJerk-mean()-Z|time - average - Z axis - Body Accelleration - Linear|
|19|tBodyAccJerk-std()-X|time - standard deviation - X axis - Body Accelleration - Linear|
|20|tBodyAccJerk-std()-Y|time - standard deviation - Y axis - Body Accelleration - Linear|
|21|tBodyAccJerk-std()-Z|time - standard deviation - Z axis - Body Accelleration - Linear|
|22|tBodyGyro-mean()-X|time - average - X axis - Fast Fourier Transform - Body Gyro|
|23|tBodyGyro-mean()-Y|time - average - Y axis - Fast Fourier Transform - Body Gyro|
|24|tBodyGyro-mean()-Z|time - average - Z axis - Fast Fourier Transform - Body Gyro|
|25|tBodyGyro-std()-X|time - standard deviation - X axis - Fast Fourier Transform - Body Gyro|
|26|tBodyGyro-std()-Y|time - standard deviation - Y axis - Fast Fourier Transform - Body Gyro|
|27|tBodyGyro-std()-Z|time - standard deviation - Z axis - Fast Fourier Transform - Body Gyro|
|28|tBodyGyroJerk-mean()-X|time - average - X axis - Body Accelleration - Angular|
|29|tBodyGyroJerk-mean()-Y|time - average - Y axis - Body Accelleration - Angular|
|30|tBodyGyroJerk-mean()-Z|time - average - Z axis - Body Accelleration - Angular|
|31|tBodyGyroJerk-std()-X|time - standard deviation - X axis - Body Accelleration - Angular|
|32|tBodyGyroJerk-std()-Y|time - standard deviation - Y axis - Body Accelleration - Angular|
|33|tBodyGyroJerk-std()-Z|time - standard deviation - Z axis - Body Accelleration - Angular|
|34|tBodyAccMag-mean()|time - average - Overall - Fast Fourier Transform - Body Accelleration Linear Magnitude|
|35|tBodyAccMag-std()|time - standard deviation - Overall - Fast Fourier Transform - Body Accelleration Linear Magnitude|
|36|tGravityAccMag-mean()|time - average - Overall - Fast Fourier Transform - Gravity Accelleration Magnitude|
|37|tGravityAccMag-std()|time - standard deviation - Overall - Fast Fourier Transform - Gravity Accelleration Magnitude|
|38|tBodyAccJerkMag-mean()|time - average - Overall - Fast Fourier Transform - Body Accelleration Angular Magnitude|
|39|tBodyAccJerkMag-std()|time - standard deviation - Overall - Fast Fourier Transform - Body Accelleration Angular Magnitude|
|40|tBodyGyroMag-mean()|time - average - Overall - Fast Fourier Transform - Body Accelleration Magnitude|
|41|tBodyGyroMag-std()|time - standard deviation - Overall - Fast Fourier Transform - Body Accelleration Magnitude|
|42|tBodyGyroJerkMag-mean()|time - average - Overall - Fast Fourier Transform - Body Accelleration Linear Angular Magnitude|
|43|tBodyGyroJerkMag-std()|time - standard deviation - Overall - Fast Fourier Transform - Body Accelleration Linear Angular Magnitude|
|44|fBodyAcc-mean()-X|Frequency Domain Signal - average - X axis - Body Accelleration|
|45|fBodyAcc-mean()-Y|Frequency Domain Signal - average - Y axis - Body Accelleration|
|46|fBodyAcc-mean()-Z|Frequency Domain Signal - average - Z axis - Body Accelleration|
|47|fBodyAcc-std()-X|Frequency Domain Signal - standard deviation - X axis - Body Accelleration|
|48|fBodyAcc-std()-Y|Frequency Domain Signal - standard deviation - Y axis - Body Accelleration|
|49|fBodyAcc-std()-Z|Frequency Domain Signal - standard deviation - Z axis - Body Accelleration|
|50|fBodyAcc-meanFreq()-X|Frequency Domain Signal - weighted average - X axis - Gravity Accelleration|
|51|fBodyAcc-meanFreq()-Y|Frequency Domain Signal - weighted average - Y axis - Gravity Accelleration|
|52|fBodyAcc-meanFreq()-Z|Frequency Domain Signal - weighted average - Z axis - Gravity Accelleration|
|53|fBodyAccJerk-mean()-X|Frequency Domain Signal - average - X axis - Gravity Accelleration|
|54|fBodyAccJerk-mean()-Y|Frequency Domain Signal - average - Y axis - Gravity Accelleration|
|55|fBodyAccJerk-mean()-Z|Frequency Domain Signal - average - Z axis - Gravity Accelleration|
|56|fBodyAccJerk-std()-X|Frequency Domain Signal - standard deviation - X axis - Body Accelleration - Linear|
|57|fBodyAccJerk-std()-Y|Frequency Domain Signal - standard deviation - Y axis - Body Accelleration - Linear|
|58|fBodyAccJerk-std()-Z|Frequency Domain Signal - standard deviation - Z axis - Body Accelleration - Linear|
|59|fBodyAccJerk-meanFreq()-X|Frequency Domain Signal - weighted average - X axis - Body Accelleration - Linear|
|60|fBodyAccJerk-meanFreq()-Y|Frequency Domain Signal - weighted average - Y axis - Body Accelleration - Linear|
|61|fBodyAccJerk-meanFreq()-Z|Frequency Domain Signal - weighted average - Z axis - Body Accelleration - Linear|
|62|fBodyGyro-mean()-X|Frequency Domain Signal - average - X axis - Fast Fourier Transform - Body Gyro|
|63|fBodyGyro-mean()-Y|Frequency Domain Signal - average - Y axis - Fast Fourier Transform - Body Gyro|
|64|fBodyGyro-mean()-Z|Frequency Domain Signal - average - Z axis - Fast Fourier Transform - Body Gyro|
|65|fBodyGyro-std()-X|Frequency Domain Signal - standard deviation - X axis - Fast Fourier Transform - Body Gyro|
|66|fBodyGyro-std()-Y|Frequency Domain Signal - standard deviation - Y axis - Fast Fourier Transform - Body Gyro|
|67|fBodyGyro-std()-Z|Frequency Domain Signal - standard deviation - Z axis - Fast Fourier Transform - Body Gyro|
|68|fBodyGyro-meanFreq()-X|Frequency Domain Signal - weighted average - X axis - Body Accelleration - Angular|
|69|fBodyGyro-meanFreq()-Y|Frequency Domain Signal - weighted average - Y axis - Body Accelleration - Angular|
|70|fBodyGyro-meanFreq()-Z|Frequency Domain Signal - weighted average - Z axis - Body Accelleration - Angular|
|71|fBodyAccMag-mean()|Frequency Domain Signal - average - Overall - Body Accelleration - Angular|
|72|fBodyAccMag-std()|Frequency Domain Signal - standard deviation - Overall - Body Accelleration - Angular|
|73|fBodyAccMag-meanFreq()|Frequency Domain Signal - weighted average - Overall - Body Accelleration - Angular|
|74|fBodyBodyAccJerkMag-mean()|Frequency Domain Signal - average - Overall - Fast Fourier Transform - Body Accelleration Linear Magnitude|
|75|fBodyBodyAccJerkMag-std()|Frequency Domain Signal - standard deviation - Overall - Fast Fourier Transform - Body Accelleration Linear Magnitude|
|76|fBodyBodyAccJerkMag-meanFreq()|Frequency Domain Signal - weighted average - Overall - Fast Fourier Transform - Body Accelleration Linear Magnitude|
|77|fBodyBodyGyroMag-mean()|Frequency Domain Signal - average - Overall - Fast Fourier Transform - Body Accelleration Angular Magnitude|
|78|fBodyBodyGyroMag-std()|Frequency Domain Signal - standard deviation - Overall - Fast Fourier Transform - Body Accelleration Angular Magnitude|
|79|fBodyBodyGyroMag-meanFreq()|Frequency Domain Signal - weighted average - Overall - Fast Fourier Transform - Body Accelleration Angular Magnitude|
|80|fBodyBodyGyroJerkMag-mean()|Frequency Domain Signal - average - Overall - Fast Fourier Transform - Body Accelleration Linear Angular Magnitude|
|81|fBodyBodyGyroJerkMag-std()|Frequency Domain Signal - standard deviation - Overall - Fast Fourier Transform - Body Accelleration Linear Angular Magnitude|
|82|fBodyBodyGyroJerkMag-meanFreq()|Frequency Domain Signal - weighted average - Overall - Fast Fourier Transform - Body Accelleration Linear Angular Magnitude|
