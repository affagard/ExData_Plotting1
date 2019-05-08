# Code Book
Exploratory Data Analysis - Peer-graded Assignment: Course Project 1

## Subject
In a way of exploratory data, construct 4 plots in 4 PNG files from “Individual household electric power consumption Data Set”
Detailed instructions are listed in README.md


## Data source
<a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

## Reading data source
A single script ```data.global.power.consumption.inc.R``` load  and read data source. It may be called in scripts with ```source("data.global.power.consumption.inc.R")```.
To ease rewiewing, code of this script has been pasted in each script, as asked.

 * ```df_hpc```: Dataframe result of reading for Household Power Consumption
 	* ```date.time``` : POSIXlt, Date and time of the measure, format Y-m-d HH:MM:OS
 	* ```active.power``` : Numeric, instant global active power drawn off, unit = kilowatt (kW)
 	* ```reactive.power``` : Numeric, instant global reactive power returned , unit = kilo-volt-ampere-reactive (kVAr)
 	* ```voltage``` : Numeric, instant voltage, unit = volt (V)
 	* ```intensity``` :  Numeric, instant intensity, unit = ampere (A)
 	* ```submetering.1``` :  Numeric, energy read on submetering 1, unit = watt hour (Wh)
 	* ```submetering.2``` :  Numeric, energy read on submetering 2, unit = watt hour (Wh)
 	* ```submetering.3``` :  Numeric, energy read on submetering 3, unit = watt hour (Wh)

## Results
4 scripts to generate 4 graphics as asked in README.md.
 * Scripts ```plotX.R``` (for ```X``` 1 to 4)
 * Images ```plotX.png``` (for ```X``` 1 to 4)
 
 ## Terms
  * This work has been performed with RStudio Version 1.1.463 on Mac OS X 10.14.4
  * Dependencies : ```library(dplyr)```, ```library(lubridate)```
  * Public Repo : <a href="https://github.com/affagard/ExData_Plotting1">affagard/ExData_Plotting1</a>, forked from <a href="https://github.com/rdpeng/ExData_Plotting1">rdpeng/ExData_Plotting1</a>
 
