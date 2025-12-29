mu <- 62
sigma <- 3.5
U1 <- runif(1)
U2 <- runif(1)
Z1 <- sqrt(-2 * log(U1)) * cos(2 * pi * U2)
Z2 <- sqrt(-2 * log(U1)) * sin(2 * pi * U2)
Z <- c(Z1, Z2)

T_cpu <- mu + sigma * Z