Algoritmo TP16_Ejercicio_6
	Definir P, i, impar, suma Como Entero
    suma = 0
	
    Escribir "Ingrese un número entero positivo P:"    // cantidad de los primeros numeros impares
    Leer P
	
    impar = 2 * P - 1
	
    Escribir "La suma que se busca es: "
    Repetir
		suma = suma + impar
		Escribir impar Sin Saltar
		Si P > 1 Entonces
            Escribir " + " Sin Saltar
        FinSi
        impar = impar - 2
        P = P - 1
    Mientras Que P > 0
	
    Escribir ""
	Escribir "Resultado de la suma: ", suma
	
FinAlgoritmo
