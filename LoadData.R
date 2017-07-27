LoadData <- function()
{
  #Load the data from the text file for the specific date
  
  fi <- file("household_power_consumption.txt")
  df <- sqldf("select * from fi where
              Date in ('1/2/2007','2/2/2007')", file.format = list(header = TRUE, sep = ";"))
  close(fi)
  
  #Convert the time as DateTime and date column as class of Date
  df$Time <- strptime(paste(df$Date,df$Time), "%d/%m/%Y %H:%M:%S")
  df$Date <- as.Date(df$Date, "%d/%m/%y")
  
}