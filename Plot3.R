HPC <- read.csv(file="household_power_consumption.txt", sep=";",header = TRUE)
HPC[10] <- as.POSIXct(paste(HPC$Date,HPC$Time),format = "%d/%m/%Y %H:%M:%S")
colnames(HPC)[10] <- "DateTime"
png("plot3.png", width = 480, height= 480)
plot(x= HPC$DateTime, y= HPC$Sub_metering_1, col = "black", type = "l", xlab = "", ylab = "Energy sub meeting")
lines(x= HPC$DateTime, y= HPC$Sub_metering_2, col = "red", xlab = "", ylab = "Energy sub meeting") 
lines(x= HPC$DateTime, y= HPC$Sub_metering_3, col = "blue", xlab= "", ylab = "Energy sub meeting")
legend("topright", col = c("black", "red", "blue"), lty = c (1,1,1), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()