#
## This function loads the initial data and unzip it
## only if the initial zip file is not present
## Then it loads the data
#
load_data <- function() {
  filename_zip <- "household_power_consumption.zip"
  filename_txt <- "household_power_consumption.txt"
  filename_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  
  if( !file.exists( filename_zip ) ) {
    download.file( filename_url, destfile=filename_zip )    
  }
  if( !file.exists( filename_txt ) ) {
    unzip( filename_zip, file=filename_txt )    
  }
  
  # reading from txt file
  data <- read.csv2( file=filename_txt, sep=";" , header=T , na.strings="?" )  
  # creating a new column
  new_col <- paste( data$Date , data$Time )
  # adding a new column to the dataframe
  data$timestamp <- strptime( new_col , "%d/%m/%Y %H:%M:%S")
  
  # subset data from specified interval
  dates <- c( as.Date( "2007-02-01" ), as.Date( "2007-02-02" ) )
  data <- data[ as.Date( data$timestamp) %in% dates , ]
  # return subset
  data
}
