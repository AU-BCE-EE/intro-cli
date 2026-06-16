# A simple R script to demonstrate R use in Bash

x <- 1:10
y <- rnorm(10)

png('plot.png')
  plot(x, y)
dev.off()
