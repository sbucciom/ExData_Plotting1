# course Project 1 -  Plot1
source("dataHousholdPower.R")

plot1 <- function()
{
        
        # 1 READING DATA: use getter function implemented into my package "dataHousholdPower.R"
        hpcRange <- GetDataHoushold_power()
        
        
        # 2 DESIGN PLOT
        hist(hpcRange$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
        
        
        # 3 EXPORT in PNG
        
        dev.copy(png, file = "plot1.png", width=480, height=480)
        dev.off()
}
