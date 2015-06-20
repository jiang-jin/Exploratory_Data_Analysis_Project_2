library(plyr)
library(ggplot2)
setwd ("D:/Coursera Projects")

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
# read data file

NEI.Baltimore <- NEI[which(NEI$fips == "24510"), ]
aggregate.Baltimore <- with(NEI.Baltimore, aggregate(Emissions, by = list(year), sum))
colnames(aggregate.Baltimore) <- c("year", "Emissions")

# extract Baltimore county

plot(aggregate.24510, type = "o", ylab = expression("Total Emissions, PM"[2.5]), 
     xlab = "Year", main = "Total Emissions for Baltimore County", xlim = c(1999, 2008))
# plot the graph

dev.off ()
