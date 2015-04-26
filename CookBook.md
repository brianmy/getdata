# Course Project Data Description

## tidy_mean_data.txt Description

The following section describes the variables contained in the output file.

* "Subject" - The number of the subject (one of 30 subjects)
* "Activity" - Description of the activity performed, read from activity_labels.txt

The remaining data describes the average measurement for each subject and each activity. The measurements contain average acceleration and average velocity along x, y, and z-axis. 
* * "TimeBodyAccelerationMeanXaxis" 
* * "TimeBodyAccelerationMeanYaxis" 
* * "TimeBodyAccelerationMeanZaxis" 
* * "TimeBodyAccelerationStandardDeviationXaxis" 
* * "TimeBodyAccelerationStandardDeviationYaxis" 
* * "TimeBodyAccelerationStandardDeviationZaxis" 
* * "TimeGravityAccelerationMeanXaxis" 
* * "TimeGravityAccelerationMeanYaxis" 
* * "TimeGravityAccelerationMeanZaxis" 
* * "TimeGravityAccelerationStandardDeviationXaxis" 
* * "TimeGravityAccelerationStandardDeviationYaxis" 
* * "TimeGravityAccelerationStandardDeviationZaxis" 
* "TimeBodyAccelerationJerkMeanXaxis" 
* "TimeBodyAccelerationJerkMeanYaxis" 
* "TimeBodyAccelerationJerkMeanZaxis" 
* "TimeBodyAccelerationJerkStandardDeviationXaxis" 
* "TimeBodyAccelerationJerkStandardDeviationYaxis" 
* "TimeBodyAccelerationJerkStandardDeviationZaxis" 
* "TimeBodyGyroscopeMeanXaxis" 
* "TimeBodyGyroscopeMeanYaxis" 
* "TimeBodyGyroscopeMeanZaxis" 
* "TimeBodyGyroscopeStandardDeviationXaxis" 
* "TimeBodyGyroscopeStandardDeviationYaxis" 
* "TimeBodyGyroscopeStandardDeviationZaxis" 
* "TimeBodyGyroscopeJerkMeanXaxis" 
* "TimeBodyGyroscopeJerkMeanYaxis" 
* "TimeBodyGyroscopeJerkMeanZaxis" 
* "TimeBodyGyroscopeJerkStandardDeviationXaxis" 
* "TimeBodyGyroscopeJerkStandardDeviationYaxis" 
* "TimeBodyGyroscopeJerkStandardDeviationZaxis" 
* "TimeBodyAccelerationMagnitudeMean" 
* "TimeBodyAccelerationMagnitudeStandardDeviation" 
* "TimeGravityAccelerationMagnitudeMean" 
* "TimeGravityAccelerationMagnitudeStandardDeviation" 
* "TimeBodyAccelerationJerkMagnitudeMean" 
* "TimeBodyAccelerationJerkMagnitudeStandardDeviation" 
* "TimeBodyGyroscopeMagnitudeMean" 
* "TimeBodyGyroscopeMagnitudeStandardDeviation" 
* "TimeBodyGyroscopeJerkMagnitudeMean" 
* "TimeBodyGyroscopeJerkMagnitudeStandardDeviation" 
* "FrequencyBodyAccelerationMeanXaxis" 
* "FrequencyBodyAccelerationMeanYaxis" 
* "FrequencyBodyAccelerationMeanZaxis" 
* "FrequencyBodyAccelerationStandardDeviationXaxis" 
* "FrequencyBodyAccelerationStandardDeviationYaxis" 
* "FrequencyBodyAccelerationStandardDeviationZaxis" 
* "FrequencyBodyAccelerationMeaneq()Xaxis" 
* "FrequencyBodyAccelerationMeaneq()Yaxis" 
* "FrequencyBodyAccelerationMeaneq()Zaxis" 
* "FrequencyBodyAccelerationJerkMeanXaxis" 
* "FrequencyBodyAccelerationJerkMeanYaxis" 
* "FrequencyBodyAccelerationJerkMeanZaxis" 
* "FrequencyBodyAccelerationJerkStandardDeviationXaxis" 
* "FrequencyBodyAccelerationJerkStandardDeviationYaxis" 
* "FrequencyBodyAccelerationJerkStandardDeviationZaxis" 
* "FrequencyBodyAccelerationJerkMeaneq()Xaxis" 
* "FrequencyBodyAccelerationJerkMeaneq()Yaxis" 
* "FrequencyBodyAccelerationJerkMeaneq()Zaxis" 
* "FrequencyBodyGyroscopeMeanXaxis" 
* "FrequencyBodyGyroscopeMeanYaxis" 
* "FrequencyBodyGyroscopeMeanZaxis" 
* "FrequencyBodyGyroscopeStandardDeviationXaxis" 
* "FrequencyBodyGyroscopeStandardDeviationYaxis" 
* "FrequencyBodyGyroscopeStandardDeviationZaxis" 
* "FrequencyBodyGyroscopeMeaneq()Xaxis" 
* "FrequencyBodyGyroscopeMeaneq()Yaxis" 
* "FrequencyBodyGyroscopeMeaneq()Zaxis" 
* "FrequencyBodyAccelerationMagnitudeMean" 
* "FrequencyBodyAccelerationMagnitudeStandardDeviation" 
* "FrequencyBodyAccelerationMagnitudeMeaneq()" 
* "FrequencyBodyBodyAccelerationJerkMagnitudeMean" 
* "FrequencyBodyBodyAccelerationJerkMagnitudeStandardDeviation" 
* "FrequencyBodyBodyAccelerationJerkMagnitudeMeaneq()" 
* "FrequencyBodyBodyGyroscopeMagnitudeMean" 
* "FrequencyBodyBodyGyroscopeMagnitudeStandardDeviation" 
* "FrequencyBodyBodyGyroscopeMagnitudeMeaneq()" 
* "FrequencyBodyBodyGyroscopeJerkMagnitudeMean" 
* "FrequencyBodyBodyGyroscopeJerkMagnitudeStandardDeviation" 
* "FrequencyBodyBodyGyroscopeJerkMagnitudeMeaneq()"

## Script Explanation
Step 0: Script setup
* Define all input data files required for the projects

Step 1: Merges the training and the test sets to create one data set
* Read training and test measurements 
* Combine into one data set 

Step 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
* Read the features.txt input file 
* Filter only mean and standard deviation
* Read subject and activity data
* Combine measurements, activities, and subjects into a single data set

Step 3: Uses descriptive activity names to name the activities in the data set
* Using activity_labels.txt, lookup and replace activities with their descriptive names

Step 4: Appropriately labels the data set with descriptive variable names
* Cleanup variable names (see CodeBook.md for more information)

Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
* Product the means by Subject and Activity
* Write a tidy data file into the working directory (final output file named tidy_mean_data.txt)