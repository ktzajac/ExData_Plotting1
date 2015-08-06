tab1 <- read.table("household_power_consumption.txt", header = FALSE, colClasses = classes, sep = ";", comment.char = "",
                   col.names = names(tab5rows), na.strings = "?", skip = 66637, nrows = 2880)
tab1$datetime = strptime(paste(tab1$Date, tab1$Time), "%d/%m/%Y%H:%M:%S")

# Plot 2

png(filename =  "plot2.png") ## Open PNG device; create 'plot1.png' in my working directory

## Create plot and send to a file (no plot appears on screen)
plot(tab1$datetime, tab1$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off() ## Close the PNG file device