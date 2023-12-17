library(here)
source(here("scripts","libraries.R"))
source(here("scripts","create_dfs.R"))
source(here("scripts","model_sanitization.R"))

png(here("graphics","san_coefs_plot.png"))
plot(allEffects(model_sanitization))
dev.off()