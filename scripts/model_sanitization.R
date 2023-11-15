library(here)
source(here("scripts","libraries.R"))
source(here("scripts","create_dfs.R"))

model_sanitization <- glm(
  sanitized ~ localization,
  family = "binomial",
  data = sanitization_df
)