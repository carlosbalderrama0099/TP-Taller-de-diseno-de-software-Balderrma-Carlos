Algoritmo Ejercicio_8
	Definir frase Como Cadena
	Definir resultado Como Cadena
	
	Escribir "Ingrese una frase o palabra: "
	Leer frase
	
	Si Longitud(frase) = 4 Entonces
		resultado = Concatenar(frase,"!")
	SiNo
		resultado = Concatenar(frase,"?")
	Fin Si
	
	Escribir resultado
	
FinAlgoritmo