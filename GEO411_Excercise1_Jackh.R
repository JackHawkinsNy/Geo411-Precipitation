#Script file for Exercise #1 - Geography 411
#Jack Hawkins
# Description: Analysis of annual precipitation data for Buffalo and San Diego

getwd()
dir()
setwd("~/Desktop/Working")
library(readr)
precip_ <- read_csv("precip .csv")length(precip_Buffalo)
precip_ <- read_csv("precip .csv")
precip_
dim(precip_)
length(precip_$Buffalo)
summary(precip_)
mean(precip_$Buffalo)
mean(precip_$SanDiego)
sd(precip_$Buffalo)
sd(precip_$SanDiego)
hist(precip_$Buffalo)

hist(precip_$Buffalo, freq = FALSE)
> curve(dnorm(x, mean=mean(precip_$Buffalo), sd=sd(precip_$Buffalo)), add=TRUE)
> hist(precip_$SanDiego, freq = FALSE)
> curve(dnorm(x, mean=mean(precip_$SanDiego), sd=sd(precip_$SanDiego)), add=TRUE)
> precip_$late <- ifelse(precip_$Year >= 1983, 1, 0)
precip_$late == 1
precip_$Year[precip_$late == 1]                           


bfloLate <- precip_$Buffalo[precip_$late == 1]
bfloEarly <- precip_$Buffalo[precip_$late == 0]  

SDLate <- precip_$SanDiego[precip_$late == 1]
SDEarly <- precip_$SanDiego[precip_$late == 0]
t.test(bfloLate, bfloEarly)

t.test(bfloLate, bfloEarly, alternative = "greater")
t.test(bfloLate, bfloEarly, var.equal = TRUE)
t.test(SDLate, SDEarly)

