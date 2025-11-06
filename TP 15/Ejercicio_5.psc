Algoritmo Ejercicio_5
	Definir N, i, suma Como Entero
    suma = 0
	
    Escribir "Ingrese un número entero positivo (cantidad de números pares a sumar):"
    Leer N
	
    Para i = 1 Hasta N Con Paso 1 Hacer
        suma = suma + (i * 2)
    FinPara
	
    Escribir "La suma de los primeros ", N, " números pares es: ", suma
	
FinAlgoritmo
