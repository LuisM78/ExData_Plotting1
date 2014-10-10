xdata  <- read.table("xdata.txt",sep=",",header=TRUE)

png(filename="plot2.png",width=480,height=480,units="px",bg="transparent")
with(xdata,plot(as.POSIXlt(time_type),as.numeric(as.character(Global_active_power)),"l",xlab="",ylab="Global Active Power (kilowatts)"))
dev.off()