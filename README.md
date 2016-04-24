# Getting-and-Cleaning-Data-Course-Project

This script will read into R the feature names, activity names, the subjects involved in the experiment, the activities each subject performed and the observations of the 561 features.

This script will then rename variables according to the feature list provided, along with descriptors for the activity codes, Activites and Subjects.

The relevant tables will then be merged to match activity codes to descriptors, and then the cbind function will be used to join activites, subjects and features. rbind is then used to append test and train data into one data table.

The data set is then subset to include only mean and standard deviation (std) variables along with subject and activity.

This data set is then aggregated using the mean function to create a tidy data set of the mean of the 6 variables, 3 mean variables and 3 std variables.

This data set is then written to a text file named "Tidydata.txt" using the write.table command.
