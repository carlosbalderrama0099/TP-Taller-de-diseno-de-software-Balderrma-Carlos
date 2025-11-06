Algoritmo TP16_Ejercicio_2
	Definir num, suma_impares, cant_pares, primer_impar Como Entero
    Definir hay_impar Como Logico
    suma_impares = 0
    cant_pares = 0
    hay_impar = Falso
	primer_impar = 0
	
    Repetir
        Escribir "Ingrese un número entero (mayor a 500 para terminar):"
        Leer num
		
        Si num <= 500 Entonces
            Si num MOD 2 = 0 Entonces
                cant_pares = cant_pares + 1
            Sino
                suma_impares = suma_impares + num
                Si hay_impar = Falso Entonces
                    primer_impar = num
                    hay_impar = Verdadero
                FinSi
            FinSi
        FinSi
    Mientras Que num <= 500
	
	Escribir ""
	Escribir "Cantidad de números pares ingresados: ", cant_pares
    Escribir "Suma de impares ingresados: ", suma_impares
	
    Si hay_impar Entonces
        Escribir "Primer número impar ingresado: ", primer_impar
    Sino
        Escribir "No se ingresaron números impares."
    FinSi
	
FinAlgoritmo