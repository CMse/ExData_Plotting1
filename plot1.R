setwd('/Users/Harsh/Documents/Education/Exploratory/course-project-1')
raw_data<-read.csv('household_power_consumption.txt',sep=';')
hist(raw_data$Global_active_power, col='red',xlab='Global Active Power (kilowatt)',main='Global Active Power')
