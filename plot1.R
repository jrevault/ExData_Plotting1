#
## This function plots the graph 1
#

# Load the common.R source file
source("common.R")

plot1 <- function() {
  # Calls the load_data function from the "common.R" source file
  data <- load_data()

  # prepares the PNG file
  png( "plot1.png", width=480, height=480)
  
  # create the graph
  hist( as.numeric( as.character(data$Global_active_power ) ), 
        main="Global Active Power",
        ylab="Frequency", 
        xlab="Global Active Power (kilowatts)",
        col="red"
  )
  dev.off()
}

plot1()