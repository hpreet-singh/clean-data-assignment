#############################################################################
# 
# Getting and Cleaning data course assignment
#
#############################################################################

library(readr)
library(dplyr)

# Getting data

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", 
              "dataset.zip", "curl")

unzip("dataset.zip")
setwd("UCI HAR Dataset")


# Merge the test and train datasets along with descriptive activity names and labels.

feature_names <- read_delim("features.txt", delim = " ", col_names = c("Index", "FeatureName"))
activity_label <- read_delim("activity_labels.txt", delim = " ", col_names = c("Index", "Activity"))

#Test dataset
features_test <- read_table("test/X_test.txt", 
                            col_names = feature_names$FeatureName, 
                            col_types = rep(list(col_double()), 561))

activity_test <- read_lines("test/y_test.txt")
activity_test <- parse_integer(activity_test)

features_test$activity <- factor(activity_test, 
                                        levels = activity_label$Index, 
                                        labels = activity_label$Activity)

subject_test <- read_lines("test/subject_test.txt")
subject_test <- parse_integer(subject_test)

features_test$subject <- subject_test


#Training dataset
features_train <- read_table("train/X_train.txt", 
                            col_names = feature_names$FeatureName, 
                            col_types = rep(list(col_double()), 561))


activity_train <- read_lines("train/y_train.txt")
activity_train <- parse_integer(activity_train)

features_train$activity <- factor(activity_train, 
                                        levels = activity_label$Index, 
                                        labels = activity_label$Activity)


subject_train <- read_lines("train/subject_train.txt")
subject_train <- parse_integer(subject_train)

features_train$subject <- subject_train


features_all <- rbind(features_test, features_train)

#############################################################################

# Extract only mean and standard deviation

indexes <- grep("(mean|std)\\(\\)", names(features_all))

extracted <- features_all[, indexes]
extracted$activity <- features_all$activity
extracted$subject <- features_all$subject

#############################################################################

# Create and write the tidy data set

tidy_data <- extracted %>%
  group_by(subject, activity) %>%
  summarize_at(vars(-(activity:subject)), mean)
  
write_csv(tidy_data, "../tidy_data.csv")
