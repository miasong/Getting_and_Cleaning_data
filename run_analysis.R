## run_analysis.R

# Download and uzip the source file.
if(!file.exists(data)){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="./data/CourseProject.zip", method="curl")
unzip("CourseProject.zip")


# Import training data sets
trainSubject <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
trainY <- read.table("./data/UCI HAR Dataset/train/y_train.txt", col.names = "activity")
trainX <- read.table("./data/UCI HAR Dataset/train/X_train.txt")


# Import test data sets
testSubject <- read.table("./data/UCI HAR Dataset/test/subject_test.txt",col.names = "subject")
testY <- read.table("./data/UCI HAR Dataset/test/y_test.txt",col.names = "activity")
testX <- read.table("./data/UCI HAR Dataset/test/X_test.txt")


# Create combined activity data set, label data set, and subject data set. 
Xcombined <- rbind(trainX, testX)
Ycombined <- rbind(trainY, testY)
Scombined <- rbind(trainSubject, testSubject)


# Extract only the measurements on the mean and standard deviation for each measurement.
features <- read.table("./data/UCI HAR Dataset/features.txt")
features[,2] <- gsub("-","", gsub("\\()","",gsub("std","Std",features[,2])))
ftExtracted <- grep("mean[^F]|mean$|Std", features[,2]) 
Xextracted <- Xcombined[,ftExtracted]


# Use descriptive activity names to name the activities in the data set
activityLabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
Ycombined[,1] <- activityLabels[Ycombined[,1],2]


# Appropriately labels the data set with descriptive variable names.
names(Xextracted) <- features[ftExtracted,2]
mergedData <- cbind(Xextracted, Scombined,Ycombined)


# Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidyData <- ddply(mergedData, .(subject,activity), function(x) colMeans(x[,1:66],na.rm = TRUE))
write.table(tidyData, "tidyData.txt", row.names = FALSE)
