box_muller <- function ( n ) {
U1 <- runif ( n )
U2 <- runif ( n )
Z1 <- sqrt ( -2 * log ( U1 ) ) * cos (2 * pi * U2 )
Z2 <- sqrt ( -2 * log ( U1 ) ) * sin (2 * pi * U2 )
return ( c ( Z1 , Z2 ) )
}
n <- 1000
Z_box <- box_muller ( n / 2)
T_box <- 62 + 3.5 * Z_box
T_rnorm <- rnorm (n , mean = 62 , sd = 3.5)

prob_emp_box_60_65 <- mean(T_box > 60 & T_box < 65)
prob_emp_rnorm_60_65 <- mean(T_rnorm > 60 & T_rnorm < 65)

prob_teo_60_65 <- pnorm(65, mean = 62, sd = 3.5) - pnorm(60, mean = 62, sd = 3.5)

prob_emp_box_60_65
prob_emp_rnorm_60_65
prob_teo_60_65