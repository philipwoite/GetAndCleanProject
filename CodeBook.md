My codebook

Start by firstly extracting the folder *UCI HAR Dataset* 


Then copy the following list of files to the working directory:

From *UCI HAR Dataset*
- activity_labels.txt
- features.txt

From *UCI HAR Dataset/test*
- subject_test.txt
- X_test.txt
- y_test.txt

From *UCI HAR Datatset/train*
- subject_train.txt
- X_train.txt
- y_train.txt


Load the following libraries into RStudio
* dplyr
* reshape2
* data.table
* plyr

Using **read.table** read the files into data frames
- activity_labels.txt into activitynames
- features.txt into variablenames

From *UCI HAR Dataset/test*
- subject_test.txt into 
- X_test.txt into testing
- y_test.txt into testingactivity

From *UCI HAR Datatset/train*
- subject_train.txt
- X_train.txt into training
- y_train.txt into trainingactivity

Assign column names to testing and training data frames, using the **colnames** function with the *variablenames* vector.

Assign the column name of *activity* to the *testingactivity* and *trainingactivity* columns, in the same manner.

Using **rbind** combine the testing and training activities (*testingactivity* and *trainingactivity*) to form *allactivity*.

Using **rbind** combine the testing and training data frames (*testingactivity* and *trainingactivity* ) to form *testandtrain*.

Do the same naming (with **colnames** ) and combining (with **rbind** ) for *testsubject* and *trainsubject* to form *allsubjects* with column name *subject ID*



*sheareddata* is a data frame where all columns that do not include the strings *"mean"* or *"std"* have been removed from the data frame *testandtrain*. This is accomplished by using the **grep** function.

Using **cbind** combine *allsubjects* and *allactivity* with *testandtrain* to form a new data frame: *alldata*.

Next rename the variable names (column names) 

Next summarise the data frame

Using melt, make a long data frame.

Using dcast, summarise the data frame according to the subject ID **and** the activity (take note of the plus sign in the code to achieve this "double" summary).

Finally export the data frame with **write.table**



