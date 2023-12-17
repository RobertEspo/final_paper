library(here)
source(here("scripts","libraries.R"))
source(here("scripts","create_dfs.R"))

model_sanitization <- glm(
  sanitized ~ localization,
  family = "binomial",
  data = sanitization_df
)

summary(model_sanitization)

coefficients <- coef(model_sanitization)
coefficients

odds_ratios <- exp(coefficients)
odds_ratios

# Make predictions using 'predict()' function on the fitted model
new_data <- data.frame(localization = c("Latin_America", "Spain"))
predicted_probs <- predict(model_sanitization, newdata = new_data, type = "response")
predicted_probs

# Confidence intervals
conf_intervals <- confint(model_sanitization)
conf_intervals
