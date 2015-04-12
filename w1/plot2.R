#plot 2

#read data !
source("read-data.R")


#draw
par(mfrow=c(1, 1))

plot(data$dt, data$Global_active_power, pch=".", type="l", xlab = "", ylab = "Global Active Power (killowats)")

#export to png
dev.copy(png, file = "plot2.png")
dev.off()
