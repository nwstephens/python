### Setup
library(reticulate)
os <- import("os")
os$listdir # tab complete

### Source
source_python("flights.py")
flights <- read_flights("flights.csv")

### Plot
library(ggplot2)
ggplot(flights, aes(carrier, arr_delay)) + geom_point() + geom_jitter()

### REPL
repl_python()
