#Read in the "Train" data sets

setwd("c:/Users/ACLINN01/getclean/train")
X_train <- read.table("X_train.txt")
y_train <- read.table("y_train.txt")
subject_train <- read.table("subject_train.txt")

#Read in the "Test" data sets

setwd("c:/Users/ACLINN01/getclean/test")
X_test <- read.table("X_test.txt")
y_test <- read.table("y_test.txt")
subject_test <- read.table("subject_test.txt")


#Read in the documentation data sets

setwd("c:/Users/ACLINN01/getclean/documentation")
activity_labels <- read.table("activity_labels.txt")
features <- read.table("features.txt")



#add columns to the test and train data sets to identify row numbers
subject_test[,2]<-c(1:2947)
subject_train[,2]<-c(1:7352)
y_test[,2]<-c(1:2947)
y_train[,2]<-c(1:7352)



#---------------------------------------------------------------------
#4. Appropriately labels the data set with descriptive variable names.
#---------------------------------------------------------------------


#pull out the features labels
labels <- features[,2]
levels(droplevels(labels))

#apply these labels to the names of the variables in the X_test and _train data
colnames(X_test) <- labels
colnames(rbind(
features[grepl(".*mean.*",features$V2),]$V1,
features[grepl(".*std.*",features$V2),]$V1
)X_train) <- labels
colnames(y_test) <- c("y","id")
colnames(y_train) <- c("y","id")
colnames(subject_test) <- c("subject","id")
colnames(subject_train) <- c("subject","id")

#add IDs to the X data sets
X_test[,562]<-c(1:2947)
X_train[,562]<-c(1:7352)
colnames(X_test)[562] <- "id"
colnames(X_train)[562] <- "id"


#----------------------------------------------------------------
#1. Merges the training and the test sets to create one data set.
#----------------------------------------------------------------


#combine the X_, y_, and subject_ data sets for both test and train
test_xy <- merge(X_test, y_test, by = "id")
test_comb <- merge(test_xy, subject_test, by = "id")
train_xy <- merge(X_train, y_train, by = "id")
train_comb <- merge(train_xy, subject_train, by = "id")

#add an indicator for test vs. train to each data set
test_comb[,565] <- rep("test",2947)
train_comb[,565] <- rep("train",7352)
colnames(test_comb)[565] <- "group"
colnames(train_comb)[565] <- "group"

#Combines test and training data sets
findata <- rbind(test_comb, train_comb)


#--------------------------------------------------
#2. Extracts only the measurements on the mean and 
#   standard deviation for each measurement. 
#--------------------------------------------------


#find the feature #s that correspond with the mean and std dev variables
#then sort the combination of the two vectors. Finally, add one to each element
#to account for the "id" variable that is now the first column of "findata"
#as well as 563 to 565 for the 'activity, subject, and group.
usedcols <- sort(c(
       as.vector(features[grepl(".*mean.*",features$V2),]$V1),
       as.vector(features[grepl(".*std.*",features$V2),]$V1),
       562,563,564
))+1

#limit findata to only specified columns, which are 
#means, std devs, subject, and group (test/train)
ds <- findata[,usedcols]


#-------------------------------------------------------------------------
#3. Uses descriptive activity names to name the activities in the data set
#-------------------------------------------------------------------------

#add activity labels to data set
colnames(activity_labels) <- c("y","activity_name")
ds2 <- merge(ds,activity_labels)

#reorder so subject, group, and activity labels are the first columns
dataset <- cbind(ds2[,81:83],ds2[2:80])


#---------------------------------------------------------------
#5. Creates a second, independent tidy data set with the average 
#   of each variable for each activity and each subject. 
#---------------------------------------------------------------

#average each group/subject/activity combination
tidy <- aggregate(dataset[c(4:82)],by=list(dataset$group,dataset$subject,dataset$activity_name),"mean")
colnames(tidy)[1:3] <- c("group","subject","activity_name")

#write out CSV
setwd("c:/Users/ACLINN01/getclean")
write.csv(tidy, file = "tidy.csv")

