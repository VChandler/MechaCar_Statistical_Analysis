# Deliverable 1
library(dplyr)
mecha_df <- read.csv(file='MechaCar_mpg.csv',check.names = T,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_df)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_df))

# Deliverable 2
sus_coil <- read.csv(file='Suspension_Coil.csv',check.names = T,stringsAsFactors = F) # Reads in suspension coil data
total_summary <- sus_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))# Creates summary dataframe of sus_coil
lot_summary <- sus_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = "keep" )# Creates summary dataframe of sus_coil by lot