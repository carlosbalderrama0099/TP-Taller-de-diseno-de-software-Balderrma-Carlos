Funcion suma = SumarDigitos (num)
	Definir suma,aux Como Entero
	suma = 0
	aux = 0
	
	Mientras num > 0 Hacer
		aux = num mod 10   // obtiene el ultimo digito
		suma = suma + aux   // suma el digito
		num = trunc(num/10)    // elimina el ultimo digito
	FinMientras
	
Fin Funcion

Algoritmo Ejercicio_6
	Definir numero1 Como Entero
	
	Escribir "Ingrese un numero: "
	Leer numero1
	Escribir ""
	Escribir "La suma de sus digitos es: ", SumarDigitos(numero1)
	
	
FinAlgoritmo