# Code Book

Feature Selection 
=================

This dataset is based on the UCI Machine Learning Smart Phone dataset "UCI HAR Dataset". 

The various files for both the test and the training data set were combined 
into one data frame, and the averages of the listed 79 features were calculated 
for each of the six activities (alking, standing, etc.) performed by each subject.

The first two columns of the resulting text file identify the subject through 
a numeric index and the activity as a word.

The remaining 66 columns represent average means and standard deviations
over the following types of measurements::

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

and the following parameters estimated from the signals:

* mean(): Mean value
* std(): Standard deviation


The complete list of variables of each feature vector is available 
in 'feature_names.txt'

