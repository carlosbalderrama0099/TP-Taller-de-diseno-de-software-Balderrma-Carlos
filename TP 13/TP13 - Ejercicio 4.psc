Algoritmo Ejercicio_4
	Definir numero Como Entero
	Definir primerNumero Como Entero
	Definir ultimoNumero Como Entero
	
	Escribir "Ingrese un número de 3 cifras: "
	Leer numero
	
	primerNumero = trunc (numero/100)
	ultimoNumero = numero MOD 10
	
	Si (numero >= 100 Y numero <= 999) O (numero <= -100 Y numero >= -999) Entonces
		Si primerNumero = ultimoNumero Entonces
			Escribir "El número es CAPICÚA"
		Fin Si
	Fin Si

FinAlgoritmo
