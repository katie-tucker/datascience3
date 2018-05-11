
##############Reading the data##############
##Test##
subject_test <- read.table("./Coursera/HAR Dataset/UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("./Coursera/HAR Dataset/UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("./Coursera/HAR Dataset/UCI HAR Dataset/test/Y_test.txt")
##Train##
subject_train <- read.table("./Coursera/HAR Dataset/UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("./Coursera/HAR Dataset/UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("./Coursera/HAR Dataset/UCI HAR Dataset/train/Y_train.txt")

##Features##
features <- read.table("./Coursera/HAR Dataset/UCI HAR Dataset/features.txt")
features <-features$V2
##############Merging the data##############
library(dplyr)
names(X_test) <- features 
names(Y_test)<- "labels"
names(subject_test) <- "subject"
names(X_train) <- features
names(Y_train) <- "labels"
names(subject_train) <- "subject"
test <- cbind(subject_test,Y_test, X_test)
train <- cbind(subject_train, Y_train, X_train)
total <- rbind(test, train)
##############Reducing to just Standard deviatin and Means##############
headers <- as.numeric(grep("labels|subject|mean()|std()", names(total)))
reduced <- total[,headers]

##############Changing Activity Names##############
activity_names <- read.table("./Coursera/HAR Dataset/UCI HAR Dataset/activity_labels.txt")
reduced$Labels <- activity_names[as.numeric(reduced$Labels),2]
reduced$Labels<-gsub("_"," ", reduced$Labels)


names(reduced) <- gsub("-"," ", names(reduced))
names(reduced) <- gsub("()","", names(reduced), fixed = TRUE)
names(reduced) <- gsub('^t',"time ", names(reduced))
names(reduced) <- gsub('^f',"freq ", names(reduced))



averages <- reduced
averages <- group_by(averages, subject, labels)
averages <- summarize_all(averages,mean) 
        
