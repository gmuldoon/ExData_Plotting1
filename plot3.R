setwd("/Users/gail/Documents/Courses/NONUT/DataSci/Exploratory\ Analysis/Project1/")

#load the data
source("LoadData.R")

#open plot device
png(filename = "plot3.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")

#create plot
plot(somedata$DateTime,somedata$Sub_metering_1,type="l",col="black",ylab="Energy sub metering",xlab="")
lines(somedata$DateTime,somedata$Sub_metering_2,col="red")
lines(somedata$DateTime,somedata$Sub_metering_3,col="blue")
legend("topright",col=c("black","red","blue"),c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

#close plot device
dev.off()
