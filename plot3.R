tab1 <- read.table("household_power_consumption.txt", header = FALSE, colClasses = classes, sep = ";", comment.char = "",
                   col.names = names(tab5rows), na.strings = "?", skip = 66637, nrows = 2880)
tab1$datetime = strptime(paste(tab1$Date, tab1$Time), "%d/%m/%Y%H:%M:%S")

# Plot 3

png(filename =  "plot3.png") ## Open PNG device; create 'plot1.png' in my working directory

## Create plot and send to a file (no plot appears on screen)
plot(tab1$datetime, tab1$Sub_metering_1, type = "l",  col = "black", xlab = "", ylab = "Energy sub metering")
lines(tab1$datetime, tab1$Sub_metering_2, type = "l", col = "red")
lines(tab1$datetime, tab1$Sub_metering_3, type = "l", col = "blue")
legend("topright", col = c("black", "blue", "red"), lty = 1, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off() ## Close the PNG file device