box_muller <- function(n) {
  U1 <- runif(n)
  U2 <- runif(n)
  Z1 <- sqrt(-2*log(U1))*cos(2*pi*U2)
  Z2 <- sqrt(-2*log(U1))*sin(2*pi*U2)
  return(c(Z1,Z2))
}
Z <- box_muller(500)

#não tem print, não gera saída, mas poderia usar o comando head por exemplo para ver algum dos valores