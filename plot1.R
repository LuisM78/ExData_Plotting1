

data <- read.table("household_power_consumption.txt",sep=";",header=TRUE)

# prints the object size
size <- format(object.size(data),units="auto")
names(data)
class(data$Date)
# type is factor
Date_type<- as.Date(data$Date,"%d/%m/%Y")
class(data$Time)
# type is factor too
datapasted<-paste(Date_type,data$Time)

datapasted2 <-strptime(datapasted,format="%Y-%m-%d %H:%M:%S")

#Time_type <- strptime(data$Time, "%H:%M:%S")

data$time_type <-datapasted2 

#as.POSIXct(paste(data$Date,data$Time),format="%Y/%m/%d %H:%M:%S")
# doesnt work directly
#as.POSIXct(paste(Date_type,Time_type),format="%Y/%m/%d %H:%M:%S")

#timevector <-  data$time_type > as.POSIXlt("2007-02-01")

#timevector2 <- data$time_type < as.POSIXlt("2007-02-01")

# Data interval is two days
xdata <- subset(data,time_type>as.POSIXlt("2007-02-01") & time_type< as.POSIXlt("2007-02-03") )
png(filename="plot1.png",width=480,height=480,units="px",bg="transparent")
Global_active_power <- as.numeric(as.character(xdata$Global_active_power))
hist(Global_active_power,col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()


write.table(xdata,file="xdata.txt", sep=",")
