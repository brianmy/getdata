# Coursera Getting and Cleaning Data Course Project

## Project Instructions
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Requirements
You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Execution Instructions
run_analysis.R assumes that the input data file (downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) file has already been downloaded, unziped, and available from the project's working directory.

The project was developed in R Studio and verified that a tidy data file called tidy_mean_data.txt is written into the working directory. The tidy data set is described in CodeBook.md.

## Script Explanation
Step 0: Project setup
* Define all input data files required for the projects

Step 1: Merges the training and the test sets to create one data set
* Read training and test measurements 
* Combine into one data set 

Step 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
* Read the features input file 
* Filter only mean and standard deviation features
* Read subject and activity data
* Combine measurements, activities, and subjects into a single data set

Step 3: Uses descriptive activity names to name the activities in the data set
* Using activity_labels.txt, lookup and replace activities with their descriptive names

Step 4: Appropriately labels the data set with descriptive variable names
* Cleanup variable names (see CodeBook.md for more information)

Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
* Product the means by Subject and Activity
* Write a tidy data file into the working directory (final output file named tidy_mean_data.txt)