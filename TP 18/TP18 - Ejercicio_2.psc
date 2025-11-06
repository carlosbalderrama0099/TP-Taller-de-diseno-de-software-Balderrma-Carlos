Algoritmo Ejercicio_2
	Definir vector, i, suma, resta, multiplicacion Como Real
	Dimension vector[10]
	
	suma = 0
	resta = 0
	multiplicacion = 1
	
	Para i = 0 Hasta 9 Con Paso 1 Hacer
		Escribir "Ingrese un numero (", i+1, " de 10): "
		Leer vector[i]
		suma = suma + vector[i]
		resta = resta - vector[i]
		multiplicacion = multiplicacion * vector[i]
	Fin Para
	
	Escribir "La suma es ", suma, " "
	Escribir "La resta es ", resta, " "
	Escribir "La multiplicación es ", multiplicacion, " "

FinAlgoritmo
