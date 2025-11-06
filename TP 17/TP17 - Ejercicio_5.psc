Funcion es_primo = EsPrimo (numero)
	Definir es_primo Como Logico
	Definir i Como Entero
	
	Si numero <= 1 Entonces        // numeros menores o iguales a 1 NO son primos
		es_primo = Falso
	SiNo
		es_primo = Verdadero   // por ahora es primo
		i = 2
		Mientras i < numero Y es_primo Hacer
			Si numero mod i = 0 Entonces   // si el resto es 0, hay un divisor entero, por lo tanto NO es primo.
				es_primo = Falso
			FinSi
			i = i + 1
		FinMientras
	FinSi
	
FinFuncion

Algoritmo Ejercicio_5
	Definir n Como Entero
	
	Escribir "Ingrese un numero entero positivo para verificar si es primo:"
	Leer n
	
	Escribir ""
	Si EsPrimo(n) Entonces
		Escribir n, " es un número PRIMO."
	SiNo
		Escribir n, " NO es un número primo."
	FinSi
	
FinAlgoritmo