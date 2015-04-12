#week one

#read data

#### TODO 
# 1. DOWNLOAD AND UNZIP DATA to `data` folder
# https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
# 2. Set working directory
# setwd("C:/dev/coursera/data-science/exploratory/w1")

# read data for two years staring from 2006, NOT convert string to factors
xdata <- read.csv("./data/household_power_consumption.txt", na.strings=c("?"), sep=";", as.is = T, nrows = 60 * 24 * 365 * 2)

#head(xdata)
#tail(xdata)

#select specific dates
data <- xdata[which(xdata$Date == "1/2/2007" | xdata$Date == "2/2/2007"), ]

#fill date time column
data$dt <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

#head(data)
#tail(data)

