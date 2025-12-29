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