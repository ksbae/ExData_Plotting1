setwd("E:/Rt/ExData_Plotting1/")
Elect = read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings="?", stringsAsFactors=FALSE)
Elect2 = Elect[Elect[,"Date"]=="1/2/2007" | Elect[,"Date"]=="2/2/2007",]
Len = nrow(Elect2)

attach(Elect2)
plot(Global_active_power, xlab="", ylab="Global Active Power (kilowatts)", type="l", xaxt="n")
axis(1, at=c(1, Len/2, Len), labels=c("Thu","Fri","Sat"))
 
dev.copy(png, file = "plot2.png", width=480, height=480) ## Copy my plot to a PNG file
dev.off()
