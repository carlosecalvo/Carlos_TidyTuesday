# PhDs Awarded by Fields
# NSF data
# #epicbookclub challenge

require(tidyverse)


phd_field <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-02-19/phd_by_field.csv", col_types = cols("c", "c", "c", "f", "d"))

total_field <- group_by(phd_field, broad_field, year) %>%
  summarise(total = sum(n_phds, na.rm = T))

ggplot(total_field) +
  aes(x = year) +
  aes(y = total) +
  geom_point() +
  facet_wrap(~ broad_field) +
  labs(x = "Year", y = "", title = "PhDs awarded by Field of Study", subtitle = "Fields rank ordered by number of degrees awarded")


