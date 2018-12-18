## load packages
library(graphics)
library(grDevices)

## load the data using the R script load_data.R
source("./load_data.R")

## Create Plot 2
png(filename = "plot2.png")

with(household_power_consumption, 
        plot(datetime,
             Global_active_power, 
             type = "l",
             xlab = "",
             ylab = 'Global Active Power (kilowatts)'))

dev.off()

remove(household_power_consumption)
