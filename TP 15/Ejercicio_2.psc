Algoritmo Ejercicio_2
	Definir temp, suma, contador Como Real
    Definir temp_max, temp_min Como Real
    suma = 0
    contador = 0
    temp_max = -9999
    temp_min = 9999
	
    Repetir
        Escribir "Ingrese una temperatura (0 para finalizar):"
        Leer temp
        Si temp <> 0 Entonces
            suma = suma + temp
            contador = contador + 1
            Si temp > temp_max Entonces
                temp_max <- temp
            FinSi
            Si temp < temp_min Entonces
                temp_min = temp
            FinSi
        FinSi
    Mientras Que temp <> 0
	
	Si contador > 0 Entonces
        Escribir "Temperatura máxima: ", temp_max
        Escribir "Temperatura mínima: ", temp_min
        Escribir "Promedio: ", suma / contador
    Sino
        Escribir "No se ingresaron temperaturas válidas"
    FinSi
	
FinAlgoritmo