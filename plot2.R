## Use table power2 created in in plot1.R
# make plot
png(file = "plot2.png")
with(power2, plot(Time, Global_active_power, type = "l", xlab = "", 
                  ylab = "Golbal Active Power (kilowatts)"))
dev.off()