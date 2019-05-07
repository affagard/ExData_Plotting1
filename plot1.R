## Load data source file
# Dataset: Electric power consumption [20Mb]
#
file_name <- "data_source/exdata%2Fdata%2Fhousehold_power_consumption.zip"
file_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
#
#
# Create local folder data_source
if (!dir.exists("data_source")){
        dir.create("data_source", showWarnings = TRUE, recursive = FALSE, mode = "0744")
}
#
#
# Download file_name if needed
if (!file.exists(file_name)){
        print("Waiting while dowloading zipped data source ...")
        download.file(file_url, file_name, method="curl")
}
#
#
if (!file.exists("data_source/household_power_consumption.txt")) { 
        unzip(file_name, exdir = "data_source") 
}

## Unzip file

## Read data over a 2-day period in February, 2007
#  (dates 2007-02-01 and 2007-02-02)

## Plot 1 : Global Active Power
