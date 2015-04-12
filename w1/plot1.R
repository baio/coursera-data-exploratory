#plot 1

#read data !
source("read-data.R")

#draw
par(mfrow=c(1, 1))
hist(data$Global_active_power, xlab="Global Active Power (kilowatts)", col="red", main="Global Active Power")

#export to png
dev.copy(png, file = "plot1.png")
dev.off()
