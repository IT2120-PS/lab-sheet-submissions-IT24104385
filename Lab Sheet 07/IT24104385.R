##Question 01
#Uniform Distribution
#random variable X follows a uniform distribution with a = 0 and b = 40
punif(25, min = 0, max = 40, lower.tail = TRUE) - punif(10, min = 0, max = 40, lower.tail = TRUE)

##Question 02
#Exponential Distribution
#random variable X follows an exponential distribution with rate = 1/3
pexp(2, rate = 1/3, lower.tail = TRUE)

##Question 03
#Normal Distribution
#random variable X has normal distribution with mean = 100 and sd = 15

#Part 1
1 - pnorm(130, mean = 100, sd = 15, lower.tail = TRUE)

#Part 2
qnorm(0.95, mean = 100, sd = 15, lower.tail = TRUE)
