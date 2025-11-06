Algoritmo Ejercicio4
	Definir base Como Real
	Definir altura Como Real
	Definir area, perimetro Como Real
	
	Escribir "Ingrese la BASE en metros: "
	Leer base
	Escribir "Ingrese la ALTURA en metros: "
	Leer altura
	area = base * altura
	perimetro = 2 * (base + altura)
	Escribir " "
	Escribir "El ÁREA total del terreno es: ", area, " m²"
	Escribir "El PERÍMETRO total del terreno es: ", perimetro, " metros"
	Escribir " "
	Escribir "El costo total para colocar CESPED es: $", 850 * area
	Escribir "El costo total para CERCAR es: $", 1200 * perimetro
	Escribir " "
FinAlgoritmo
