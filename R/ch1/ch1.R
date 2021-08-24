library(ISLR2)
library(ggplot)
library(magrittr)
tidymodels_prefer() # prefer tidymodels functions
library(FactoMineR) # PCA
# Regular code

# Remake Figure 1.1 a/b/c
Wage %>%
  ggplot(aes(x = age, y = wage)) +
  geom_point() +
  geom_smooth(se = FALSE)

Wage %>%
  ggplot(aes(x = year, y = wage)) +
  geom_point()

Wage %>%
  ggplot(aes(x = education, y = wage)) +
  geom_boxplot()

# Figure 1.2
Smarket %>%
  ggplot(aes(x = Direction, y = Lag1)) +
  geom_boxplot()

Smarket %>%
  ggplot(aes(x = Direction, y = Lag2)) +
  geom_boxplot()

Smarket %>%
  ggplot(aes(x = Direction, y = Lag3)) +
  geom_boxplot()

# Figure 1.3 -- I don't know how to do a quadratic discriminant analysis model
# yet so skipping this one.
#
# Figure 1.4
pc_out <- PCA(NCI60$data, graph = FALSE)

pc_out$ind$coord %>% as.data.frame() %>%
  ggplot(aes(x = Dim.1, y = Dim.2)) +
  geom_point()

