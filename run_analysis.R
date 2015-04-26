library(plyr)
library(reshape2)

#
# Constant filenames
#
train_filename <- "./UCI HAR Dataset/train/X_train.txt"
test_filename <- "./UCI HAR Dataset/test/X_test.txt"
features_filename <- "./UCI HAR Dataset/features.txt"
subject_train_filename <- "./UCI HAR Dataset/train/Subject_train.txt"
subject_test_filename <- "./UCI HAR Dataset/test/Subject_test.txt"
activity_train_filename <- "./UCI HAR Dataset/train/y_train.txt"
activity_test_filename <- "./UCI HAR Dataset/test/y_test.txt"
activity_label_filename <- "./UCI HAR Dataset/activity_labels.txt"

#
# Step 1: Merges the training and the test sets to create one data set.
#

# Read training and test data
train_data <- read.table(train_filename, header=FALSE)
test_data <- read.table(test_filename, header=FALSE)

# Merge data into one data set
combined_data <- rbind(train_data, test_data)

#
# Step 2: Extracts only the measurements on the mean and standard deviation for each measurement.
#

# Extract mean and standard deviation data
features_data <- read.table(features_filename, header=FALSE, stringsAsFactors=FALSE)
extract_features <- features_data[grep("mean|std", features_data[,2]),]
extract_data <- combined_data[,extract_features[,1]]

# Read subject data
subject_train_data <- read.table(subject_train_filename, header=FALSE)
subject_test_data <- read.table(subject_test_filename, header=FALSE)
subject_data <- rbind(subject_train_data, subject_test_data)

# Read activity data
activity_train_data <- read.table(activity_train_filename, header=FALSE)
activity_test_data <- read.table(activity_test_filename, header=FALSE)
activity_data <- rbind(activity_train_data, activity_test_data)

# Combine data sets together into one data set
extract_data <- cbind(extract_data, activity_data)
extract_data <- cbind(extract_data, subject_data)
names(extract_data) <- c(extract_features[ ,2], "Activity", "Subject")

#
# Step 3: Uses descriptive activity names to name the activities in the data set.
#

# Get descriptive activity labels from file
activity_labels_data <- read.table(activity_label_filename)

# Lookup and replace with descriptive activity names
extract_data$Activity <- as.factor(extract_data$Activity)
levels(extract_data$Activity) <- activity_labels_data$V2

# 
# Step 4: Appropriately labels the data set with descriptive variable names
#

# Relabel columns
names(extract_data) <- c(extract_features[ ,2], "Activity", "Subject")
names(extract_data) <- gsub("^t","Time",names(extract_data))
names(extract_data) <- gsub("^f","Frequency",names(extract_data))
names(extract_data) <- gsub('Acc',"Acceleration", names(extract_data))
names(extract_data) <- gsub("-mean..","Mean",names(extract_data))
names(extract_data) <- gsub("-std..","StandardDeviation",names(extract_data))
names(extract_data) <- gsub("-X","Xaxis",names(extract_data))
names(extract_data) <- gsub("-Y","Yaxis",names(extract_data))
names(extract_data) <- gsub("-Z","Zaxis",names(extract_data))
names(extract_data) <- gsub("Gyro","Gyroscope",names(extract_data))
names(extract_data) <- gsub("Mag","Magnitude",names(extract_data))

#
# Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#

tidy_data <- melt(extract_data, id.var = c("Subject", "Activity"))
tidy_mean_data = dcast(tidy_data , Subject + Activity ~ variable, mean)

# Write to output file
write.table(tidy_mean_data, "./tidy_mean_data.txt", row.names = FALSE)