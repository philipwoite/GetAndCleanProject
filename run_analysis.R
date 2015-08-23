# Philip M. Woite 2015-08-23
# Coursera: Getting And Cleaning Data (Course start date 03 August 2015)
library(tidyr)
library(dplyr)
library(data.table)
library(reshape2)

activitynames <- read.table("activity_labels.txt")
variablenames <- read.table("features.txt")

testsubject <- read.table("subject_test.txt")
testing <- read.table("X_test.txt")
testingactivity <- read.table("y_test.txt")

trainsubject <- read.table("subject_train.txt")
training <- read.table("X_train.txt")
trainingactivity <- read.table("y_train.txt")


colnames(testing) <- variablenames[,2]

colnames(training) <- variablenames[,2]

colnames(testingactivity) <- c("activity")
colnames(trainingactivity) <- c("activity")

activitysubstitution <- c("1" = "walking", "2" = "walking upstairs", "3" = "walking downstairs", "4" = "sitting", "5" = "standing", "6" = "laying")

testingactivity$activity <- activitysubstitution[str_sub(testingactivity$activity)]
trainingactivity$activity <- activitysubstitution[str_sub(trainingactivity$activity)]

allactivity <- rbind(testingactivity, trainingactivity)

allsubjects <- rbind(testsubject,trainsubject)
colnames(allsubjects) <- c("subject ID")

testandtrain <- rbind(testing,training)

sheareddata <- testandtrain[,grep("mean|std", colnames(testandtrain))]

alldata <- cbind(allsubjects,allactivity,sheareddata)

meltalldata <- melt(alldata,id=c("subject ID","activity"),measure.vars=3:81)

castalldata3 <- dcast(meltalldata, `subject ID` + activity ~ variable,mean)

write.table(castalldata3, file="tidydata.txt",row.names = FALSE)
