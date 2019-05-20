subjectid
---------

      numbers 1 - 30 represent a group of 30 volunteers within an age bracket of 19-48 years.
      

activity
--------

      six activities were performed by each subject, including:
      1 WALKING
      2 WALKING_UPSTAIRS
      3 WALKING_DOWNSTAIRS
      4 SITTING
      5 STANDING
      6 LAYING

tBodyAccelerometerMeanX/tBodyAccelerometerMeanY/tBodyAccelerometerMeanZ/tBodyAccelerometerSTDX/tBodyAccelerometerSTDY/tBodyAccelerometerSTDZ/tBodyAccelerometerMagnitudeMean/tBodyAccelerometerMagnitudeSTD
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

      3-axial time domain acceleration signals obtained from accelerometer were captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. The body acceleration signals were then separated using another low pass Butterworth filter with a corner frequency of 0.3 Hz. The distribution (i.e., Mean and Standard Deviation or STD) was estimated for the acceleration signals in each of the X, Y, and Z directions. The magnitude of these 3-dimensional signals were calculated using the Euclidean norm; the mean and STD of the magnitude were then estimated. 
      These mean and STD measures were averaged for each activity and each subject in this project. 
      

tGravityAccelerometerMeanX/tGravityAccelerometerMeanY/tGravityAccelerometerMeanZ/tGravityAccelerometerSTDX/tGravityAccelerometerSTDY/tGravityAccelerometerSTDZ/tGravityAccelerometerMagnitudeMean/tGravityAccelerometerMagnitudeSTD
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

      In addition to the body acceleration signals, the gravity acceleration signals were also separated from the time domain acceleration signals obtained from accelerometer as stated above. The mean and STD were estimated from these separated signals respectively for the X, Y, and Z directions. The mean and STD of the magnitude of the 3-dimensional gravity acceleration signals were also calculated as stated above. 
      These measurements were averaged for each activity and each subject in this project. 
      

tBodyAccelerometerJerkMeanX/tBodyAccelerometerJerkMeanY/tBodyAccelerometerJerkMeanZ/tBodyAccelerometerJerkSTDX/tBodyAccelerometerJerkSTDY/tBodyAccelerometerJerkSTDZ/tBodyAccelerometerJerkMagnitudeMean/tBodyAccelerometerJerkMagnitudeSTD
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

      The body linear acceleration was derived in time to obtain Jerk signals. The magnitude of the Jerk signals was also calculated using the Euclidean norm. The mean and STD values of Jerk signals in the X, Y, and Z directions, as well as the Jerk signal magnitude were calculated and, in this project, were averaged for each activity and each subject. 

tBodyGyroscopeMeanX/tBodyGyroscopeMeanY/tBodyGyroscopeMeanZ/tBodyGyroscopeSTDX/tBodyGyroscopeSTDY/tBodyGyroscopeSTDZ/tBodyGyroscopeJerkMeanX/tBodyGyroscopeJerkMeanY/tBodyGyroscopeJerkMeanZ/tBodyGyroscopeJerkSTDX/tBodyGyroscopeJerkSTDY/tBodyGyroscopeJerkSTDZ/tBodyGyroscopeMagnitudeMean/tBodyGyroscopeMagnitudeSTD/tBodyGyroscopeJerkMagnitudeMean/tBodyGyroscopeJerkMagnitudeSTD
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

      3-axial time domain raw signals obtained from gyroscope were captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. The body angular velocity were derived in time to obtain Jerk signals. The magnitude was calculated using the Euclidean norm. The mean and STD values of the body angular velocity and the derived Jerk signals were calculated in the X, Y, and Z directions. The mean and STD values of the magnitudes of body angular velocity and Jerk signals were also estimated. All these measurements were averaged for each activity and each subject in this project. 
      

fBodyAccelerometerMeanX/fBodyAccelerometerMeanY/fBodyAccelerometerMeanZ/fBodyAccelerometerSTDX/fBodyAccelerometerSTDY/fBodyAccelerometerSTDZ/fBodyAccelerometerMeanFrequencyX/fBodyAccelerometerMeanFrequencyY/fBodyAccelerometerMeanFrequencyZ/fBodyAccelerometerJerkMeanX/fBodyAccelerometerJerkMeanY/fBodyAccelerometerJerkMeanZ/fBodyAccelerometerJerkSTDX/fBodyAccelerometerJerkSTDY/fBodyAccelerometerJerkSTDZ/fBodyAccelerometerJerkMeanFrequencyX/fBodyAccelerometerJerkMeanFrequencyY/fBodyAccelerometerJerkMeanFrequencyZ/fBodyGyroscopeMeanX/fBodyGyroscopeMeanY/fBodyGyroscopeMeanZ/fBodyGyroscopeSTDX/fBodyGyroscopeSTDY/fBodyGyroscopeSTDZ/fBodyGyroscopeMeanFrequencyX/fBodyGyroscopeMeanFrequencyY/fBodyGyroscopeMeanFrequencyZ/fBodyAccelerometerMagnitudeMean/fBodyAccelerometerMagnitudeSTD/fBodyAccelerometerMagnitudeMeanFrequency/fBodyAccelerometerJerkMagnitudeMean/fBodyAccelerometerJerkMagnitudeSTD/fBodyAccelerometerJerkMagnitudeMeanFrequency/fBodyGyroscopeMagnitudeMean/fBodyGyroscopeMagnitudeSTD/fBodyGyroscopeMagnitudeMeanFrequency/fBodyGyroscopeJerkMagnitudeMean/fBodyGyroscopeJerkMagnitudeSTD/fBodyGyroscopeJerkMagnitudeMeanFrequency
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

      The time domain body acceleration and angular velocity signals and derived Jerk signals were converted into corresponding frequency domain signals using a Fast Fourier Transform. The corresponding mean and STD in each direction, as well as the mean and STD and mean frequency of magnitude, were estimated using similar ways as those used for time domain signals. These measurements were averaged for each activity and each subject in this project.
