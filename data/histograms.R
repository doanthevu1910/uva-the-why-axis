getwd()

setwd("D:/UvA/Honours/The Why Axis/Assignment/Experiment/Data")

rm(list = ls())

data <- readRDS("data.RDS")

attach(data)
hist(Q1, breaks = seq(min(Q1), max(Q1), length.out = 11))

library(lattice)

attach(data)

histogram(Q1, breaks = 100, xlim = c(0,100), ylab = "relative frequency (in percent)", xlab = "Choices (for whole sample)", col = "black")
histogram(Q3, breaks = 100, xlim = c(0,100), ylab = "relative frequency (in percent)", xlab = "Choices (for whole sample)", col = "black")

detach(data)

datayes <- subset(data, data$Q4 == "Yes")

View(datayes)

attach(datayes)

histogram(Q1, breaks = 100, xlim = c(0,100), ylab = "relative frequency (in percent)", xlab = "Choices (for people who have participated in a similar experiment before)", col = "black")
histogram(Q3, breaks = 100, xlim = c(0,100), ylab = "relative frequency (in percent)", xlab = "Choices (for people who have participated in a similar experiment before)", col = "black")

detach(datayes)

datano <- subset(data, data$Q4 == "No")

attach(datano)

histogram(Q1, breaks = 100, xlim = c(0,100), ylab = "relative frequency (in percent)", xlab = "Choices (for people who have not participated in a similar experiment before)", col = "black")
histogram(Q3, breaks = 100, xlim = c(0,100), ylab = "relative frequency (in percent)", xlab = "Choices (for people who have not participated in a similar experiment before)", col = "black")
