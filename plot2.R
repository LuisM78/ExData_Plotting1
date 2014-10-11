# reads the subset data frame created in plot1.R

xdata  <- read.table("xdata.txt",sep=",",header=TRUE)

# creates the new file (plot2.png) and plots the data.

png(filename="plot2.png",width=480,height=480,units="px",bg="transparent")
with(xdata,plot(as.POSIXlt(time_type),as.numeric(as.character(Global_active_power)),"l",xlab="",ylab="Global Active Power (kilowatts)"))
dev.off()