# Personal package used for loading and properly preparing the dataset in according to the specifications of the project
# this function is called as a getter accessor from all my four plot scripts


GetDataHoushold_power <- function() {
        
        hpc <- read.csv("household_power_consumption.txt", sep=";", na.strings="?", head = TRUE)
        
        # convert date and time variables to Date/Time class
        # I prefer to add new column as a transform for not lose the original column
        hpc$Date_num <- as.Date(hpc$Date, format = "%d/%m/%Y")
        hpc$Time_num <- strptime(paste(hpc$Date, hpc$Time), "%d/%m/%Y %H:%M:%S")
        
        hpc$Sub_metering_1_num <- as.numeric(as.character(hpc$Sub_metering_1))
        hpc$Sub_metering_2_num <- as.numeric(as.character(hpc$Sub_metering_2))
        hpc$Sub_metering_3_num <- as.numeric(as.character(hpc$Sub_metering_3))
        
        # I get my data source selection by data - same result using subset
        hpcRange <- hpc[ (hpc$Date_num == '2007-02-01') | ( hpc$Date_num == '2007/02/02'), ]
        
        # free space
        rm(hpc)
        
        return(hpcRange)
        
}
