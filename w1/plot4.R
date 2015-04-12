#plot 4

#read data !
source("read-data.R")

par(mfrow=c(2, 2))

#first plot
plot(data$dt, data$Global_active_power, pch=".", type="l", xlab = "", ylab = "Global Active Power")


#second plot
plot(data$dt, data$Voltage, pch=".", type="l", xlab = "datetime", ylab = "Voltage")


#third plot
plot(data$dt, data$Sub_metering_1, type= "l", pch=".", xlab = "", ylab = "Energy sub metering")
points(data$dt, data$Sub_metering_2, pch=".", col="red", type="l")
points(data$dt, data$Sub_metering_3, pch=".", col="blue", type="l")
legend(x="topright", col=c("black","red","blue"), lty=1, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_2"))

#fourth plot
plot(data$dt, data$Global_reactive_power, type="l", pch=".", xlab = "datetime", ylab="Global_reactive_power")

#export to png
dev.copy(png, file = "plot4.png")
dev.off()
