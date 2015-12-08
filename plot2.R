file_name <- "household_power_consumption.txt"
data_set <- read.table(file_name, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".", na.strings = "?")
data_subset <- data_set[(data_set$Date=="1/2/2007" | data_set$Date=="2/2/2007"),]

Global_active_power <- as.numeric(data_subset$Global_active_power)
date_time <- strptime(paste(data_subset$Date, data_subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot2.png", width=480, height=480)
  plot(date_time, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()