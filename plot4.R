#
## This file plots the graph 4
#

# Load the common.R source file
source("common.R")

plot4 <- function() {
  # Calls the load_data function from the "common.R" source file
  data <- load_data()
  
  # prepares the PNG file
  png( "plot4.png", width=480, height=480)
  
  par( mfrow=c( 2 , 2 ) )

  # PLOT 1
  with(data, {
    plot( timestamp , 
          as.numeric(as.character(Global_active_power)), 
          type="l", 
          xlab="datetime (in french)",
          ylab="Global Active Power") 
  })
  
  # PLOT 2
  with(data, {
    plot( timestamp , 
          as.numeric(as.character(Voltage)), 
          type="l", 
          xlab="datetime (in french)",
          ylab="Voltage") 
  })
    
  # PLOT 3
  with(data, {
    plot( timestamp , 
          as.numeric(as.character(Sub_metering_1)), 
          type="l" , 
          xlab="datetime (in french)",
          ylab="Energy sub metering")
    lines( timestamp, as.numeric(as.character(Sub_metering_2)), type="l" , col="red" )
    lines( timestamp, as.numeric(as.character(Sub_metering_3)), type="l" , col="blue" )
  })  
  legend( "topright", legend=c( "Sub_metering_1" , "Sub_metering_2" , "Sub_metering_3" ), lwd="1", col=c( "black", "red", "blue" ) )
  
  # PLOT 4
  with(data, {
    plot( timestamp, 
          as.numeric(as.character(Global_reactive_power)), 
          type="l",
          xlab="datetime (in french)",
          ylab="Global_reactive_power")
  })  
  
  dev.off()
}

plot4()