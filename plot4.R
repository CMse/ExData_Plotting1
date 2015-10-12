# The file has been subsetted already
raw_data<-read.csv('household_power_consumption.txt',sep=';')
sub_metering_range=range(0,raw_data$Sub_metering_1, raw_data$Sub_metering_2, raw_data$Sub_metering_3)
global_active_power_range=range(0,raw_data$Global_active_power)
voltage_range=range(0,raw_data$Voltage)
global_reactive_power_range=range(0,raw_data$Global_reactive_power)

png(file='plot4.png',width=480,height=480)
par(mfrow=c(2,2))

# Plot 1,1
plot(raw_data$Global_active_power,type='l',main='',ann=FALSE, axes=FALSE)
axis(2,las=1,at=2*0:global_active_power_range[2])
axis(1,las=1,at=c(0,1440,2880),lab=c('Thu','Fri','Sat'))
title(ylab='Global Active Power (kilowatts)')

# Plot 1,2
plot(raw_data$Voltage,type='l',main='',ann=FALSE, axes=FALSE)
axis(2,las=1,at=2*0:voltage_range[2])
axis(1,las=1,at=c(0,1440,2880),lab=c('Thu','Fri','Sat'))
title(ylab='Voltage')

# Plot 2,1
plot(raw_data$Sub_metering_1,type='l',ann=FALSE, axes=FALSE, col='black')
lines(raw_data$Sub_metering_2,type='l',col='red')
lines(raw_data$Sub_metering_3,type='l',col='blue')
axis(2,las=1,at=10*0:sub_metering_range[2])
axis(1,las=1,at=c(0,1440,2880),lab=c('Thu','Fri','Sat'))
title(ylab='Energy sub metering')
legend('topright', legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col=c('black','red','blue'),lwd=1)

# Plot 2,2
plot(raw_data$Global_reactive_power,type='l',main='',ann=FALSE, axes=FALSE)
axis(2,las=1,at=2*0:global_reactive_power_range[2])
axis(1,las=1,at=c(0,1440,2880),lab=c('Thu','Fri','Sat'))
title(ylab='Global_reactive_power')

dev.off()
