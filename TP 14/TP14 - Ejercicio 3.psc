Algoritmo Ejercicio_3
	Definir puntaje, suma, promedio Como Real
    Definir contador Como Entero
	
    suma = 0
    contador = 0
	
    Escribir "Ingrese una puntuación (número negativo para finalizar):"
    Leer puntaje

	Mientras puntaje >= 0 Hacer
        suma = suma + puntaje
        contador = contador + 1
        Leer puntaje
    FinMientras
	
    Si contador > 0 Entonces
        promedio = suma / contador
        Escribir "Promedio de puntuaciones: ", promedio
    Sino
        Escribir "No se ingresaron puntuaciones válidas."
    FinSi
FinAlgoritmo
