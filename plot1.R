# The file has been subsetted already
raw_data<-read.csv('household_power_consumption.txt',sep=';')
png(file='plot1.png',width=480,height=480)
hist(raw_data$Global_active_power, col='red',xlab='Global Active Power (kilowatt)',main='Global Active Power')
dev.off()
