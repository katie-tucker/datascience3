
#################################################################
##This program reads the files from the HAR Dataset (given that##
##the are in the working directory) and merges the data.       ##
##Then it creates tidy data textfile with the average of each  ##
##mean and standard deviation variable for each activity       ##
##and each subject.                                            ##
#################################################################
##############Reading the data##############################
##In this section the code reads the data from the files
##in the working directory for both the test and train sets
##and saves it as tables. It also reads and saves the feature
##names.
#############################################################
##Test##
subject_test <- read.table("./HAR Dataset/UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("./HAR Dataset/UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("./HAR Dataset/UCI HAR Dataset/test/Y_test.txt")
##Train##
subject_train <- read.table("./HAR Dataset/UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("./HAR Dataset/UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("./HAR Dataset/UCI HAR Dataset/train/Y_train.txt")

##Features##
features <- read.table("./HAR Dataset/UCI HAR Dataset/features.txt")
features <-features$V2 #saves features as just the names

##############Merging the data##############
##In this section, the code renames the
##the columns for the test and train files
##and then merges the data to create one 
##table
############################################

library(dplyr)
names(X_test) <- features 
names(Y_test)<- "labels"
names(subject_test) <- "subject"
names(X_train) <- features
names(Y_train) <- "labels"
names(subject_train) <- "subject"
test <- cbind(subject_test,Y_test, X_test)#Creates one table for test
train <- cbind(subject_train, Y_train, X_train) #Creates one table for train
total <- rbind(test, train) #Comines test and train tables

##############Reducing to just Standard deviatin and Means##############
##This section finds the columns that are related to mean and standard
##devition, as well as the label and subject tables and makes a new table
##with just these columns
########################################################################
headers <- as.numeric(grep("labels|subject|mean()|std()", names(total))) #finds appropriate columns
reduced <- total[,headers] #creates new table with just std dev and mean columns

##############Changing Activity Names##############
##This section uses the activity_labels.txt file
##to change the activities from numbers to the 
##corresponding text description. Then it makes these
##titles, as well as the column titles neater by 
##eliminating symbols and adding in words for 
##abbrivations.
##################################################
activity_names <- read.table("./HAR Dataset/UCI HAR Dataset/activity_labels.txt") 

reduced$labels <- activity_names[as.numeric(reduced$labels),2] #changes the labels by matching 
                                                                #the number with the label found in
                                                                #activity_labels
reduced$labels<-gsub("_"," ", reduced$labels) #removes _ symbol


names(reduced) <- gsub("-"," ", names(reduced)) #removes - 
names(reduced) <- gsub("()","", names(reduced), fixed = TRUE) #removes ()
names(reduced) <- gsub('^t',"time ", names(reduced))#changes t to time
names(reduced) <- gsub('^f',"freq ", names(reduced)) #changes f to freq

##############Create averages table##############
##This section takes the reduce model and groups 
##it by averages, subject, and labels. Then it
##summarizes the averages. Finally it saves this
##table as a text file
#################################################
averages <- reduced
averages <- group_by(averages, subject, labels)
averages <- summarize_all(averages,mean) 
write.table(averages, file="./tidydata.txt",row.names=FALSE)

        
