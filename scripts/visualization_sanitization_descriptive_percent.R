library(here)
source(here("scripts","libraries.R"))
source(here("scripts","create_dfs.R"))
source(here("scripts","model_sanitization.R"))

# Calculate the percentage of '1's for each group
summary_data <- aggregate(sanitized ~ localization, data = sanitization_df, FUN = function(x) {
  prop.table(table(x == 1))["TRUE"]
})

# Rename columns for clarity
names(summary_data) <- c("Localization", "Sanitized")

# Create and save a bar plot using ggplot2
png(here("graphics","san_percent.png"))
ggplot(summary_data, aes(x = Localization, y = Sanitized)) +
  geom_bar(stat = "identity") +
  labs(title = "Sanitization Percentage by Localization", x = "Localization", y = "Sanitization Percentage")
dev.off()