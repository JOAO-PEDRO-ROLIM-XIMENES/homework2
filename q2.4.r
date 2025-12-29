# Numero de dias simulados
N <- 100000

# Simulacao do numero de vencedores por dia
X_sim <- rpois(N, lambda = 1)

# Valores possiveis
k <- 0:max(X_sim)

# Frequencias empiricas
freq_empirica <- table(X_sim) / N

# PMF teorica da Poisson(1)
pmf_poisson <- dpois(k, lambda = 1)

# Grafico comparativo
barplot(
  freq_empirica,
  col = "lightblue",
  main = "Comparacao entre simulacao e Poisson(1)",
  xlab = "Numero de vencedores",
  ylab = "Probabilidade empirica"
)

points(
  k + 1,
  pmf_poisson,
  col = "red",
  pch = 16
)

legend(
  "topright",
  legend = c("Simulacao", "Poisson(1)"),
  fill = c("lightblue", NA),
  border = NA,
  pch = c(NA, 16),
  col = c("black", "red")
)