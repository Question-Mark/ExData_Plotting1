## plot1 plot a histogram of Global_active_power from dataset household_power_consumption.txt

plot1 <- function() {
    ## get all data
    raw_data <- read.csv("data/household_power_consumption.txt", sep=";", na.strings="?", colClasses=c("character", "character", rep("numeric", 7)))

    ## convert Date column to vector of Date
    raw_data$Date <- as.Date(raw_data$Date, format="%d/%m/%Y")
       
    ## get data to plot from specified date range
    user_data <- subset(raw_data, raw_data$Date >= "2007-02-01" & data$Date < "2007-02-03")
    raw_data <- NULL
    
    ## set up png device
    png(filename="plot1.png", width=504, height=504, bg="transparent", res=as.integer(120))
    
    ## set up font style, size and margins
    par(cex=0.6)
    par(cex.main=1.1, mar=c(5,4,3.95,2)+0.1, mgp=c(3,1,0))
    
    ## plot histogram of Global Active Power
    hist(udata$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="Red", bg="transparent", font=2, font.lab=2, font.axis=2)
    
    ## close graphics device
    dev.off()
}