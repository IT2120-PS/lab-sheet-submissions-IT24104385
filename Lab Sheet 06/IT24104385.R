##Question 1
#Binomial Distribution
#Here, random variable X ~ Binomial(n=50, p=0.85)

#Part 1
n <- 50
p <- 0.85
prob_47_or_more <- sum(dbinom(47:50, size = n, prob = p))
print(paste("P(X ≥ 47) =", round(prob_47_or_more, 4)))

##Question 2
#Poisson Distribution
#Here, random variable X ~ Poisson(lambda = 12)

lambda <- 12
prob_15_calls <- dpois(15, lambda)
print(paste("P(X = 15) =", round(prob_15_calls, 4)))
