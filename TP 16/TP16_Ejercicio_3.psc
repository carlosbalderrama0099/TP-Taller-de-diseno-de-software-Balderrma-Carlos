Algoritmo TP16_Ejercicio_3
	Definir puntaje, total Como Entero
    Definir seguir Como Caracter
    total = 0
	
    Repetir
        Escribir "Ingrese el puntaje de la partida:"
        Leer puntaje
        total = total + puntaje
		
        Escribir "¿Desea agregar otro puntaje? (s/N):"
        Leer seguir
        seguir = Minusculas(seguir)
    Mientras Que seguir = "s"
	
    Escribir "Puntaje total acumulado: ", total
	
FinAlgoritmo
