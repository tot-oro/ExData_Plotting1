## Use table power2 created in in plot1.R
# make plot
png(file = "plot4.png")
par(mfrow = c(2, 2))

# plot1.1
with(power2, plot(Time, Global_active_power, type = "l", xlab = "", 
                  ylab = "Golbal Active Power"))
# plot1.2
with(power2, plot(Time, Voltage, type = "l", xlab = "datetime", 
                  ylab = "Voltage"))
# plot2.1
with(power2, plot(Time, Sub_metering_1, type = "n", xlab = "", 
                  ylab = "Energy sub metering"))
with(power2, lines(Time, Sub_metering_1, type = "l"))
with(power2, lines(Time, Sub_metering_2, type = "l", col = "red"))
with(power2, lines(Time, Sub_metering_3, type = "l", col = "blue"))
legend("topright", pch = c(NA, NA, NA), lwd = 1, bty = "n", 
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
# plot2.2
with(power2, plot(Time, Global_reactive_power, type = "l", xlab = "datetime", 
                  ylab = "Global_reactive_power"))

dev.off()