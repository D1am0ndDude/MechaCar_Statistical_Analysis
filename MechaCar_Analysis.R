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
# Box Plot
plot1 <- ggplot(mecha_coil, aes(y=PSI)) # Import dataset into ggplot2
plot1 + geom_boxplot() # Add BoxPlot

plot2 <- ggplot(mecha_coil, aes(x=Manufacturing_Lot, y=PSI)) # Import dataset into ggplot2
plot2 + geom_boxplot()

# Deliverable 3

# use t.test() to determine if the PSI across ALL lots is statistically different from the pop. mean of 1,500 PSI.
t.test(mecha_coil$PSI, mu=1500)

# Use t.test() function 3 more times with subset() to determine if PSI for each manufacturing lot is statistically different from the pop. mean of 1,500 PSI
lot1 <- subset(mecha_coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(mecha_coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(mecha_coil, Manufacturing_Lot=="Lot3")

# Run Another T.Test
t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
