#
## This file plots the graph 2
#

# Load the common.R source file
source("common.R")

plot2 <- function() {
  # Calls the load_data function from the "common.R" source file
  data <- load_data()
  
  # prepares the PNG file
  png( "plot2.png", width=480, height=480)
  
  # create the graph
  with(data, {
    plot( timestamp , 
          as.numeric(as.character(Global_active_power)), 
          type="l", 
          xlab="(Days are in french)",
          ylab="Global Active Power (kilowatts)") 
  })
  
  dev.off()
}

plot2()