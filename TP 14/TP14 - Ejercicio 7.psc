Algoritmo Ejercicio_7
	Definir numero, suma, digito Como Entero
	
    Escribir "Ingrese un número entero positivo:"
    Leer numero
	
    suma <- 0
	
    Mientras numero > 0 Hacer
        digito <- numero MOD 10
        suma <- suma + digito
        numero <- Trunc(numero / 10)
    FinMientras
	
    Escribir "La suma de los dígitos es: ", suma

FinAlgoritmo
