setwd("E:/Rt/ExData_Plotting1/")
Elect = read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings="?", stringsAsFactors=FALSE)
Elect2 = Elect[Elect[,"Date"]=="1/2/2007" | Elect[,"Date"]=="2/2/2007",]
Len = nrow(Elect2)

attach(Elect2)
par(mfrow=c(1,1))
#png(file="plot3.png", width=480, height=480)

plot(Sub_metering_1, xlab="", ylab="Energy sub metering", type="l", xaxt="n")
lines(Sub_metering_2, col="red")
lines(Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), col=c("black","red","blue"), cex=0.9)
axis(1, at=c(1, Len/2, Len), labels=c("Thu","Fri","Sat"))
 
dev.copy(png, file = "plot3.png", width=480, height=480) ## Copy my plot to a PNG file
dev.off()
