library(here)
source(here("scripts","libraries.R"))

raw_methods <- read.csv(here("data","dataframes","raw_methods.csv"))

sex_df <- raw_methods %>%
  filter(
    sex == 1
  )

sanitization_df <- raw_methods %>%
  select(
    english, localization, subtitles, method, sanitized
  )
