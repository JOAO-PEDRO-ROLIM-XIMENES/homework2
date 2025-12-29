n <- 50
p <- 0.7

prob_a <- 1 - pbinom(19, size = n, prob = p)
prob_a

prob_b <- pbinom(42, size = n, prob = p) - pbinom(30, size = n, prob = p)
prob_b

prob_c <- dbinom(31, size = n, prob = p)
prob_c