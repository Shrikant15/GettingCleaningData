Getting and Cleaning Data Project 
=================================

##Introduction

This project uses "Human Activity Recognition Using Smartphones" Data Set , available on
<a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones/">UC Irvine Machine Learning Repository</a>, a popular repository for machine learning
datasets. This data set is provided on coursera web site using link

* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip/">Human Activity Recognition</a>

## Loading of Data

* Script <b>run_analysis.R</b> is created for loading and processing.This script is present here <a href="https://github.com/Shrikant15/GettingCleaningData/blob/master/run_analysis.R/">run_analysis.R</a>
  Firstly,all the data files are downloaded and imported in R as data frames using read.table function.These files include 
  * Training and Test data set ('test/X_test.txt' and 'train/X_train.txt')
  * Training and Test Activity labels   ('train/y_train.txt' and 'test/y_test.txt')
  * Training and Test SubjectId data  ('train/subject_train.txt' and 'test/subject_test.txt')
  * 'activity_labels.txt': Map Activity labels (ID) with the name/description
  * 'features.txt': List of all the measured variables  

## Processing of Data 

* Raw test and training data sets('X_test.txt' and 'X_train.txt') Data Frames are merged together using rbind .
* Subset of merged data created only for mean and standard deviation columns using grep on mean() and std() on variable names of features.txt data frame.
* Combine SubjectId and Activity Name data frames and rename the variables properly by removing ()
* Finally, tidy data set <b>tidy_data_set.txt</b> is created in current working directory.
* This uploaded tidy data set has 180 records (6 Activity for each of 30 subjects) with 68 variables.
* First 2 variables are ActivityName and SubjectId with remaining 66 as Average of Mean and Standard Deviation for various body and total acceleration measurements as well as angular velocity measurements
* Average is calculated using aggregate function , mean by ActivityName and SubjectID.
* "Average-" word has been prefixed for summarized variable names.
* More details about columns/variables of tidy data set <b>tidy_data_set.txt</b> are available in <b>CodeBook.md</b>