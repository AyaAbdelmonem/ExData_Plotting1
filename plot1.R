plot_1 <- function()
{
  library(datasets)
  ##create a png file to save plot as image.
  png(filename = "C:/Users/dell/Desktop/Plotting project 1/ExData_Plotting1/plot1.png", width = 480, height = 480, units="px")
  ##building a plot which describes the histogram.
  with(assumption_2, hist(Global_active_power, xlab = 'Global Active Power (kilowatt)', main = 'Global Active Power', col = 'red'))
  dev.off()
}