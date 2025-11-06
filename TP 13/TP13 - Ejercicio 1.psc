Algoritmo Ejercicio_1
	Definir valor Como Entero
	
	Escribir "Valor de la compra:"
	Leer valor
	Escribir " "
	
	Si valor >= 1000 Entonces
		Escribir "Total a pagar es: $", valor * 0.90 // al valor 1 se le quita el 10% (0.10)
	SiNo
		Escribir "Total a pagar es: $", valor
	Fin Si
	
	
FinAlgoritmo
