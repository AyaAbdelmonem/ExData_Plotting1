plot_4 <- function()
  
{
  ## convert datetime language to an english .
  Sys.setlocale(category = "LC_ALL",locale = "english")
  ## specifying the date format.
  assumption_2$Date <- as.Date(assumption_2$Date, format = "%d/%m/%Y")
  assumption_2$DateTime <- as.POSIXct(paste(assumption_2$Date, assumption_2$Time))
  png(filename = "C:/Users/dell/Desktop/Plotting project 1/ExData_Plotting1/plot4.png",height = 480, width = 480 , units="px")
  ##specify the number of cols and rows .
  par(mfcol=c(2,2),mar=c(5,4,2,1))
  ##building plots
  plot(assumption_2$DateTime, assumption_2$Global_active_power, xlab = "",ylab = "Global Active Power (kilowatt)" , type = 'l')
  plot(assumption_2$DateTime, assumption_2$Sub_metering_1,xlab = "", ylab = "Energy sub metering",type = "l")
  lines(assumption_2$DateTime, data$Sub_metering_2, col = "red")
  lines(assumption_2$DateTime, data$Sub_metering_3, col = "blue")
  legend("topright",lty = c(1, 1, 1) ,col=c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  plot(assumption_2$DateTime,assumption_2$Voltage,xlab = "datetime",ylab = "Voltage",type = "l")
  plot(assumption_2$DateTime,assumption_2$Global_reactive_power,xlab = "datetime",ylab = "Global_reactive_power",type = "l")
  
  dev.off()
}