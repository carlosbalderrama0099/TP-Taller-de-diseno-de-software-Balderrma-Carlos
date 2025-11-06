Funcion respuesta = EsImpar (numero)
	Definir respuesta Como Logico
	
	Si numero mod 2 = 0 Entonces
		respuesta = Falso
	SiNo
		respuesta = Verdadero
	FinSi
Fin Funcion

Algoritmo Ejercicio_2
	Definir numero1 Como Entero
	
	Escribir "Ingrese un numero: "
	Leer numero1
	
	Escribir "El numero ingresado es IMPAR => ", EsImpar(numero1)	
	
FinAlgoritmo
