plot_3 <- function()
{
  ## to convert the language of date to english .
  Sys.setlocale(category = "LC_ALL",locale = "english")
  ## to return date in specific format day-month-year
  assumption_2$Date <- as.Date(assumption_2$Date, format = "%d/%m/%Y")
  assumption_2$DateTime <- as.POSIXct(paste(assumption_2$Date, assumption_2$Time))
  ##to create a png file in top level directory.
  png(filename = "C:/Users/dell/Desktop/Plotting project 1/ExData_Plotting1/plot3.png",height = 480, width = 480 , units="px")
 ## creating plot
   plot(assumption_2$DateTime, assumption_2$Sub_metering_1,xlab = "", ylab = "Energy sub metering",type = "l")
  ##adding points to the same graph by using lines() function 
   lines(assumption_2$DateTime, data$Sub_metering_2, col = "red")
  lines(assumption_2$DateTime, data$Sub_metering_3, col = "blue")
  ## creating a legend that describes points .
  legend("topright",lty = c(1, 1, 1) ,col=c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  dev.off()

}
