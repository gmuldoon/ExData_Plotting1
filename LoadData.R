#load data
file <- "household_power_consumption.txt"
alldata <- read.csv(file, header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')

#define the date as a date so we can use it to subset alldata
alldata$Date <- as.Date(alldata$Date, format="%d/%m/%Y")

#pick out only the two days of interest
somedata <- subset(alldata, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

#create a variable for continuous date and time info
datetime <- paste(somedata$Date, somedata$Time)
#somedata$DateTime <- strptime(datetime, "%d/%m/%Y %H:%M:%S")
somedata$DateTime <- as.POSIXct(datetime)


rm(alldata)
