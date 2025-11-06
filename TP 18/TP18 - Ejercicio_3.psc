Algoritmo Ejercicio_3
	Definir v, i,n, buscado Como Entero
	Definir encontrado Como Logico
	
	Escribir "Ingrese tamaño del vector: "
	Leer n
	Dimension v(n)
	
	Para i = 0 Hasta n-1 Con Paso 1 Hacer
		Escribir "Ingrese valor (", i+1, " de ",n,"): "
		Leer v[i]
	FinPara
	
	Escribir "Ingrese número a buscar: "
	Leer buscado
	
	encontrado = Falso
	
	Para i = 0 Hasta n-1 Con Paso 1 Hacer
		Si v[i] = buscado Entonces
			Escribir "Encontrado en posición ", i
			encontrado = Verdadero
		FinSi
	FinPara
	
	Si No encontrado Entonces
		Escribir "El número no está en el arreglo."
	FinSi
FinAlgoritmo