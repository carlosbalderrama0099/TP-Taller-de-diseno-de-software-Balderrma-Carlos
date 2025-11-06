Algoritmo Ejercicio_2
	Definir letra Como Caracter
	
	Escribir "Ingrese una letra: "
	Leer letra
	letra = Minusculas(letra)
	Si Subcadena(letra, 0 , 0) >= "a" Y Subcadena(letra, 0 , 0) <= "z"Entonces
		Si letra = "a" O  letra = "e" O letra = "i" O letra = "o" O letra = "u" Entonces
			Escribir "La letra es una VOCAL"
		SiNo
			Escribir "La letra es una CONSONANTE"
		Fin Si
	SiNo
		Escribir "Caracter NO VÁLIDO"
	Fin Si
	
FinAlgoritmo
