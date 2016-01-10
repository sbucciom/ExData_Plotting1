# course Project 1 -  Plot4
source("dataHousholdPower.R")

plot4 <- function()
{
        
        # 1 READING DATA: use getter function implemented into my package "dataHousholdPower.R"
        hpcRange <- GetDataHoushold_power()

        
        # 2 DESIGN PLOT 
        # my x labels have my local language - italian : giov =Thus; ven = Fry; sab = Sat
        
        # Set PNG as graphic device
        png("plot4.png", width=480, height=480)

        # Set layout properly
        par(mfrow=c(2,2))
        
        
        # (I) PLOT: [1,1] -  Global Active Power / DateTime
        with(hpcRange, plot(Time_num, 
                            Global_active_power, 
                            type="l", 
                            xlab="", 
                            ylab="Global Active Power"
        )
        )
        
        # (II) PLOT:  [1,2] - Voltage / datetime
        with(hpcRange, plot(Time_num, 
                            Voltage, 
                            type="l", 
                            xlab="datetime", 
                            ylab="voltage"
        )
        )
        
        # (III) PLOT:  [2,1] - Energy sub metering / dateTime
        plot(hpcRange$Time_num, hpcRange$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering" )
        points(hpcRange$Time_num, hpcRange$Sub_metering_2, type="l", col="red" )
        points(hpcRange$Time_num, hpcRange$Sub_metering_3, type="l", col="blue" )
        
        legend("topright",
               col=c("black", "red", "blue"),
               c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
               lty=1,
               box.lwd=0, bty="n")
        
        

        # (IV) PLOT:  [2,2] - Global Reactive Power / DateTime
        with(hpcRange, plot(Time_num, 
                            Global_reactive_power, 
                            type="l", 
                            xlab="datetime"
        )
        )
        
        
        
        # 3 FLUSH stream graphic device
        dev.off()

}


