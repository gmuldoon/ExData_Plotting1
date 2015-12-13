setwd("/Users/gail/Documents/Courses/NONUT/DataSci/Exploratory\ Analysis/Project1/")

#load the data
source("LoadData.R")

#open plot device
png(filename = "plot4.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")

#create plot

#use a 2x2 arrangement of plots, filled by the row
par(mfrow = c(2, 2))

#top left
plot(somedata$DateTime, somedata$Global_active_power, 
     type = "l",
     xlab = "", ylab = "Global Active Power")

#top right
plot(somedata$DateTime, somedata$Voltage,
     type = "l",
     xlab = "datetime", ylab = "Voltage")

#bottom left
plot(somedata$DateTime, somedata$Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(somedata$DateTime, somedata$Sub_metering_2, col = "red")
lines(somedata$DateTime, somedata$Sub_metering_3, col = "blue")
#legend with no border
legend("topright", bty = "n",col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)

#bottom right
plot(somedata$DateTime, somedata$Global_reactive_power, 
     type = "l",
     col = "black",
     xlab = "datetime", ylab = colnames(somedata)[4])

#close plot device
dev.off()
