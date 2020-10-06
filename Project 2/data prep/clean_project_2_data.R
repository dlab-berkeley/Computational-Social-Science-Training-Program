library(tidyverse)

# CDC Diabetes Data
diabetes <- read_csv("DiabetesAtlasCountyData.csv", skip = 2)
diabetes <- diabetes %>%
  select(!`Lower Limit` & !`Upper Limit`) %>%
  rename(Diabetes_Number = Number)

# CDC Obesity Data
obesity <- read_csv("ObesityAtlasCountyData.csv", skip = 2)
obesity <- obesity %>%
  select(!`Lower Limit` & !`Upper Limit`) %>%
  rename(Obesity_Number = Number)

# CDC Physical Inactivity Data
physical_inactivity <- read_csv("Physical_Inactivity_AtlasCountyData.csv", skip = 2)
physical_inactivity <- physical_inactivity %>%
  select(!`Lower Limit` & !`Upper Limit`) %>%
  rename(Physical_Inactivity_Number = Number)

# All CDC
cdc_diabetes <- diabetes %>%
  left_join(obesity) %>%
  left_join(physical_inactivity)

# American Community Survey Data
# Read data, skip first line to get column names
acs <- read_csv("ACSDP5Y2018.DP05_data_with_overlays_2020-10-05T151027.csv",
                skip = 1)

# Prep ACS data

process_col_names <- function(colname) {
  # Remove "Estimate!!" in front of strings
  colname <- str_replace(colname, "Estimate!!", "")
  # Replace all "!!" with "_" to indicate categories
  colname <- str_replace_all(colname, "!!", "_")
  # Replace "," with " - " to make column names less confusing
  colname <- str_replace_all(colname, ",", " - ")
  # lowercase all column names
  colname <- str_to_lower(colname)
  return(colname)
}

acs <- acs %>%
  # Remove any columns with "Percent" or "Margin" in the column names
  select(!contains("Percent") &
         !contains("Margin")) %>%
  # Rename all columns except the first two to process them as above
  rename_at(vars(`Estimate!!SEX AND AGE!!Total population!!65 years and over!!Sex ratio (males per 100 females)`:`Estimate!!SEX AND AGE!!Total population!!65 years and over!!Female`),
                process_col_names) %>%
  # Fix county id to match CountyFIPS and remove redundant id and geography
  mutate(CountyFIPS = str_extract(acs$id, "(?<=US)[^US]*$")) %>%
  select(!id & !`Geographic Area Name`) 

# Join dataframes together

diabetes_acs <- cdc_diabetes %>%
  left_join(acs, by = c("CountyFIPS")) %>%
  distinct() %>%
  drop_na()

write_csv(diabetes_acs, "../Diabetes with Population Info by County 2017.csv")
