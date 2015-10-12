# The file has been subsetted already
raw_data<-read.csv('household_power_consumption.txt',sep=';')
y_range=range(0,raw_data$Sub_metering_1, raw_data$Sub_metering_2, raw_data$Sub_metering_3)

png(file='plot3.png',width=480,height=480)
plot(raw_data$Sub_metering_1,type='l',ann=FALSE, axes=FALSE, col='black')
lines(raw_data$Sub_metering_2,type='l',col='red')
lines(raw_data$Sub_metering_3,type='l',col='blue')

axis(2,las=1,at=10*0:y_range[2])
axis(1,las=1,at=c(0,1440,2880),lab=c('Thu','Fri','Sat'))
title(ylab='Energy sub metering')

legend('topright', legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col=c('black','red','blue'),lwd=1)
dev.off()
