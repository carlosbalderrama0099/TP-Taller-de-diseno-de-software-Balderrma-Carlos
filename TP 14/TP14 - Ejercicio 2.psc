Algoritmo Ejercicio_2
	Definir limite, consumo, total Como Real
	
    Escribir "Ingrese el límite de GB disponibles:"
    Leer limite
	
    total = 0
	consumo = 0
	Escribir "Ingrese consumo del día (en GB):"
	Leer consumo
	
    Mientras (total + consumo) <= limite Hacer
        total = total + consumo
		Escribir "Total actual: ", total, " GB"
		Escribir "Ingrese consumo del siguiente dia"
		Leer consumo
    FinMientras
	
    Escribir "Límite superado. Total consumido: ", total, " GB"
	Escribir "Ultimo consumo: ",consumo," GB"
	Escribir "Total de GB (EXCEDIDO): ", total + consumo, " GB"
FinAlgoritmo
