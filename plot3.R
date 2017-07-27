source("LoadData.R")
plot3 <- function()
{
  png(filename = "plot3.png")
  with(df, plot(Time, Sub_metering_1, type = "l", xlab = "", ylab = "Energy Sub Metering"))
  with(df, points(Time, Sub_metering_2, col = "red", type = "l"))
  with(df, points(Time, Sub_metering_3, col = "blue", type = "l"))
  legend("topright",
         col=c("black", "red", "blue"),
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty=1)
  dev.off()
  
  
}

