n <- 1e7
p <- 1e-7
lambda <- n*p
E_binomial <- n*p
E_poisson <- lambda
Var_binomial <- n*p*(1 - p)
Var_poisson <- lambda
resultado <- data.frame(
  Distribuicao = c("Binomial","Poisson"),
  Esperanca = c(E_binomial, E_poisson),
  Variancia = c(Var_binomial, Var_poisson)
)

print(resultado)
