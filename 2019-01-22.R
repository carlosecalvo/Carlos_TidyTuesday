require(tidyverse)

prison_sum <- read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-01-22/prison_summary.csv")

pretrial_sum <- read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-01-22/pretrial_summary.csv")

prison_pop <- read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-01-22/prison_population.csv")

pretrial_pop <- read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-01-22/pretrial_population.csv")

ggplot(prison_sum, aes(x = year, y = rate_per_100000, color = pop_category)) +
  geom_line() +
  facet_wrap(~urbanicity)

ggplot(pretrial_sum, aes(x = year, y = rate_per_100000, color = pop_category)) +
  geom_line() +
  facet_wrap(~urbanicity)

zips <- read_delim("~/Desktop/Zipcodes.txt", delim = ",")

prison_geo <- inner_join(prison_pop, zips, by = c("state" = "state_id", "county_name"))
 