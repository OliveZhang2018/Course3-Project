Getting and Cleanning Data Course Project by Xiaoyan Zhang
----------------------------------------------------------

Dataset
-------

Human Activity Recognition Using Smartphones

Files
-----

### CodeBook.md: a code book that describes the variables, the data, and any transformations or work that I performed to clean up the data.

### run\_analysis.R: script used to perfom data cleaning and analysis as follows:

1.  merges the training and test data sets into one set:

    1.  training subject (7352 x 1), X\_train (7352 x 561), and y\_train
        (7352 x 1) were loaded as variables using read.table() function;
        trainset (7352 x 563) was created using cbind() function.

    2.  test subject (2947 x 1), X\_train (2947 x 561), and y\_train
        (2947 x 1) were loaded as variables using read.table() function;
        testset (2947 x 563) was created using cbind() function.

    3.  merged data (10299 x 563) was created by merging trainset and
        testset using rbind() function.

    4.  features (561 x 2) were loaded using read.table() function; the
        2nd column V2 contains names of 561 variables of X and were
        converted to characters using as.character() function.

    5.  the variables of merged data were named using names() function;
        the 1st column was “subjectid”, the last column was “activity”,
        and the middle 561 variables were named as features$V2.

    6.  variable “activity” was converted to characters using
        as.character() function.

    7.  data was saved as “MergedData.txt” using write.table() function.

2.  extracts the mean and standard deviation measurements for each
    measurement:

    1.  identified target variables using grep() function to include
        columns with “mean” or “std” (ignore case = FALSE) in their
        names; returned column index.

    2.  extracteddata (10299 x 81) was created by specifying the column
        index including target index, the 1st and last column.

3.  uses descriptive activity names to define the activities in the
    extracted data set:

    replaced the numbers in the activity column of extracteddata with
    corresponding activity coded in “activity\_labels.txt” file.

4.  appropriately labels the data variables:

    using gsub() function:
    1.  removed “()” and “-” from names.

    2.  capitalized the first letter of each word for all variable
        names, such as “Mean”.

    3.  replaced some abbreviated words with full words, i.e.,
        “Accelerometer” instead of “Acc”, “Gyroscope” instead of “Gyro”,
        “Magnitude” instead of “Mag”, “Frequency” instead of “Freq”.

    4.  replaced “std” with “STD”.

    5.  removed the extra “Body” from names containing “BodyBody”.

5.  calculates the average of each variable in the extracted data set
    for each activity and each subject:

    1.  identified the index of measurements; listed the corresponding
        variable names as targetname.

    2.  data2 (180 x 81) was created using summarise\_at() function to
        take the means of each variable included in the targetname after
        being grouped by subjectid and activity using group\_by()
        function.

    3.  data2 was saved as “meanbyactivityandsubject.txt” using
        write.table() function.

### meanbyactivityandsubject.txt: a tidy data set with the average of interested measures for each activity and each subject.
