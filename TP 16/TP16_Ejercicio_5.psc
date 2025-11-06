Algoritmo TP16_Ejercicio_5
	Definir num Como Entero
    Definir suma_peq, suma_grande, cont_peq, cont_grande Como Entero
    suma_peq = 0
    suma_grande = 0
    cont_peq = 0
    cont_grande = 0
	
    Repetir
        Escribir "Ingrese un número entero positivo (0 para terminar):"
        Leer num
		
        Si num > 0 Entonces
            Si num < 100 Entonces
                Escribir "El número es PEQUEÑO"
                suma_peq = suma_peq + num
                cont_peq = cont_peq + 1
            Sino
                Si num >= 1000 Entonces
                    Escribir "El número es GRANDE"
                    suma_grande = suma_grande + num
                    cont_grande = cont_grande + 1
                Sino	
					Escribir "El número es MEDIANO"
                FinSi
            FinSi
        FinSi
    Mientras Que num <> 0
	
    Si cont_peq > 0 Entonces
        Escribir "Total de números PEQUEÑOS ingresados: ", cont_peq
		Escribir "Promedio de números pequeños: ", suma_peq / cont_peq
    Sino
        Escribir "No se ingresaron números pequeños"
	FinSi
	
	Escribir ""
	
    Si cont_grande > 0 Entonces
        Escribir "Total de números GRANDES ingresados: ", cont_grande
		Escribir "Promedio de números grandes: ", suma_grande / cont_grande
    Sino
        Escribir "No se ingresaron números grandes"
    FinSi
	
FinAlgoritmo