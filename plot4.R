
Datos <- read.table("C:/Users/melvis reinoso/Desktop/household_power_consumption1.txt", header=TRUE, sep="",  na.strings="NA", dec=".", strip.white=TRUE)
par(mfrow = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))
x <- as.POSIXct(strptime(paste(Datos$Date, Datos$Time), "%d/%m/%Y %H:%M:%S"))
plot(x,Datos$Global_active_power,type="l",ylab="Global Active Power (Kilowatts)")
plot(x,Datos$Voltage,type="l",ylab="Voltage",xlab="Datetime")
plot(x,Datos$Sub_metering_1,type="l",ylab="Energy Sub metering")
lines (x,Datos$Sub_metering_2,type="l",ylab="Energy Sub metering", col = "red")
lines (x,Datos$Sub_metering_3,type="l",ylab="Energy Sub metering", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
plot(x,Datos$Global_reactive_power,type="l",ylab="Global_reactive_power",xlab="Datetime")
dev.print(png, filename="C:/Users/melvis reinoso/Desktop/plot4.png", width=480, height=480, pointsize=12, units="px")


