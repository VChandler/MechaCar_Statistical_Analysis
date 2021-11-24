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

## T-Tests on Suspension Coils  
The next part of the analysis utilized t-tests to determine of the lots (collectively and separately) are statistically different from the population mean of 1,500 PSI.  Our significance level used is 0.05.

### All lots:  
![del3-all](https://user-images.githubusercontent.com/88070999/143322536-48268a53-17e0-4c53-b511-3fc1d01bed30.png)  
According to the above, the p-value is 0.06, which is above our significance level.  As such, the manufacturing lots as a whole have statistically similar means to the population mean.

### Lot 1:  
![del3-lot1](https://user-images.githubusercontent.com/88070999/143322554-75371cce-b805-4313-9b65-5365f3a167c5.png)  
The above results indicate that, with a p-value of 1, manufacturing lot 1 is statistically similar to the population mean for PSI.

### Lot 2:  
![del3-lot2](https://user-images.githubusercontent.com/88070999/143322562-ad040a28-5f70-4533-95ce-1f828feb5a79.png)  
Although not quite as high as lot 1, lot 2 has a p-value of .6 which indicates that the lot is statistically similar to the population mean for PSI.

### Lot 3:  
![del3-lot3](https://user-images.githubusercontent.com/88070999/143322575-2a42dc20-9969-4d85-b20f-3b5a180132b1.png)  
As expected, lot 3 (which had higher standard deviation than the other two lots) shows a statistically different mean in PSI vs. the population mean of 1,500.  In this case, we reject the null hypothesis that the means are the same.  

## Study Design: MechaCar vs Competition
### Overview
For further analysis, a statistical study that may be of some interest to the consumer could indicate the lower five-year maintenance cost of a MechaCar compared to the competition.

### Hypothesis
Null Hypothesis: There is no statistical difference in maintenance cost over five years between a MechaCar and a competition's car.
Alternative Hypothesis: The five year maintenance cost of a MechaCar is statistically lower than a competition's maintenance cost over the same period.

### Statistical Test
A two sample t-test would be used since these are two different samples.  This would be a one-tail test since we are only checking whether the MechaCar has a lower cost of maintenance.

### Data Required
We would need to obtain reliable data from a number of owners for both the MechaCar and the competition car.  This would be maintenance costs over a five year period.  We would then be able to import the data into R for the t-test.


