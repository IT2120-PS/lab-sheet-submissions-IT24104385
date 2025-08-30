getwd()
setwd("C:\\Users\\Senuka\\Desktop\\PS lab5")
Delivery_Times <- read.table("Exercise - Lab 05.txt",
                             header = TRUE, check.names = FALSE)

x <- Delivery_Times$`Delivery_Time_(minutes)`

x <- as.numeric(x)
x <- x[!is.na(x)]

brk_9 <- seq(20, 70, length.out = 10)  # 9 classes -> 10 cut points
hist(x,
     breaks = brk_9, right = FALSE,
     main  = "Delivery Times: 9 Classes [20,70), Right-Open",
     xlab  = "Time (minutes)", ylab = "Frequency")

h9 <- hist(x, breaks = brk_9, right = FALSE, plot = FALSE)
cum9 <- cumsum(h9$counts)

right_edges <- h9$breaks[-1]
plot(right_edges, cum9, type = "l",
     xlab = "Time (minutes)", ylab = "Cumulative Frequency",
     main = "Ogive: Delivery Times (Right-Open [a,b))")
points(right_edges, cum9, pch = 16)

