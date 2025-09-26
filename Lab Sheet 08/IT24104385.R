setwd("C:/Users/Senuka/Desktop/Y2S1/PS/Lab/Lab8/IT24104385")
data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)
attach(data)

popmean <- mean(Weight.kg.)
popmean

popsd <- sd(Weight.kg.)
popsd

sd <- sqrt(popvar)
sd

samples <- c()
n <- c()

for (i in 1:25) {
  s <- sample(Weight.kg., 6, replace = TRUE)
  samples <- cbind(samples, s)
  n <- c(n, paste("S", i))
}

colnames(samples) <- n

s.means <- apply(samples, 2, mean)
s.sds   <- apply(samples, 2, sd)


popmean
mean(s.means)

sd
sd(s.means)

popsd
