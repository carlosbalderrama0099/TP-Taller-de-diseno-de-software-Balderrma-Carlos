Algoritmo Ejercicio_5
	Definir tiempoAnterior, tiempoNuevo Como Real
	
    Escribir "Ingrese el tiempo de la primera carrera (en segundos):"
    Leer tiempoAnterior
	
    Escribir "Ingrese nuevo tiempo:"
    Leer tiempoNuevo
	
    Mientras tiempoNuevo < tiempoAnterior Hacer
        tiempoAnterior <- tiempoNuevo
        Escribir "Nuevo tiempo registrado. Ingrese otro (Escriba uno mayor o igual para terminar):"
        Leer tiempoNuevo
    FinMientras
	
    Escribir "Fin del seguimiento de mejoras."

FinAlgoritmo
