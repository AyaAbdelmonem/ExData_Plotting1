
plot_2 <- function()
  
  {
  ## to convert the language of date to english .
  Sys.setlocale(category = "LC_ALL",locale = "english")
  ## to return date in specific format day-month-year
  assumption_2$Date <- as.Date(assumption_2$Date, format = "%d/%m/%Y")
  assumption_2$DateTime <- as.POSIXct(paste(assumption_2$Date, assumption_2$Time))
  ##to create a png file in top level directory.
  png(filename = "C:/Users/dell/Desktop/Plotting project 1/ExData_Plotting1/plot2.png",height = 480, width = 480 , units="px")
  plot(assumption_2$DateTime, assumption_2$Global_active_power,xlab = "", ylab = "Global Active Power (kilowatt)" , type = 'l')
  dev.off()
 
 }