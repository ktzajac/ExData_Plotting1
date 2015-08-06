tab1 <- read.table("household_power_consumption.txt", header = FALSE, colClasses = classes, sep = ";", comment.char = "",
                   col.names = names(tab5rows), na.strings = "?", skip = 66637, nrows = 2880)

# Plot 1

png(filename =  "plot1.png") ## Open PNG device; create 'plot1.png' in my working directory

## Create plot and send to a file (no plot appears on screen)
hist(tab1$Global_active_power, col = "tomato", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.off() ## Close the PNG file device