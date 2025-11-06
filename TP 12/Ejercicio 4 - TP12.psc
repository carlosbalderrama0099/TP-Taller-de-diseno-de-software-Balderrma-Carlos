Algoritmo Ejercicio_4
	Definir numero Como Entero
	Definir primerDigito Como Entero
	Definir ultimoDigito Como Entero
	Definir numeroAbsoluto Como Entero
	
	Escribir "Ingrese un número de 3 cifras: "
	Leer numero
	Escribir " "
	numeroAbsoluto = abs(numero)  // Para que los números negativos se hagan positivos
	
	primerDigito = trunc (numero/100)
	ultimoDigito = numero MOD 10
	
	Si (numeroAbsoluto >= 100 Y numeroAbsoluto <= 999) Entonces
		Si primerDigito = ultimoDigito Entonces
			Escribir "El número es CAPICÚA"
		SiNo
			Escribir "El número NO ES CAPICÚA"
		Fin Si
	Fin Si
FinAlgoritmo
