
install.packages("sf")
install.packages("tmap")
install.packages("tmaptools")
install.packages("tidycensus")

library("sf")
library("tmap")
library("tmaptools")
library("tidycensus")
library("dplyr")
library("ggplot2")

# access from 1990, 2000, 2010 (default) census
  # geography - specifies level of aggregation
  # variables - vector of census variable ID codes
state_pop <- get_decennial(geography = "state",
                           variables = "P001001")

# get_ACS for American Community Survey
    # default - 5 year 2012-2016 ACS sample
    # since ACS data are based on survey samples, they represent estimates
        # rather than exact data, & thus characterized by Margins of Error 
state_income <- get_acs(geography = "state",
                        variables = "B19013_001")
