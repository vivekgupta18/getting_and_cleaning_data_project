
library(dplyr)

# STEP 1

# Reading and merging data

# reading files in train folder
X_train <- read.table("train/X_train.txt")
subject_train <- read.table("train/subject_train.txt")
y_train <- read.table("train/y_train.txt")
# reading files in test folder
X_test<-read.table("test/X_test.txt")
subject_test <- read.table("test/subject_test.txt")
y_test <- read.table("test/y_test.txt")
# reading files in main folder
activity_labels <- read.table("activity_labels.txt")
features <- read.table("features.txt")

# Assigning column names
colnames(X_train) <- features[,2]
colnames(X_test) <- features[,2]

# Using descriptive activity names to name the activities in the data set
y_test<-merge(y_test,activity_labels)
y_test[,1]<-NULL
colnames(y_test) <- "activity"
y_train<-merge(y_train,activity_labels)
y_train[,1]<-NULL
colnames(y_train) <- "activity"

# Assigning column names
colnames(subject_test) <- "subject_id"
colnames(subject_train) <- "subject_id"

# Binding all data sets into one
test <- cbind(subject_test,y_test,X_test)
train <- cbind(subject_train,y_train,X_train)
test_train <- rbind(test,train)

# STEP 2

# cleaning column names
valid_column_names <- make.names(names=names(test_train), unique=TRUE, allow_ = TRUE)
colnames(test_train) <- valid_column_names

# Extracting only the measurements on the mean and standard deviation for each measurement
noFreq<-grep("meanFreq",names(test_train),value=TRUE)
test_train<-select(test_train,-one_of(noFreq))
test_train<-select(test_train,grep("mean|std|activity|subject_id",names(test_train)))

# Cleaning column names
names(test_train) <- gsub("\\.\\.\\.", "-", names(test_train))
names(test_train) <- gsub("\\.\\.", "", names(test_train))
names(test_train) <- gsub("\\.", "-", names(test_train))
names(test_train) <- gsub("Acc", "Accelerometer", names(test_train))
names(test_train) <- gsub("Gyro", "Gyroscope", names(test_train))
names(test_train) <- gsub("Mag", "Magnitude", names(test_train))
names(test_train) <- gsub("std", "standard_deviation", names(test_train))

# STEP 3

# Exporting the tidy data set
write.table(test_train, "tidy_data_set.txt", row.names = FALSE)

# STEP 4

aggregated_data_by_activity_and_subject_id <- aggregate(test_train[,3:ncol(test_train)],by=list(test_train$activity, test_train$subject_id),FUN="mean")
write.table(aggregated_data_by_activity_and_subject_id, "aggregated_data_by_activity_and_subject_id.txt", row.name=FALSE)

                             