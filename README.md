Introduction - Getting and Cleaning Data Project 
================================================

This project uses "Human Activity Recognition Using Smartphones" Data Set , available on
<a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones/">UC Irvine Machine Learning Repository</a>, a popular repository for machine learning
datasets. This data set is provided on coursera web site using link

* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip/">Human Activity Recognition</a>

## Loading and Processing of Data

* Script <b>run_analysis.R</b> is created for loading and processing.This script is present here <a href="https://github.com/Shrikant15/GettingCleaningData/">run_analysis.R</a>
  Firstly,all the data files are downloaded and imported in R as data frames using read.table function.These files include 
  * Training and Test data set ('test/X_test.txt' and 'train/X_train.txt')
  * Training and Test Activity labels   ('train/y_train.txt' and 'test/y_test.txt')
  * Training and Test SubjectId data  ('train/subject_train.txt' and 'test/subject_test.txt')
  * 'activity_labels.txt': Map Activity labels (ID) with the name/description
  * 'features.txt': List of all the measured variables  
