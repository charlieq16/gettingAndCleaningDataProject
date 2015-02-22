# Readme For The Tidy Dataset

This repo contains the files used as part of the Getting and Cleaning Data Course Project 

The purpose of this project was to create a tidy dataset from a larger dataset obtained at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## file list

* run_analysis.R - this is the script that performs the transformation of the data from the original dataset to the tidy dataset. It assumes that you have downloaded the original dataset and that it is available in the current working directory. The dataset can be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip At a high level run_analysis.R does the following:
** combine the test and training datasets
** extract the the average and standard deviation values
** provide descriptive (readable) names for the values
** organize the data into a single table
** write the resulting table to the averages.txt file
* averages.txt - the resulting tidy dataset
* CodeBook.md - explains the transformations performed and the resulting data and variables.


