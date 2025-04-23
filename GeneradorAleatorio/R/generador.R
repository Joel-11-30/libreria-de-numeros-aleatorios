#' Generador Congruencial Lineal
#' @param n Número de valores a generar
#' @param semilla Valor inicial (X0)
#' @param a Multiplicador
#' @param c Constante aditiva
#' @param m Módulo
#' @return Vector con números aleatorios normalizados [0, 1]
#' @export
generador_gcl <- function(n, semilla, a, c, m) {
  x <- numeric(n)
  x[1] <- semilla
  for (i in 2:n) {
    x[i] <- (a * x[i - 1] + c) %% m
  }
  return(x / m)
}

#' Números Aleatorios Uniformes
#' @export
generar_uniformes <- function(n, min = 0, max = 1) {
  runif(n, min, max)
}
