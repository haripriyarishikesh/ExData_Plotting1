source("LoadData.R")
plot2 <- function()
{
  #Plot2
  png(filename = "plot2.png")
  plot(df$Time, df$Global_active_power,type="l", xlab="",
       + ylab="Global Active Power (kilowatts)")
  
  dev.off()
  
}
