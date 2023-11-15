library(here)
source(here("scripts","libraries.R"))
source(here("scripts","create_dfs.R"))
source(here("scripts","model_sex.R"))

plot(allEffects(model_sex))
