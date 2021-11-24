# MechaCar Statistical Analysis
## Overview
The project examined various datasets regarding the production of AutosRUs' newest prototype for insights to assist with manufacturing.  The statistical software R was used for the analysis.  

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

## Summary Statistics on Suspension Coils  
According to design specs, variance of the suspension coils must not exceed 100 pounds per square inch.  In looking at all the readings across the lots:  

Total summary:  
![del2-totalsummary](https://user-images.githubusercontent.com/88070999/143178021-8d046538-c94a-40a2-a45a-b4f06d3221af.png)

The data indicates that variance is at 62, well within the design specs.  However, in examining the data by lot, a different finding emerges:  

Lot Summary:  
![del2-lotsummary](https://user-images.githubusercontent.com/88070999/143178038-8ee73e2e-e36f-45a3-be78-2ea285b7665d.png)

Variance for lots 1 and 2 are miniscule- nearly 1 and 7.5 respectively.  Lot 3 is showing variance of 170, which is 70 above the specs.  As a result, further actions should be taken to focus on Lot 3 manufacturing to bring the variance of PSI within acceptable ranges.
