# course Project 1 -  Plot3
source("dataHousholdPower.R")

plot3 <- function()
{
        
        # 1 READING DATA: use getter function implemented into my package "dataHousholdPower.R"
        hpcRange <- GetDataHoushold_power()
        
        
        
        # 2 DESIGN PLOT 
        # Set PNG as graphic device
        png("plot3.png", width=480, height=480)
          
        # my x labels have my local language - italian : giov =Thus; ven = Fry; sab = Sat
        plot(hpcRange$Time_num, hpcRange$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering" )
        points(hpcRange$Time_num, hpcRange$Sub_metering_2, type="l", col="red" )
        points(hpcRange$Time_num, hpcRange$Sub_metering_3, type="l", col="blue" )

        legend("topright", col=c("black","red", "blue"), legend =c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=1)

        
        
        # 3 FLUSH stream graphic device     
        dev.off()

}