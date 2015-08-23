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





