#plot 3

#read data !
source("read-data.R")

#plot
par(mfrow=c(1, 1))

plot(data$dt, data$Sub_metering_1, pch=".", type="l", xlab = "", ylab = "Energy sub metering", col="black")
points(data$dt, data$Sub_metering_2, pch=".", type="l", col="red")
points(data$dt, data$Sub_metering_3, pch=".", type="l", col="blue")

legend(x="topright", col=c("black","red","blue"), lty=1, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_2"))


#export to png
dev.copy(png, file = "plot3.png")
dev.off()
