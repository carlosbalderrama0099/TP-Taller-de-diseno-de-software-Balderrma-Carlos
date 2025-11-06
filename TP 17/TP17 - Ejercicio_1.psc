Funcion resultado = Sumar (num1, num2)
	Definir resultado Como Entero
	resultado = num1 + num2
Fin Funcion

Algoritmo Ejercicio_1
	Definir a, b, suma_total Como Entero
	
	Escribir "Ingrese el primer numero:"
	Leer a
	Escribir "Ingrese el segundo numero:"
	Leer b
	
	suma_total = Sumar(a, b)   // llama a la funcion
	
	Escribir ""
	Escribir "La suma de ", a, " mas ", b, " es: ", suma_total
	
FinAlgoritmo