require(tidyverse)

state_hpi <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-02-05/state_hpi.csv")

mortgage_rates <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-02-05/mortgage.csv", na = "NA", col_types = c("D", "d", "d", "d", "d", "d", "d", "d", "d"), col_names = c("date", "fixed_rate_30_yr", "fees_and_pts_30_yr", "fixed_rate_15_yr","fees_and_pts_15_yr", "adjustable_rate_5_1_hybrid", "fees_and_pts_5_1_hybrid", "adjustable_margin_5_1_hybrid", "spread_30_yr_and_fixed_5_1_adjustable"))

recession_dates <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-02-05/recessions.csv")


