setwd("E:/Rt/ExData_Plotting1/")
Elect = read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings="?", stringsAsFactors=FALSE)
Elect2 = Elect[Elect[,"Date"]=="1/2/2007" | Elect[,"Date"]=="2/2/2007",]
#dim(Elect2)

with(Elect2, hist(Global_active_power, xlab="Global Active Power (kilowatts)", main="Global Active Power", col="red")) ## Create plot on screen device
dev.copy(png, file="plot1.png", width=480, height=480) ## Copy my plot to a PNG file
dev.off()
