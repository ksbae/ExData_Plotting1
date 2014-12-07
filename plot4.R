setwd("E:/Rt/ExData_Plotting1/")
Elect = read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings="?", stringsAsFactors=FALSE)
Elect2 = Elect[Elect[,"Date"]=="1/2/2007" | Elect[,"Date"]=="2/2/2007",]
Len = nrow(Elect2)
attach(Elect2)

png(file="plot4.png", width=480, height=480)
par(mfrow=c(2,2))

plot(Global_active_power, xlab="", ylab="Global Active Power", type="l", xaxt="n")
axis(1, at=c(1, Len/2, Len), labels=c("Thu","Fri","Sat"))

plot(Voltage, xlab="datetime", ylab="Voltage", type="l", xaxt="n")
axis(1, at=c(1, Len/2, Len), labels=c("Thu","Fri","Sat"))

plot(Sub_metering_1, xlab="", ylab="Energy sub metering", type="l", xaxt="n")
lines(Sub_metering_2, col="red")
lines(Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), col=c("black","red","blue"), cex=0.9, bty="n")
axis(1, at=c(1, Len/2, Len), labels=c("Thu","Fri","Sat"))

plot(Global_reactive_power, xlab="datetime", type="l", xaxt="n")
axis(1, at=c(1, Len/2, Len), labels=c("Thu","Fri","Sat"))

#dev.copy(png, file = "plot4.png", width=480, height=480) ## Copy my plot to a PNG file
dev.off()
