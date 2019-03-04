#French train stats
#SNCF data

require(tidyverse)

full_trains <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-02-26/full_trains.csv")
small_trains <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-02-26/small_trains.csv")

small_trains1 <- mutate(small_trains, cause = as_factor(delay_cause))

ggplot(small_trains1, aes(x = year, y = num_arriving_late)) +
  geom_jitter() +
  facet_wrap(~ arrival_station)
