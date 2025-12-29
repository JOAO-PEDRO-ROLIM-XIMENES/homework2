lambda <- 1
w <- 0:20
prob_ganhar_dado_w <- 1/(w + 1)
pmf_w <- dpois(w, lambda)
prob_ganhar <- sum(prob_ganhar_dado_w * pmf_w)
print(prob_ganhar)