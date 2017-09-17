HPC <- read.csv(file="household_power_consumption.txt", sep=";",header = TRUE)
png("plot1.png", width = 480, height= 480)
hist(HPC$Global_active_power, col = "red", main = "Global Active Power", xlab= "Global Active Power (kilowatts)")
dev.off()