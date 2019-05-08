## Common include file to construct data from data source
# Called by plot1.R, plot2.R, plot3.R, plot4.R
# Init the dataframe df_hpc (Household Power Consumption Dataframe)

library(dplyr)
library(lubridate)

## Load data source file
# Dataset: Electric power consumption [20Mb]
#
data_source <- "data_source/exdata%2Fdata%2Fhousehold_power_consumption.zip"
data_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
data_local <- "data_source/household_power_consumption.txt"
#
#
# Create local folder data_source
if (!dir.exists("data_source")){
        dir.create("data_source", showWarnings = TRUE, recursive = FALSE, mode = "0744")
}
#
#
# Download file_name if needed
if (!file.exists(data_source)){
        print("Waiting while dowloading zipped data source ...")
        download.file(data_url, data_source, method="curl")
}
#
#
if (!file.exists(data_local)) { 
        unzip(data_source, exdir = "data_source") 
}

## df_hpc : Household Power Consumption
#  One alternative is to read the data from just those dates
#  rather than reading in the entire dataset and subsetting to those dates
df_hpc <- read.table(
        data_local,
        header = FALSE,
        sep = ";",
        quote = "\"'",
        na.strings = "?",
        skip = 66000,
        nrows = 4000
)
df_hpc <- filter(df_hpc,V1=="1/2/2007" | V1=="2/2/2007")

## Convert Date and Time
#
df_hpc$V1 <-  as.POSIXlt(dmy_hms(as.character(paste(df_hpc$V1,df_hpc$V2))), format = "%Y-%m-%d %H:%M:%OS", tz="")
# Remove V2 (time column)
df_hpc$V2 <- NULL
names(df_hpc) <- c("date.time","active.power","reactive.power","voltage","intensity","submetering.1","submetering.2","submetering.3")
