# MechaCar Statistical Analysis
## Overview
## Linear Regression to Predict MPG  
In the first deliverable for the challenge, I examined the data to produce a multiple regression model to predict MPG based on several variables including: 
* Vehicle Length
* Vehicle Weight
* Spoiler Angle
* Ground Clearance
* AWD

![deliverable1](https://user-images.githubusercontent.com/88070999/143175520-86dc14a4-ca9e-4714-818c-1e645d0e73ce.png)  

Several of the variables provide a non-random amount of variance.  As indicated in the screenshot, vehicle length and ground clearance were quite significant, followed by vehicle weight.  The remaining two variables, spoiler angle and AWD, were not nearly as important in predicting the MPG of the vehicle.

The slope is not considered to be zero.  If it were zero, then the variables would have no predictive value.  As it is, the model has a multiple R-squared value of .71, meaning that the model can explain roughly 71% of the variability in the dependent variable.  This is more effective than a coin toss at 50/50, and the p-value is very small, so the model is somewhat effective at predicting the dependent variable.
