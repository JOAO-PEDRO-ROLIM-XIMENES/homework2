n <- 1e7 
p <- 1e-7
lambda <- n*p
k <- 0:10
pmf_poisson <- dpois(k, lambda)
resultado <- data.frame(
  k = k,
  Probabilidade = pmf_poisson
)
print(resultado)
barplot(
  pmf_poisson,
  names.arg = k,
  col = "lightblue",
  main = "PMF Aproximada: X ~ Poisson(1)",
  xlab = "Numero de vencedores (k)",
  ylab = "P(X = k)"
)