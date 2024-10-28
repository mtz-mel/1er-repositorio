# 1. Ecuación cuadrática
#Modificacion de ecoli

## Elabora un programa en R, profusamente comentado, que dados los valores de
## los coeficientes de una ecuación cuadrática, es decir, los valores de a, b,
## c de la ecuación ax2+bx+c=0, arroje lo siguiente:

### (a) Las dos soluciones cuando estas son reales.
### (b) Cuando se tenga solo una solución, lo indique y mande un mensaje diciendo
### por qué solo se tiene una solución.
### (c) Cuando no se tienen soluciones reales, que mande un mensaje que indique que
### no existen soluciones en los números reales y explique por qué.


#------------------------------------------------------------------------------#


### Primero se asignaron valores para los coeficientes de la ecuación cuadrática.
### en este caso se asignaran valores aleatorios del 1 al 50 utilizando la función
### sample:

a <- sample (1:50,1)
a

b <- sample (1:50,1)
b 

c <- sample(1:50,1)
c


#------------------------------------------------------------------------------#


### Visualización de la o las soluciones de nuestra ecuación cuadrática: 

if ((b^2 - 4*a*c) > 0 & (2*a) != 0) { ## La operación b^2 - 4*a*c es la discriminante
  ## de la fórmula general, si la discriminante es mayor a 0 y el denominador es 
  ## diferente de 0 tenemos dos soluciones, ya que obtenemos valores reales.
  (-b + sqrt(b^2 - 4*a*c)) / (2*a) -> solucion_1
  (-b - sqrt(b^2 - 4*a*c)) / (2*a) -> solucion_2
  paste("Tu ecuación cuadrática tiene dos soluciones:", solucion_1, "y", solucion_2)
} else if (( b^2 - 4*a*c) == 0) { ## Si la discriminante es igual a 0 solo hay una 
  ## solución, ya que el valor de la discriminante se suma y resta para obtener 
  ## las dos soluciones, por lo que sumar y restar 0 no haría ningun cambio.
  paste("Tu ecuación cuadrática solo tiene una solución, la cual es:", solucion_1)
} else if ((b^2 - 4*a*c) < 0) { ## Si la discriminante es menor a 0, vamos a 
  ## obtener valores imaginarios, por lo tanto, no hay soluciones reales.
  discriminante <- (b^2 - 4*a*c)
  paste("Tu ecuación cuadrática no tiene soluciones reales ya que la discriminate es un valor negativo:", discriminante)
}

