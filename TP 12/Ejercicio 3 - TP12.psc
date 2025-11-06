Algoritmo Ejercicio_3
	Definir letra Como Caracter
	Escribir "Ingrese una LETRA: "
	Leer letra
	letra = Minusculas(letra)
	Si Subcadena(letra, 0 , 0) >= "a" Y Subcadena(letra, 0 , 0) <= "z" Entonces
		Segun letra Hacer
			"a":
				Escribir "La letra ingresada es: VOCAL"
			"e":
				Escribir "La letra ingresada es: VOCAL"
			"i":
				Escribir "La letra ingresada es: VOCAL"
			"o":
				Escribir "La letra ingresada es: VOCAL"
			"u":
				Escribir "La letra ingresada es: VOCAL"
			De Otro Modo:
				Escribir "La letra ingresada es: CONSONANTE"
		Fin Segun
	Fin Si
	
FinAlgoritmo
