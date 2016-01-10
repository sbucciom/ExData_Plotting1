# course Project 1 -  Plot2
source("dataHousholdPower.R")

plot2 <- function()
{
        
        # 1 READING DATA: use getter function implemented into my package "dataHousholdPower.R"
        hpcRange <- GetDataHoushold_power()
        
        
        # 2 DESIGN PLOT 
        # my x labels have my local language - italian : giov =Thus; ven = Fry; sab = Sat
        with(hpcRange, plot(Time_num, 
                            Global_active_power, 
                            type="l", 
                            xlab="", 
                            ylab="Global Active Power (kilowatts)"
        )
        )
        
        # 3 EXPORT in PNG
        
        dev.copy(png, file = "plot2.png", width=480, height=480)
        dev.off()
}

