## Use table power2 created in in plot1.R
# make plot
png(file = "plot3.png")
with(power2, plot(Time, Sub_metering_1, type = "n", xlab = "", 
                  ylab = "Energy sub metering"))
with(power2, lines(Time, Sub_metering_1, type = "l"))
with(power2, lines(Time, Sub_metering_2, type = "l", col = "red"))
with(power2, lines(Time, Sub_metering_3, type = "l", col = "blue"))
legend("topright", pch = c(NA, NA, NA), lwd = 1, 
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()