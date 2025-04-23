library(GeneradorAleatorio)

# Generar números aleatorios para simular ventas diarias
ventas_producto1 <- generador_gcl(n = 30, semilla = 7, a = 5, c = 3, m = 100)
ventas_producto2 <- generador_gcl(n = 30, semilla = 13, a = 9, c = 4, m = 100)
ventas_producto3 <- generador_gcl(n = 30, semilla = 20, a = 3, c = 7, m = 100)

# Gráfico de Ventas Diarias
plot(ventas_producto1, type = "o", col = "blue", xlab = "Día", ylab = "Ventas",
     main = "Ventas Diarias - Producto 1 (Descuento)", pch = 16)
plot(ventas_producto2, type = "o", col = "red", xlab = "Día", ylab = "Ventas",
     main = "Ventas Diarias - Producto 2 (Publicidad)", pch = 16)
plot(ventas_producto3, type = "o", col = "green", xlab = "Día", ylab = "Ventas",
     main = "Ventas Diarias - Producto 3 (Precios Nuevos)", pch = 16)

# Comparar las ventas de los tres productos
plot(ventas_producto1, type = "o", col = "blue", xlab = "Día", ylab = "Ventas",
     main = "Comparación de Ventas Diarias de Productos", pch = 16, ylim = c(0, 100))
lines(ventas_producto2, type = "o", col = "red", pch = 16)
lines(ventas_producto3, type = "o", col = "green", pch = 16)
legend("topright", legend = c("Producto 1 (Descuento)", "Producto 2 (Publicidad)", "Producto 3 (Precios Nuevos)"),
       col = c("blue", "red", "green"), pch = 16)

# Estadísticas básicas
cat("Promedio de ventas del Producto 1 (Descuento): ", mean(ventas_producto1), "\n")
cat("Desviación estándar del Producto 1 (Descuento): ", sd(ventas_producto1), "\n")

cat("Promedio de ventas del Producto 2 (Publicidad): ", mean(ventas_producto2), "\n")
cat("Desviación estándar del Producto 2 (Publicidad): ", sd(ventas_producto2), "\n")

cat("Promedio de ventas del Producto 3 (Precios Nuevos): ", mean(ventas_producto3), "\n")
cat("Desviación estándar del Producto 3 (Precios Nuevos): ", sd(ventas_producto3), "\n")

# Correlación entre productos
cat("Correlación entre Producto 1 (Descuento) y Producto 2 (Publicidad): ", cor(ventas_producto1, ventas_producto2), "\n")
cat("Correlación entre Producto 1 (Descuento) y Producto 3 (Precios Nuevos): ", cor(ventas_producto1, ventas_producto3), "\n")
cat("Correlación entre Producto 2 (Publicidad) y Producto 3 (Precios Nuevos): ", cor(ventas_producto2, ventas_producto3), "\n")

