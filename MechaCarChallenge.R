#load the dplyr package
library(tidyverse)
#import and read in the MechaCar_mpg.csv file as a dataframe
MechaCar_mpg <- read.csv(file='/Users/imanjean-jacques/Documents/Data_Analytics_Bootcamp/R_Analysis/AutosRUs/MechaCar_mpg.csv', stringsAsFactors = F)
#multiple linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)
#determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg))

#import and read in the Suspension_Coil.csv file as a table
Suspention_table <- read.csv(file='/Users/imanjean-jacques/Documents/Data_Analytics_Bootcamp/R_Analysis/AutosRUs/Suspension_Coil.csv',check.names=F, stringsAsFactors = F)
#create a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column
total_summary <- Suspention_table %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), PSI_VAR=var(PSI), PSI_STDev=sd(PSI), .groups = 'keep')
#create a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column
lot_summary <- Suspention_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), PSI_VAR=var(PSI), PSI_STDev=sd(PSI), .groups = 'keep')

#determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch
t.test(log10(lot_summary$Mean_PSI),mu=mean(log10(Suspention_table$PSI)))

#determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
t.test(Suspention_table$PSI, mu=1500)

#three RScripts using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
lot_1 <- t.test(subset(Suspention_table,Manufacturing_Lot == "Lot1")$PSI, mu=1500)

lot_2 <-t.test(subset(Suspention_table,Manufacturing_Lot == "Lot2")$PSI, mu=1500)

lot_3 <- t.test(subset(Suspention_table,Manufacturing_Lot == "Lot3")$PSI, mu=1500)