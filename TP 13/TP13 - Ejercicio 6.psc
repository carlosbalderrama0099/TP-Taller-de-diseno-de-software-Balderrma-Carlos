Algoritmo Ejercicio_6
	Definir numero Como Entero
	Definir primer_numero Como Entero
	Definir segundo_numero Como Entero
	
	Escribir "Ingrese un numero de 2 cifras: "
	Leer numero
	
	primer_numero = trunc (numero / 10)
	segundo_numero = numero MOD 10
	
	Si (numero >= 10 Y numero <= 99) O (numero >= -99 Y numero <= -10) Entonces
		Escribir "La suma de sus digitos es igual a: "
		Escribir primer_numero, " + ", segundo_numero " = ", (primer_numero + segundo_numero)
	SiNo
		Escribir "Numero inválido"
	Fin Si
	
FinAlgoritmo
