# Algoritmo Q-Learning aplicado en el gato
Algoritmo Q-Learnig aplicado en el tradicional juego del gato.

## Introducción

Q-Learning es un algoritmo de aprendizaje por refuerzo. La meta es aprender una serie de reglas que le indique al agente que acción debe tomar en cada situación.  Para entender como toma decisiones el agente se utilizan las tablas Q. Una tabla Q es una matriz, cuyas filas corresponden a estados del tablero, y cuyas columnas corresponde a las acciones. Cada celda de esta tabla contiene la recompensa recibida por una combinación de (estado, acción). 

<p align="center">
  <img width="600" height="600" src="https://rubenlopezg.files.wordpress.com/2015/05/direct_reward1.png">
</p>

La idea del algoritmo Q-Learning es hallar los valores de recompensa de cada posible acción.
