## make a barchart from the frequency table in data/add-on-packages-freqtable.csv
library(here)
library(readr)
library(tidyverse)

## read that csv into a data frame, then ...
freq <- read_csv(here("data", "add-on-packages-freqtable.csv"))

## if you use ggplot2, code like this will work:
ggplot(freq, aes(x = Built, y = n)) +
  geom_bar(stat = "identity")

## write this barchart to figs/built-barchart.png
## if you use ggplot2, ggsave() will help
## YES overwrite the file that is there now
## that came from me (Jenny)
ggsave("built-barchart.png", plot = last_plot(), path = here("figs"))

## when this script works, stage & commit it and the png file
## PUSH!
