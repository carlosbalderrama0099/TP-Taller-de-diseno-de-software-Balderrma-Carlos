Funcion es_mult = EsMultiplo (num_a, num_b)
	Definir es_mult Como Logico
	
	Si num_b <> 0 Entonces   
		Si num_a mod num_b = 0 Entonces
			es_mult = Verdadero
		SiNo
			es_mult = Falso
		FinSi
	SiNo
		es_mult = Falso
	FinSi
	
Fin Funcion

Algoritmo Ejercicio_3
	
	Definir a, b Como Entero
	
	Escribir "Ingrese el numero a evaluar (multiplo):"
	Leer a
	Escribir "Ingrese el numero divisor:"
	Leer b
	
	Escribir ""
	Si EsMultiplo(a, b) Entonces
		Escribir a, " ES múltiplo de ", b
	SiNo
		Escribir a, " NO es múltiplo de ", b
	FinSi
	
FinAlgoritmo