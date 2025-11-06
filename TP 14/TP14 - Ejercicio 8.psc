Algoritmo Ejercicio_8
	Definir x, n, cantidad Como Entero
	Definir largo Como Real
	
	x = 1
	cantidad = 0
	
	Escribir "Ingrese el número total de personas (n):"
	Leer n
	
	Mientras x <= n Hacer
		Escribir "Persona: ", x
		Escribir "Ingrese la altura de la persona (en metros):"
		Leer largo
		Si largo >= 1.20 Y largo <= 1.30 Entonces
			cantidad = cantidad + 1
			Escribir "Esta persona cumple el requisito de altura."
		SiNo
			Escribir "Esta persona NO cumple el requisito de altura."
		Fin Si
		
		x = x + 1
		
	Fin Mientras
	
	Escribir ""
	Escribir "Total de personas analizadas: ", n
	Escribir "Total de personas con altura entre 1.20m y 1.30m: ", cantidad
FinAlgoritmo
