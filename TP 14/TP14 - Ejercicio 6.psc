Algoritmo Ejercicio_6
	Definir numero, contador Como Entero
	
    Escribir "Ingrese un número entero positivo:"
    Leer numero
	
    contador <- 0
	
    Mientras numero > 0 Hacer
        numero <- Trunc(numero / 10)
        contador <- contador + 1
    FinMientras
	
    Escribir "Cantidad de dígitos: ", contador
FinAlgoritmo
