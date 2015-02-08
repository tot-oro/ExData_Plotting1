setwd("/Users/vivi/Dropbox/DataScience/Exploratory-Data-Analysis/Project1")

# import data
power <- read.table("household_power_consumption.txt", header = TRUE, sep = ";",
                    colClasses = c("character", "character", "character", 
                                   "character", "character", "character", 
                                   "character", "character", "character"))

# convert date and time
power$Date <- as.Date(power$Date, format = "%d/%m/%Y")
power$Time <- strptime(paste(power$Date, power$Time), format = "%Y-%m-%d %H:%M:%S")

# subset data
power2 <- power[power$Date == "2007-02-01" | power$Date == "2007-02-02", ]

# convert other variables to numeric
for (i in 3:9){
        power2[, i] <- as.numeric(power2[, i])
}

# making plot
library(datasets)
png(file = "plot1.png")
with(power2, hist(Global_active_power, col = "red", main = "Golbal Active Power",
     xlab = "Golbal Active Power (kilowatts)"))
dev.off()
 
