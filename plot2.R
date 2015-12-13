setwd("/Users/gail/Documents/Courses/NONUT/DataSci/Exploratory\ Analysis/Project1/")

#load the data
source("LoadData.R")

#open plot device
png(filename = "plot2.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")

#create plot
plot(somedata$Global_active_power~somedata$DateTime, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")

#close plot device
dev.off()

