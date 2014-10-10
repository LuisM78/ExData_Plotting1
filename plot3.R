xdata  <- read.table("xdata.txt",sep=",",header=TRUE)

png(filename="plot3.png",width=480,height=480,units="px",bg="transparent")
with(xdata,plot(as.POSIXlt(time_type),as.numeric(as.character(xdata$Sub_metering_1)),"l",col="black",ylab="",xlab=""))
with(xdata,lines(as.POSIXlt(time_type),as.numeric(as.character(xdata$Sub_metering_2)),col="red"))
with(xdata,lines(as.POSIXlt(time_type),as.numeric(as.character(xdata$Sub_metering_3)),col="blue"))
title(main=NULL,sub=NULL,xlab=NULL,ylab="Energy sub metering")
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()