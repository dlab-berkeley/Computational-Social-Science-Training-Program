# This script updates the 2014 inspection data to create a categorical
# results label so that students can use this column to compare with 
# their predictions.
# ----------



# load libraries
# ----------
library(tidyverse)

# load 2014 inspection data
# ----------
inspection2014_raw <- read_csv("Chicago Inspections 2014.csv")


# create "Results" column based on flags
# ----------
inspection2014_temp <- 
  inspection2014_raw %>%
  mutate(Results = case_when(pass_flag == 1 ~ "Pass",
                             fail_flag == 1 ~ "Fail", 
                             TRUE  ~ "Pass w/ Conditions")) %>% 
  glimpse()


# check reults in viewer
# ----------
inspection2014_temp %>% 
  select(Results, pass_flag, fail_flag) %>% 
  View()


# create final data
# ----------
inspection2014 <- 
  inspection2014_temp %>% 
  select(-pass_flag, -fail_flag) %>% 
  glimpse()
  
# save 
# ----------
write_csv(inspection2014, "Chicago Inspections 2014_updated.csv")
