Funcion mayor = MaximoVector(v, n)
	Definir i, mayor Como Entero
	
	mayor = v[0]
	
	Para i = 1 Hasta n-1 Hacer
		Si v[i] > mayor Entonces
			mayor = v[i]
		FinSi
	FinPara
FinFuncion

Algoritmo Ejemplo_5
	Definir vector,n,i Como Entero
	
	Escribir "Ingrese tamaño del vector: "
	Leer n
	Dimension vector(n)
	
	Para i = 0 Hasta n-1 Hacer
		Escribir "Ingrese vector[",i,"]: "
		Leer vector[i]
	FinPara
	
	Escribir "El valor máximo es: ", MaximoVector(vector,n)
FinAlgoritmo