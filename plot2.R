Datos <- read.table("C:/Users/melvis reinoso/Desktop/household_power_consumption1.txt", header=TRUE, sep="",  na.strings="NA", dec=".", strip.white=TRUE)
Sys.setlocale("LC_TIME", "English")
x <- as.POSIXct(strptime(paste(Datos$Date, Datos$Time), "%d/%m/%Y %H:%M:%S"))
plot(x,Datos$Global_active_power,type="l",ylab="Global Active Power (Kilowatts)")
dev.print(png, filename="C:/Users/melvis reinoso/Desktop/plot2.png", width=480, height=480, pointsize=12, units="px")

