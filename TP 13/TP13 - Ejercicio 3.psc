Algoritmo Ejercicio_3
	Definir compra Como Entero
	Definir membresia Como Caracter
	
	Escribir "Total de la compra: "
	Leer compra
	Escribir "¿Tiene MEMBRESIA? (S) o (N): "
	Leer membresia
	membresia = Mayusculas(membresia)
	Escribir " "
	
	Si membresia = 'S' Entonces
		Si compra >= 5000 Entonces
			Escribir "Total a Pagar: $", compra - (compra * 0.15)
		SiNo
			Escribir "Total a Pagar: $", compra - (compra * 0.05)
		Fin Si
	SiNo
		Escribir "Total a Pagar: $", compra 
	FinSi
	
FinAlgoritmo
