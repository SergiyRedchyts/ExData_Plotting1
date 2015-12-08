file_name <- "household_power_consumption.txt"
data_set <- read.table(file_name, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".", na.strings = "?")
data_subset <- data_set[(data_set$Date=="1/2/2007" | data_set$Date=="2/2/2007"),]

Global_active_power <- as.numeric(data_subset$Global_active_power)
date_time <- strptime(paste(data_subset$Date, data_subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
sm1 <- as.numeric(data_subset$Sub_metering_1)
sm2 <- as.numeric(data_subset$Sub_metering_2)
sm3 <- as.numeric(data_subset$Sub_metering_3)

png("plot3.png", width=480, height=480)
  plot(date_time, sm1, type="l", ylab="Energy sub metering", xlab="")
  lines(date_time, sm2, type="l", col="red")
  lines(date_time, sm3, type="l", col="blue")
  legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red", "blue"))
dev.off()