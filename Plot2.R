HPC <- read.csv(file="household_power_consumption.txt", sep=";",header = TRUE)
HPC[10] <- as.POSIXct(paste(HPC$Date,HPC$Time),format = "%d/%m/%Y %H:%M:%S")
colnames(HPC)[10] <- "DateTime"
png("plot2.png", width = 480, height= 480)
plot(x = HPC$DateTime, y = HPC$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l") 
dev.off()