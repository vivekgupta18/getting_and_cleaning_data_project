## Introduction 

Code book describes the variables, the data, and transformations

## Data and files

Data being transformed come from project http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
from the file https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

script for transformation is "run_analysis.R"

"tidy_data_set.txt" is the output file from transformation
"aggregated_data_by_activity_and_subject_id.txt" is output of aggregating data from above tidy data set

## Variables in the file tidy_data_set.txt

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. 

'f' at the beginning stands for 'frequency'  
't' at the beginning stands for 'time'  
'Body' means accelerations signals separated into body  
'Gravity' means accelerations signals separated into gravity  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions  
Variables contain only means and standard deviations  
subject_id - An identifier of the subject who carried out the experiment  
activity - one of six - WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

subject_id  
activity  
tBodyAccelometer-mean-X  
tBodyAccelometer-mean-Y  
tBodyAccelometer-mean-Z  
tBodyAccelometer-standard_deviation-X  
tBodyAccelometer-standard_deviation-Y  
tBodyAccelometer-standard_deviation-Z  
tGravityAccelometer-mean-X  
tGravityAccelometer-mean-Y  
tGravityAccelometer-mean-Z  
tGravityAccelometer-standard_deviation-X  
tGravityAccelometer-standard_deviation-Y  
tGravityAccelometer-standard_deviation-Z  
tBodyAccelometerJerk-mean-X  
tBodyAccelometerJerk-mean-Y  
tBodyAccelometerJerk-mean-Z  
tBodyAccelometerJerk-standard_deviation-X  
tBodyAccelometerJerk-standard_deviation-Y  
tBodyAccelometerJerk-standard_deviation-Z  
tBodyGyroscope-mean-X  
tBodyGyroscope-mean-Y  
tBodyGyroscope-mean-Z  
tBodyGyroscope-standard_deviation-X  
tBodyGyroscope-standard_deviation-Y  
tBodyGyroscope-standard_deviation-Z  
tBodyGyroscopeJerk-mean-X  
tBodyGyroscopeJerk-mean-Y  
tBodyGyroscopeJerk-mean-Z  
tBodyGyroscopeJerk-standard_deviation-X  
tBodyGyroscopeJerk-standard_deviation-Y  
tBodyGyroscopeJerk-standard_deviation-Z  
tBodyAccelometerMagnitude-mean  
tBodyAccelometerMagnitude-standard_deviation  
tGravityAccelometerMagnitude-mean  
tGravityAccelometerMagnitude-standard_deviation  
tBodyAccelometerJerkMagnitude-mean  
tBodyAccelometerJerkMagnitude-standard_deviation  
tBodyGyroscopeMagnitude-mean  
tBodyGyroscopeMagnitude-standard_deviation  
tBodyGyroscopeJerkMagnitude-mean  
tBodyGyroscopeJerkMagnitude-standard_deviation  
fBodyAccelometer-mean-X  
fBodyAccelometer-mean-Y  
fBodyAccelometer-mean-Z  
fBodyAccelometer-standard_deviation-X  
fBodyAccelometer-standard_deviation-Y  
fBodyAccelometer-standard_deviation-Z  
fBodyAccelometerJerk-mean-X  
fBodyAccelometerJerk-mean-Y  
fBodyAccelometerJerk-mean-Z  
fBodyAccelometerJerk-standard_deviation-X  
fBodyAccelometerJerk-standard_deviation-Y  
fBodyAccelometerJerk-standard_deviation-Z  
fBodyGyroscope-mean-X  
fBodyGyroscope-mean-Y  
fBodyGyroscope-mean-Z  
fBodyGyroscope-standard_deviation-X  
fBodyGyroscope-standard_deviation-Y  
fBodyGyroscope-standard_deviation-Z  
fBodyAccelometerMagnitude-mean  
fBodyAccelometerMagnitude-standard_deviation  
fBodyBodyAccelometerJerkMagnitude-mean  
fBodyBodyAccelometerJerkMagnitude-standard_deviation  
fBodyBodyGyroscopeMagnitude-mean  
fBodyBodyGyroscopeMagnitude-standard_deviation  
fBodyBodyGyroscopeJerkMagnitude-mean  
fBodyBodyGyroscopeJerkMagnitude-standard_deviation  
 
## Transformations

### Step 1

It is to read files, assign column names and merge using cbind and rbind for the following files

train/X_train.txt  
train/subject_train.txt  
train/y_train.txt  
test/X_test.txt  
test/subject_test.txt  
test/y_test.txt  
activity_labels.txt  
features.txt  

### Step 2

Cleaning column names and selecting only mean and standard deviation

### Step 3

Exporting tidy data set to "tidy_data_set.txt"
 
### Step 4

Creating tidy data set with the average of each variable for each activity and each subject

exporting to "aggregated_data_by_activity_and_subject_id.txt"

### 
