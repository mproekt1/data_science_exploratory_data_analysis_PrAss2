plot1 <- function(){
    # Using the base plotting system, make a plot showing the total PM2.5 emission 
    # from all sources for each of the years 1999, 2002, 2005, and 2008 
    
    # Question: Have total emissions from PM2.5 decreased in the United States from 1999 to 2008?
    
    
    # Load data from RDS files. The RDS data files must belocated in the same
    # directory ar the script file plot1.R
    
    data.emissions.PM2.5 <- readRDS("summarySCC_PM25.rds")

    data.emissions.PM2.5$year <- as.factor(data.emissions.PM2.5$year)
    
    data.emissions.PM2.5.annual.total <- aggregate(data.emissions.PM2.5$Emissions, by = list(data.emissions.PM2.5$year), FUN = sum)
    
    names(data.emissions.PM2.5.annual.total) <- c("year", "Emissions")

    plot(data.emissions.PM2.5.annual.total$year, data.emissions.PM2.5.annual.total$Emissions)
}