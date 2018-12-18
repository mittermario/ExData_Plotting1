## load packages
library(graphics)
library(grDevices)

## load the data using the R script load_data.R
source("./load_data.R")

## Create Histogram for Plot 1
png(filename = "plot1.png")

hist(household_power_consumption$Global_active_power, 
                    col = 'red', 
                    breaks = 12,#seq(0, 4000, by = 250), 
                    main = 'Global Active Power', 
                    xlab = 'Global Active Power (kilowatts)')

dev.off()

remove(household_power_consumption)

