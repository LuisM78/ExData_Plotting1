# Reads the subset data from plot1.R for quicker processing

xdata  <- read.table("xdata.txt",sep=",",header=TRUE)

# Creates plot4.png graphic device and plots the data.

png(filename="plot4.png",width=480,height=480,units="px",bg="transparent")


par(mfrow=c(2,2))



Global_active_power <- as.numeric(as.character(xdata$Global_active_power))
with(xdata,plot(as.POSIXlt(time_type),as.numeric(as.character(Global_active_power)),"l",xlab="",ylab="Global Active Power (kilowatts)"))

with(xdata,plot(as.POSIXlt(time_type),as.numeric(as.character(xdata$Voltage)),"l",col="black",ylab="",xlab=""))
title(main=NULL,sub=NULL,xlab="datetime",ylab="Voltage")

with(xdata,plot(as.POSIXlt(time_type),as.numeric(as.character(xdata$Sub_metering_1)),"l",col="black",ylab="",xlab=""))
with(xdata,lines(as.POSIXlt(time_type),as.numeric(as.character(xdata$Sub_metering_2)),col="red"))
with(xdata,lines(as.POSIXlt(time_type),as.numeric(as.character(xdata$Sub_metering_3)),col="blue"))
title(main=NULL,sub=NULL,xlab=NULL,ylab="Energy sub metering")
legend("topright",bty="n",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))


with(xdata,plot(as.POSIXlt(time_type),as.numeric(as.character(xdata$Global_reactive_power)),"l",col="black",ylab="",xlab=""))
title(main=NULL,sub=NULL,xlab="datetime",ylab="Global_reactive_power")

dev.off()