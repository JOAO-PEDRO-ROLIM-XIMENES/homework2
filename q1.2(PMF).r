n <- 50
p <- 0.7
x <- 0:n

pmf <- dbinom(x, size = n, prob = p)

plot(x, pmf,
     type = "h",
     lwd = 2,
     col = "blue",
     main = "PMF Q1",
     xlab = "Número de clientes que pedem sobremesa",
     ylab = "P(X = x)")
