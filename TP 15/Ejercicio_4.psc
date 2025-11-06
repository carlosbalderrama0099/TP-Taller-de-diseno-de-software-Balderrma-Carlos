Algoritmo Ejercicio_4
	Definir precio, suma_pares, suma_impares Como Real
    Definir cont_pares, cont_impares, i Como Entero
    suma_pares = 0
    suma_impares = 0
    cont_pares = 0
    cont_impares = 0
	
    Para i = 1 Hasta 10 Con Paso 1 Hacer
        Escribir "Ingrese el precio ", i, ":"
        Leer precio
        Si Trunc(precio) MOD 2 = 0 Entonces
            suma_pares = suma_pares + precio
            cont_pares = cont_pares + 1
        Sino
            suma_impares = suma_impares + precio
            cont_impares = cont_impares + 1
        FinSi
    FinPara
	
    Si cont_pares > 0 Entonces
        Escribir "Promedio precios pares: ", suma_pares / cont_pares
    Sino
        Escribir "No se ingresaron precios pares."
    FinSi
	Si cont_impares > 0 Entonces
        Escribir "Promedio precios impares: ", suma_impares / cont_impares
    Sino
        Escribir "No se ingresaron precios impares."
    FinSi
	
FinAlgoritmo
