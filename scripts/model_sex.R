library(here)
source(here("scripts","libraries.R"))
source(here("scripts","create_dfs.R"))

model_sex <- glm(
  sex_retained ~ localization,
  family = "binomial",
  data = sex_df
)