Datos <- read.table("C:/Users/melvis reinoso/Desktop/household_power_consumption1.txt", header=TRUE, sep="",  na.strings="NA", dec=".", strip.white=TRUE)
with(Datos, Hist(Global_active_power, scale="frequency", breaks="Sturges", col="Red"))
dev.print(png, filename="C:/Users/melvis reinoso/Desktop/plot1.png", width=480,   height=480, pointsize=12, units="px")


