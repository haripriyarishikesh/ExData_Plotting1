source("LoadData.R")
plot4 <- function()
{
  png(filename = "plot4.png")
  par(mfrow = c(2,2))
  plot(df$Time, df$Global_active_power, type = "l", xlab = "",
       ylab = "GLobal Active Power")
  plot(df$Time, df$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
  
  with(df, plot(Time, Sub_metering_1, type = "l", xlab = "", ylab = "Energy Sub Metering"))
  with(df, points(Time, Sub_metering_2, col = "red", type = "l"))
  with(df, points(Time, Sub_metering_3, col = "blue", type = "l"))
  legend("topright",
         col=c("black", "red", "blue"),
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty=1)
  
  plot(df$Time, df$Global_reactive_power, xlab="datetime", 
       ylab = "Global_reactive_power", type = "l")
  dev.off()
  
}


