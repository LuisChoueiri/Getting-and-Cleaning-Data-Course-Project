
#setwd with all files
setwd("C:/Desktop/Programming/R/UCI HAR Dataset")


##read data into tables

#read in variable names
features <- read.table("features.txt")

#read in activity descriptions
activity_labels <- read.table("activity_labels.txt")

#read in subjects
subject_test <- read.table("subject_test.txt")
subject_train <- read.table("subject_train.txt")

#read in obs data
X_test <- read.table("X_test.txt")
X_train <- read.table("X_train.txt")

#read in subject data
y_test <- read.table("y_test.txt")
y_train <- read.table("y_train.txt")


#rename variables

#rename according to features table
names(X_test) <- features$V2
names(X_train) <- features$V2


names(y_test) <- c("Activity code")
names(y_train) <- c("Activity code")


names(activity_labels) <- c("Activity code","Activity name")

names(subject_test) <- c("Subject")
names(subject_train) <- c("Subject")

#Merge data sets

y_test <- merge(y_test,activity_labels)
y_train <- merge(y_train,activity_labels)

#cbind data sets

X_test <- cbind(X_test, y_test)
X_train <- cbind(X_train, y_train)

X_test <- cbind(X_test, subject_test)
X_train <- cbind(X_train, subject_train)


#append data sets

X_all <- rbind(X_test,X_train)


##Part 2 

#select variables to keep
targetvars <- c("tBodyAcc-mean()-X", "tBodyAcc-mean()-Y", "tBodyAcc-mean()-Z", 
                "tBodyAcc-std()-X",  "tBodyAcc-std()-Y",  "tBodyAcc-std()-Z", 
                "Activity name",     "Subject")

#subset them out
X_subset <- X_all[,targetvars]

##Part 5

#aggregate data to create tidy data set
A_agg <- aggregate(list(X_subset[,1:6]), list(Activity =X_subset[,7], Subject= X_subset[,8]), FUN = "mean")

#rename tabel to be through
names(A_agg) <- c("Activity","Subject","meanofmeanofX","meanofmeanofY","meanofmeanofZ","meanofstdofX","meanofstdofY","meanofstdofZ")

write.table(A_agg, file= "Tidydata.txt", row.name =FALSE)
