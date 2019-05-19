run_analysis.R script merged data sets, then extracted and averaged required measurements as follows:

1. Downloaded project data
------------------------
    
    download.file() and unzip() functions were used to download and extracted datasets under "UCI HAR Dataset".

2. Loaded training and test data sets and merged them into one
-----------------------------------------------------------
    
    (1) training subject (7352 x 1), X_train (7352 x 561), and y_train (7352 x 1) were loaded as variables using read.table() function;
    trainset (7352 x 563) was created using cbind() function.
    
    (2) test subject (2947 x 1), X_train (2947 x 561), and y_train (2947 x 1) were loaded as variables using read.table() function; 
    testset (2947 x 563) was created using cbind() function. 
    
    (3) merged data (10299 x 563) was created by merging trainset and testset using rbind() function. 
    
    (4) features (561 x 2) were loaded using read.table() function; the 2nd column V2 contains names of 561 variables of X and were converted to characters using as.character() function.
    
    (5) the variables of merged data were named using names() function; the 1st column was "subjectid", the last column was "activity", and the middle 561 variables were named as features$V2. 
    
    (6) variable "activity" was converted to characters using as.character() function. 
    
    (7) data was saved as "MergedData.txt" using write.table() function. 
    
3. Extracted mean and std for each measurement from merged data
-----------------------------------------------------------  
    
    (1) identified target variables using grep() function to include columns with "mean" or "std" (ignore case) in their names; returned column index.
    
    (2) extracteddata (10299 x 88) was created by specifying the column index including target index, the 1st and last column.
    
4. Used descriptive activity names to name the activities of extracteddata
----------------------------------------------------------- 

    replaced the numbers in the activity column of extracteddata with corresponding activity coded in "activity_labels.txt" file.
    
5. Appropriately labeled the variables of extracteddata with descriptive names
----------------------------------------------------------- 

    using gsub() function:
    (1) removed "()" and "-" from names.
    
    (2) all angle related variables were named in the format of "AngleBetween??and??".
    
    (3) capitalized the first letter of each word for all variable names, such as "Gravity" and "Mean".
    
    (4) replaced abbreviated words with full words, i.e., "Time" instead of "t(at start)", "Frequency" instead of "f(at start)", "Accelerometer" instead of "Acc", "Gyroscope" instead of "Gyro", "Magnitude" instead of "Mag", "Frequency" instead of "Freq".
    
    (5) replaced "std" with "STD".
    
    (6) removed the extra "Body" from names containing "BodyBody".

6. Created a second, independent tidy data set with the average of each variable of extracteddata for each activity and each subject
-----------------------------------------------------------

    (1) identified the index of measurements; listed the corresponding variable names as targetname.
    
    (2) data2 (180 x 88) was created using summarise_at() function to take the means of each variable included in the targetname after being grouped by subjectid and activity using group_by() function.
    
    (3) data2 was saved as "meanbyactivityandsubject.txt" using write.table() function.