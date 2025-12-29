hist(
  T_box,
  probability = TRUE,
  col = "lightblue",
  main = "Temperaturas da CPU - Box-Muller",
  xlab = "Temperatura (°C)"
)

x <- seq(min(T_box), max(T_box), length.out = 1000)
lines(x, dnorm(x, mean = 62, sd = 3.5), col = "red", lwd = 2)

hist(
  T_rnorm,
  probability = TRUE,
  col = "lightgreen",
  main = "Temperaturas da CPU - rnorm",
  xlab = "Temperatura (°C)"
)

x <- seq(min(T_rnorm), max(T_rnorm), length.out = 1000)
lines(x, dnorm(x, mean = 62, sd = 3.5), col = "red", lwd = 2)