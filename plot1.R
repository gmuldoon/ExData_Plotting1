setwd("/Users/gail/Documents/Courses/NONUT/DataSci/Exploratory\ Analysis/Project1/")

#load the data
source("LoadData.R")

#open plot device
png(filename = "plot1.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")

#make histogram of Global Active power from Feb 1-Feb 2 2007
hist(somedata$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red",
     ylim=c(0,1200),breaks=12)

#close plot device
dev.off()

