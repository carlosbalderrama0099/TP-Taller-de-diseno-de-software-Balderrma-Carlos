SubProceso CargarAleatorio(v, n)
	Para i = 0 Hasta n-1 Hacer
		v[i] = Aleatorio(0,100)
	FinPara
FinSubProceso

Funcion iguales = CompararVectores(A, B, n)
	iguales = Verdadero
	Para i = 0 Hasta n-1 Hacer
		Si A[i] <> B[i] Entonces
			iguales = Falso
		FinSi
	FinPara
FinFuncion

Algoritmo Ejercicio_6
	Definir i Como Entero
	
	Escribir "Ingrese tamaño de los vectores: "
	Leer n
	Dimension A[n], B[n]
	
	CargarAleatorio(A,n)
	CargarAleatorio(B,n)
	
	Si CompararVectores(A,B,n) Entonces
		Escribir "Los vectores son iguales."
	Sino
		Escribir "Los vectores NO son iguales."
	FinSi
	
FinAlgoritmo