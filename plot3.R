# The file has been subsetted already
raw_data<-read.csv('household_power_consumption.txt',sep=';')

plot.new()
plot(raw_data$Sub_metering_1,type='l',ann=FALSE, axes=FALSE, col='black')
lines(raw_data$Sub_metering_2,type='l',col='red')
lines(raw_data$Sub_metering_3,type='l',col='blue')