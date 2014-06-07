#
## This file plots the graph 3
#

# Load the common.R source file
source("common.R")

plot3 <- function() {
  # Calls the load_data function from the "common.R" source file
  data <- load_data()
  
  # prepares the PNG file
  png( "plot3.png", width=480, height=480)
  
  # create the graph
  with(data, {
    plot( timestamp , 
          as.numeric(as.character(Sub_metering_1)), 
          type="l" , 
          xlab="(Days are in french)",
          ylab="Energy sub metering"  )
    # Adds the other lines into the plot with specifiing color
    lines( timestamp, as.numeric(as.character(Sub_metering_2)), type="l" , col="red" )
    lines( timestamp, as.numeric(as.character(Sub_metering_3)), type="l" , col="blue" )
  })
  
  # Adds a legend to the top right position of the graph
  legend( "topright", 
          legend=c( "Sub_metering_1" , "Sub_metering_2" , "Sub_metering_3" ), 
          lwd="1", 
          col=c( "black", "red", "blue" ) )
  
  dev.off()
}

plot3()