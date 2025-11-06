Algoritmo Ejercicio_3
	Definir puntos, suma Como Entero
    Definir continuar Como Caracter
    suma = 0
	
    Repetir
        Escribir "Ingrese puntos obtenidos:"
        Leer puntos
        suma = suma + puntos
		
        Escribir "¿Desea ingresar otro resultado? (S/N):"
        Leer continuar
        continuar = Mayusculas(continuar)
    Mientras Que continuar = "S"
	
    Escribir "Puntaje total del equipo: ", suma
	
FinAlgoritmo
