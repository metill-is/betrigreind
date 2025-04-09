# A ggplot with 4 facets showing the bias-variance trade-off
# One facet for each of the following:
# - low bias, low variance: a distribution that is close to the target and has low spread
# - low bias, high variance: a distribution that is close to the target but has high spread
# - high bias, low variance: a distribution that is far from the target but has low spread
# - high bias, high variance: a distribution that is far from the target and has high spread

library(tidyverse)
library(metill)
theme_set(theme_metill(type = "blog"))
alpha <- 0.2
low_var_scale <- 4.5
n <- 3e3
target <- 0
bias <- 2
xlim <- 6 * c(-1, 1)


ggplot() +
  # Low bias, low variance
  stat_function(
    fun = \(x) dnorm(x, sd = 0.2) / low_var_scale,
    geom = "area",
    xlim = xlim,
    alpha = 0.3 + alpha,
    n = n,
    fill = "#4daf4a"
  ) +
  # High bias, low variance
  stat_function(
    fun = \(x) dnorm(x, mean = bias, sd = 0.2) / low_var_scale,
    geom = "area",
    xlim = xlim,
    alpha = 0.3 + alpha,
    n = n,
    fill = "#e41a1c"
  ) +
  # Low bias, high variance
  stat_function(
    fun = \(x) dnorm(x),
    geom = "area",
    xlim = xlim,
    alpha = alpha,
    n = n,
    fill = "#4daf4a"
  ) +
  # High bias, high variance
  stat_function(
    fun = \(x) dnorm(x, mean = bias),
    geom = "area",
    xlim = xlim,
    alpha = alpha,
    n = n,
    fill = "#e41a1c"
  ) +
  geom_vline(
    xintercept = 0,
    lty = 2
  ) +
  scale_x_continuous(
    breaks = c(-6, -3, 0, 3, 6),
    labels = c("-6", "-3", "0\nRétt gildi", "3", "6")
  ) +
  coord_cartesian(
    xlim = c(-3, 5),
    expand = FALSE
  ) +
  theme(
    axis.line.y = element_blank(),
    axis.ticks.y = element_blank(),
    axis.text.y = element_blank()
  ) +
  labs(
    x = NULL,
    y = NULL
  )

ggsave(
  filename = "Figures/bias_variance.png",
  width = 8,
  height = 1 / 0.621 * 8,
  scale = 0.5,
  bg = "transparent"
)
