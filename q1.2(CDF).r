n <- 50
p <- 0.7
x <- 0:n

cdf <- pbinom(x, size = n, prob = p)

plot(x, cdf,
     type = "s",
     lwd = 2,
     col = "red",
     main = "CDF",
     xlab = "Número de clientes que pedem sobremesa",
     ylab = "P(X <= x)")
