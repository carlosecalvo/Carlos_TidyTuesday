require(tidyverse)


fed_rd <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-02-12/fed_r_d_spending.csv")

energy_spend <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-02-12/energy_spending.csv")

climate_spend <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-02-12/climate_spending.csv")

ggplot(fed_rd, aes(x = year, y = rd_budget, group = department)) +
  geom_line(aes(color = department))

fed_rd2 <- mutate(fed_rd, prop_budget = rd_budget/gdp)

ggplot(fed_rd2, aes(x = year, y = prop_budget, group = department)) +
  geom_line(aes(color = department))
