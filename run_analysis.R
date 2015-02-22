library(plyr)

# construct a single data set
xTraining <- read.table("train/X_train.txt")
xTest <- read.table("test/X_test.txt")
xData <- rbind(xTraining, xTest)

yTraining <- read.table("train/Y_train.txt")
yTest <- read.table("test/Y_test.txt")
yData <- rbind(yTraining, yTest)

subjectTraining <- read.table("train/subject_train.txt")
subjectTest <- read.table("test/subject_test.txt")
subjectData <- rbind(subjectTraining, subjectTest)

# step 2: Extracts only the measurements on the mean and standard deviation 
# for each measurement
features <- read.table("features.txt")
featuresToKeep <- grep("-(mean|std)\\(\\)", features[, 2])
xData <- xData[, featuresToKeep]

# step 3: Uses descriptive activity names to name the activities in the data set
activities <- read.table("activity_labels.txt")
yData[,1] <- activities[yData[,1], 2]

# step 4: Appropriately labels the data set with descriptive variable names.
names(xData) <- features[featuresToKeep, 2]
names(yData) <- "activity"
names(subjectData) <- "subject"
allData <- cbind(xData, yData, subjectData)

# step 5: From the data set in step 4, creates a second, independent tidy 
# data set with the average of each variable for each activity and each 
# subject
averages <- ddply(allData, .(subject, activity), function(x) colMeans(x[, 1:66]))
write.table(averages, "averages.txt", row.name=FALSE)