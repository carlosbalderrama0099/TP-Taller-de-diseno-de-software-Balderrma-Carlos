Algoritmo Ejercicio_5
	Definir edad Como Entero
	
	Escribir "Ingrese su EDAD: "
	Leer edad
	
	Si (edad >= 0 Y edad <= 12) Entonces
		Escribir "CATEGORIA: Niñez"
	SiNo
		Si (edad >= 13 Y edad <= 19) Entonces
			Escribir "CATEGORIA: Adolescencia"
		SiNo
			Si (edad >= 20 Y edad <= 59) Entonces
				Escribir "CATEGORIA: Adultez"
			SiNo
				Si (edad >= 60) Entonces
					Escribir "CATEGORIA: Adultez mayor"
				Fin Si
			Fin Si
		Fin Si
	Fin Si
	
FinAlgoritmo
