Funcion es_capicua = EsCapicua (num_original)
	Definir es_capicua Como Logico
	Definir num_temp, num_invertido Como Entero
	Definir digito Como Entero
	
	num_temp = num_original                    // Se usa num_temp (numero temporal) para no modificar el original
	num_invertido = 0
	
	Mientras num_temp > 0 Hacer
		digito = num_temp mod 10                          // es para tomar el último dígito
		num_invertido = num_invertido * 10 + digito      // Coloca el dígito al inicio del número invertido
		num_temp = trunc(num_temp/10)                   // elimina el último dígito
	FinMientras
	
	Si num_original = num_invertido Entonces    // compara los numeros
		es_capicua = Verdadero
	SiNo
		es_capicua = Falso
	FinSi
	
Fin Funcion

Algoritmo Ejercicio_7
	Definir n Como Entero
	
	Escribir "Ingrese un numero entero positivo para verificar si es capicua:"
	Leer n
	
	Escribir ""
	Si EsCapicua(n) Entonces
		Escribir n, " es un número CAPICÚA."
	SiNo
		Escribir n, " NO es un número capicúa."
	FinSi
	
FinAlgoritmo