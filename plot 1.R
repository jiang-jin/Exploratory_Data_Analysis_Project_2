library (ggplot2)
library (plyr)
library (lattice)

setwd ("D:/Coursera Projects")
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS ("Source_Classification_code.rds")

aggregate.data <- with(NEI, aggregate(Emissions, by = list(year), sum))

png ("plot1.png", width = 480, height = 480, units = "px", bg = "transparent")

plot(aggregate.data, type = "o", ylab = expression("Total Emissions, PM"[2.5]), xlab = "Year", main = "Total Emissions in the United States")

dev.off()
