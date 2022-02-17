getwd()

setwd("D:/UvA/Honours/The Why Axis/Assignment/Experiment/Data")

rm(list = ls())

data <- readRDS("data.RDS")

attach(data)

reg1 <- lm(Q1 ~ 1 + Q4)

summary(reg1)

reg2 <- lm(Q3 ~ 1 + Q4)

summary(reg2)

