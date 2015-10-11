# The file has been subsetted already
raw_data<-read.csv('household_power_consumption.txt',sep=';')

plot.new()
hist(raw_data$Global_active_power, col='red',xlab='Global Active Power (kilowatt)',main='Global Active Power')
