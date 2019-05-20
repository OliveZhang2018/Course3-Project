library(dplyr)

## download project data package
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

zipfile <- "project.zip"

# check, download, and unzip project package
if(!file.exists(zipfile)){
  download.file(url, zipfile, method = "curl")
}
if(!file.exists("UCI HAR Dataset")){
  unzip(zipfile)
}
## merge training and test sets (task1)
# load training set
subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

trainset <- cbind(subject, X_train, y_train)

# load test set
subject2 <- read.table("./UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

testset <- cbind(subject2, X_test, y_test)

# merge & change variable types
data <- rbind(trainset,testset)

# initial variable names
features <- read.table("./UCI HAR Dataset/features.txt")
vars2 <- as.character(features$V2)
names(data) <- c("subjectid", vars2, "activity")

data$activity <- as.character(data$activity)  

# save merged data
write.table(data, file = "MergedData.txt", row.names = FALSE)

## extract mean and std.dev for each measurement (task 2)
target <- grep("mean|std",names(data))
totalvar <- length(names(data))

extracteddata <- data[,c(1,target,totalvar)]

## name the activities (task 3)

extracteddata$activity[extracteddata$activity == "1"] <- "WALKING"
extracteddata$activity[extracteddata$activity == "2"] <- "WALKING_UPSTAIRS"
extracteddata$activity[extracteddata$activity == "3"] <- "WALKING_DOWNSTAIRS"
extracteddata$activity[extracteddata$activity == "4"] <- "SITTING"
extracteddata$activity[extracteddata$activity == "5"] <- "STANDING"
extracteddata$activity[extracteddata$activity == "6"] <- "LAYING"

extracteddata$activity <- as.factor(extracteddata$activity)
## name variables (task 4)
names(extracteddata) <- gsub("\\(|\\)|\\-","",names(extracteddata))
names(extracteddata) <- gsub("BodyBody","Body",names(extracteddata))
names(extracteddata) <- gsub("Acc","Accelerometer",names(extracteddata))
names(extracteddata) <- gsub("Mag","Magnitude",names(extracteddata))
names(extracteddata) <- gsub("Gyro","Gyroscope",names(extracteddata))
names(extracteddata) <- gsub("mean","Mean",names(extracteddata))
names(extracteddata) <- gsub("std","STD",names(extracteddata))
names(extracteddata) <- gsub("Freq","Frequency",names(extracteddata))

## create a second, independent tidy data set (task 5)
## with the average of each variable for each activity and each subject
endindex <- length(names(extracteddata))

targetname <- names(extracteddata)[2:(endindex-1)]

data2 <- summarise_at(group_by(extracteddata, subjectid, activity), 
                            vars(targetname),mean)
write.table(data2, file = "meanbyactivityandsubject.txt", row.names = FALSE)
