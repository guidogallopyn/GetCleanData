# Coursera - Data Science - Getting and Cleaning Data - project

#if necessary set working firectory to "UCI HAR Dataset" directory
#setwd("~/Documents/Courses/DataScience/projects/data/UCI HAR Dataset")

# read training set
train <- cbind(read.table("train/subject_train.txt"),read.table("train/y_train.txt"),read.table("train/X_train.txt"))
  
# read test set
test <- cbind(read.table("test/subject_test.txt"),read.table("test/y_test.txt"),read.table("test/X_test.txt"))

# merge train and test sets 
data <- rbind(train,test)

#read the feature names
features <- read.table("features.txt", colClasses=c("NULL","character"))

# filter data for only Subject, Activity, Mean and Std and add cleaned up variable names, convert Activity and Subject to factors
tidy <- data[,c(TRUE,TRUE,grepl("-(mean|std)\\(\\)",features$V2))]
names(tidy) <- c("Subject","Activity",gsub("[\\(\\)-]+","",grep("-(mean|std)\\(\\)",features$V2, value=TRUE)))
names(tidy) <- sub("mean","Mean",names(tidy))
names(tidy) <- sub("std","Std",names(tidy))
tidy$Subject <- factor(tidy$Subject)
tidy$Activity <- factor(tidy$Activity,levels=1:6)
levels(tidy$Activity) <- list(WALKING=1,WALKING_UPSTAIRS=2,WALKING_DOWNSTAIRS=3,SITTING=4,STANDING=5, LAYING=6)
rm(data,features)

# create 2nd tidy set with mean per measurement per Activity and Subject
library(reshape2)
tidymelt <- melt(tidy,id=c("Subject","Activity"),measure.vars=names(tidy)[-2:-1])
tidy2 <-dcast(tidymelt, Activity + Subject ~ variable, mean)

# save tidy2
write.table(tidy2,file="tidy2.txt",row.name=FALSE)

