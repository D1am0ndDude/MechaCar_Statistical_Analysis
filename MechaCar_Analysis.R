### CHALLENGE 15: DELIVERABLE 1

library(dplyr) #Load Library

library(tidyverse) # Import and read CSV file as DataFrame
mecha_mpg <- read.csv(file='./Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform Linear Regression using LM()
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)

# Using the Summary() function, determine the p-value and the r-squared value for linear regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg))

# Eliminate the independent variables that have little impact on predicting mpg to see impact:
lm(mpg ~ vehicle_length + ground_clearance, data=mecha_mpg)
summary(lm(mpg ~ vehicle_length + ground_clearance, data=mecha_mpg))


## Deliverable 2

# Import CSV as DataFrame
mecha_coil <- read.csv(file='./Resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F) 

# Create a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- mecha_coil %>% summarize(Mean_PSI=mean(PSI),
total_summary <- mecha_coil %>% summarize(Mean_PSI=mean(PSI),
                                          Var_PSI=median(PSI),
                                          Std_Dev_PSI=sd(PSI),
                                          Num_Coil=n(), .groups = 'keep')
# Create a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot.
lot_summary <- mecha_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                        Var_PSI=median(PSI),
                                                                        Std_Dev_PSI=sd(PSI),
                                                                        Num_Coil=n(), .groups = 'keep')
