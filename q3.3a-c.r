box_muller <- function(n) {
U1 <- runif(n)
U2 <- runif(n)
Z1 <- sqrt(-2 * log(U1)) * cos(2 * pi * U2)
Z2 <- sqrt(-2 * log(U1)) * sin(2 * pi * U2)
return(c(Z1, Z2))
}
n <- 1000
Z_box <- box_muller(n / 2)
T_box <- 62 + 3.5 * Z_box

T_rnorm <- rnorm(n, mean = 62, sd = 3.5)

mean_box <- mean(T_box)
sd_box <- sd(T_box)
min_box <- min(T_box)
max_box <- max(T_box)

mean_rnorm <- mean(T_rnorm)
sd_rnorm <- sd(T_rnorm)
min_rnorm <- min(T_rnorm)
max_rnorm <- max(T_rnorm)

print("Media, DP, maximo e minimo - Box-Muller(respectivamente):")
mean_box; sd_box; min_box; max_box
print("Media, DP, maximo e minimo - Box-Muller normal(respectivamente):")
mean_rnorm; sd_rnorm; min_rnorm; max_rnorm