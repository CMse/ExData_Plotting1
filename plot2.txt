# The file has been subsetted already
raw_data<-read.csv('household_power_consumption.txt',sep=';')

plot.new()
plot(raw_data$Global_active_power,type='l',main='',ann=FALSE, axes=FALSE)
axis(2,las=1,at=2*0:y_range[2])
axis(1,las=1,at=c(0,1440,2880),lab=c('Thu','Fri','Sat'))
title(ylab='Global Active Power (kilowatts)')