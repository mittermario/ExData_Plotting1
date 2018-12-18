## load packages
library(graphics)
library(grDevices)

## load the data using the R script load_data.R
source("./load_data.R")

## Create Plot 3
png(filename = "plot3.png")

with(household_power_consumption, 
        plot(datetime,
             Sub_metering_1,
             col = "black",
             type = "l",
             xlab = "",
             ylab = 'Energy sub metering'))

with(household_power_consumption, 
     lines(datetime,
          Sub_metering_2,
          col = "red",
          type = "l"))

with(household_power_consumption, 
     lines(datetime,
           Sub_metering_3,
           col = "blue",
           type = "l"))

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = c(1, 1, 1), col = c("black", "red", "blue"))

dev.off()
