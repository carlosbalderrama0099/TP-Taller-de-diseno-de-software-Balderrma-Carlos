Algoritmo Ejercicio_1

	Definir cantidadDeAlumnos Como Entero
	Definir futbol Como Entero
	Definir musica Como Entero
	Definir robotica Como Entero
	Definir total Como Entero

	Escribir "Cantidad de alumnos que eligen futbol:"
	Leer futbol
	Escribir "Cantidad de alumnos que eligen musica:"
	Leer musica
	Escribir "Cantidad de alumnos que eligen robotica:"
	Leer robotica
	
	total = futbol + musica + robotica
	
	Escribir "El porcentaje de Alumnos que eligió futbol es:", futbol * 100 / total, " %"
	Escribir "El porcentaje de Alumnos que eligió musica es:", musica * 100 / total, " %"
	Escribir "El porcentaje de Alumnos que eligió robotica es:", robotica * 100 / total, " %"
	
FinAlgoritmo
