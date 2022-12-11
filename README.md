## MechaCar Analysis - AutoRUs

# Overview of the Project

Jeremy is approached by a manager about a project. AutoRUs' newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. Jeremy and the Data Analytics team has a new role, to review the production data for insights that may help the manufacturing team.

What we will do to help the Data Analytics team:

* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes

* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots

* Run t-tests to determine if the manufacturing lots are statistically different from the mean population

* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll     write a summary interpretation of the findings.

## Deliverable 1:

# Linear Regression to Predict MPG

Statistical Summary: 
![Summary of LM](https://user-images.githubusercontent.com/46943357/206880617-b9589dc4-eec6-4592-b7bd-ecba391b1807.PNG)

From the above output we can see that:

1. The vehicle length, and vehicle ground clearance are statistically likely to provide non-random amounts of variance to the model. That is to say, the vehicle length and vehicle ground clearance have a significant impact on miles per gallon on the MechaCar prototype. Conversely, the vehicle weight, spoiler angle, and All Wheel Drive (AWD) have p-Values that indicate a random amount of variance with the dataset.

2. The p-Value for this model, p-Value: 5.35e-11, is much smaller than the assumed significance level of 0.05%. This indicates there is sufficient evidence to reject our null hypothesis, which further indcates that the slope of this linear model is not zero.

3. This linear model has an r-squared value of 0.7149, which means that approximately 71% of all mpg predictions will be determined by this model. Relatively speaking, his multiple regression model does predict mpg of MechaCar prototypes effectively.

If we remove the less impactful independent variables (vehicle weight, spoiler angle, and All Wheel Drive), the predictability does decrease, but not drastically: the r-squared value falls from 0.7149 to 0.674.

![Additoinal Info](https://user-images.githubusercontent.com/46943357/206880664-c7a508bc-bd7a-4b2f-bf64-bb56ccd8b9ff.PNG)

