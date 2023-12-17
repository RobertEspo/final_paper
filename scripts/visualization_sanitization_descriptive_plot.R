library(here)
source(here("scripts","libraries.R"))
source(here("scripts","create_dfs.R"))
source(here("scripts","model_sanitization.R"))


# Summarize the count of '1's for each group
summary_data <- aggregate(sanitized ~ localization, data = sanitization_df, FUN = function(x) sum(x == 1))

# Rename columns for clarity
names(summary_data) <- c("Localization", "Sanitized")

# Create & save a bar plot using ggplot2
png(here("graphics","san_raw_count.png"))
ggplot(summary_data, aes(x = Localization, y = Sanitized)) +
  geom_bar(stat = "identity") +
  labs(title = "Sanitization Raw Count by Localization", x = "Localization", y = "Sanitization Count")
dev.off()