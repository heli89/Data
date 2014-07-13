
Datos <- read.table("C:/Users/melvis reinoso/Desktop/household_power_consumption1.txt", header=TRUE, sep="",  na.strings="NA", dec=".", strip.white=TRUE)
x <- as.POSIXct(strptime(paste(Datos$Date, Datos$Time), "%d/%m/%Y %H:%M:%S"))
plot(x,Datos$Sub_metering_1,type="l",ylab="Energy Sub metering")
lines (x,Datos$Sub_metering_2,type="l",ylab="Energy Sub metering", col = "red")
lines (x,Datos$Sub_metering_3,type="l",ylab="Energy Sub metering", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
dev.print(png, filename="C:/Users/melvis reinoso/Desktop/plot3.png", width=480, height=480, pointsize=12, units="px")

