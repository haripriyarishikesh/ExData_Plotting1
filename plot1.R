source("DataLaod.R")
plot1 <- function()

{
  #plot1
  
  png(filename = "plot1.png")
  hist(df$Global_active_power, col = "red", 
       main = "Global Active Power", xlab = "Global Active Power killowatts")
  dev.off()
  
}


