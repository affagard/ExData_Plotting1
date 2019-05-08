# Code Book
Exploratory Data Analysis - Peer-graded Assignment: Course Project 1

## Subject
In a way of exploratory data, construct 4 plots in 4 PNG files from “Individual household electric power consumption Data Set”
Detailed instructions are listed in README.md


## Data source
<a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

## Reading data source
A single script ```data.global.power.consumption.inc.R``` load  and read data source. It may be called in scripts with ```source("data.global.power.consumption.inc.R")```.
To easy rewiewing, code of this script has been pasted in each script.

## Results
4 scripts to generate 4 graphics as asked in README.md.
 * Scripts ```plotX.R``` (with X 1 to 4)
 * Images ```plotX.png``` (with X 1 to 4)
 
## Dependencies
 * ```library(dplyr)```
 * ```library(lubridate)```
 
 ## Terms
  * This work has been performed with RStudio Version 1.1.463 on Mac OS X 10.14.4
  * Dependencies : ```library(dplyr)```, ```library(lubridate)```
  * Public Repo : <a href="https://github.com/affagard/ExData_Plotting1">affagard/ExData_Plotting1</a>, forked from <a href="https://github.com/rdpeng/ExData_Plotting1">rdpeng/ExData_Plotting1</a>
 
