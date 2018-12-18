## load used libraries
library(dplyr)

## read in the data
household_power_consumption <- read.table("./data/household_power_consumption.txt", header = TRUE, sep = ";")

## transform dates and times into appropriate format
household_power_consumption <- mutate(household_power_consumption, 
                                      datetime = as.POSIXct(strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S", tz = "PST")),
                                      Date = NULL,
                                      Time = NULL)

## get the relevant days
household_power_consumption <- filter(household_power_consumption, as.Date(datetime) >= as.Date("2007-02-01"), as.Date(datetime) <= as.Date("2007-02-02"))

