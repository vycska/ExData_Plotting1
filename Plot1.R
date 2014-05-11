Sys.setlocale("LC_TIME","English")
data <- read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?",comment.char="",colClasses=c("character","character",rep("numeric",7)))
data2 <- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]
data2$DateTime <- strptime(paste(data2$Date,data2$Time),"%d/%m/%Y %H:%M:%S")
png("plot1.png",480,480)
hist(data2$Global_active_power,col="red",main="Global Active Power",xlab="Global Active power (kilowatts)")
dev.off()