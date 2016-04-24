#Data frames

Data is read into the following frames:

List of 561 feature variables is read into "features"

Activity label descritions are read into "activity_labels"

Subjects in the test group are read into "subject_test"

Subjects in the train group are read into "subject_train"

Observations of the 561 variables for the test group are read into "X_test"

Observations of the 561 variables for the train group are read into "X_train"

The activities corresponding to each observation for the test group are read into "y_test"

The activities corresponding to each observation for the train group are read into "y_train"


#Variables
The variables for the "X_test" and "X_train" tables are the same, and are listed in the features document and table

The variable defining the activity for each observation is renamed to "Activity code" for both the test and train groups

The variables for the "activity_labels" are renamed to "Activity code", the numerical code present in "y_test" and "y_train", and the description of the activity renamed to "Activity name"  

The variable for the subject tables, "subject_test" and "subject_train" is renamed to "Subject"

After aggregating the data into a data set, the following variables are created, while the variables "Activity" and "Subject" remain the same:

From the mean of "tBodyAcc-mean()-X"; "meanofmeanofX"

From the mean of "tBodyAcc-mean()-Y"; "meanofmeanofY"

From the mean of "tBodyAcc-mean()-Z"; "meanofmeanofZ"

From the mean of "tBodyAcc-std()-X";  "meanofstdofX"

From the mean of "tBodyAcc-std()-Y";  "meanofstdofY"

From the mean of "tBodyAcc-std()-Z";  "meanofstdofZ"

This single data set is the written to a text file, named "Tidydata.txt"
