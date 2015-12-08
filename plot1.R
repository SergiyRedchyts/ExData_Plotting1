file_name <- "household_power_consumption.txt"
data_set <- read.table(file_name, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".", na.strings = "?")
data_subset <- data_set[(data_set$Date=="1/2/2007" | data_set$Date=="2/2/2007"),]

Global_active_power <- as.numeric(data_subset$Global_active_power)

png("plot1.png", width=480, height=480)
  hist(Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()