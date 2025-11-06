Algoritmo Ejercicio_9
	Definir minutos Como Real
	Definir precio Como Real
	Definir total Como Real
	Definir dia Como Cadena
	Definir turno Como Cadena
	
	Escribir "Tiempo de la llamada (MINUTOS): "
	Leer minutos
	Escribir "DÍA: "
	Leer dia
	Escribir "TURNO (MAÑANA / TARDE): "
	Leer turno
	
	dia = Mayusculas(dia)
	turno = Mayusculas(turno)
	precio = 30 * minutos
	total = precio

	Si dia = "LUNES" O dia = "MARTES" O dia = "MIERCOLES" O dia = "JUEVES" O dia = "VIERNES" O dia = "SABADO" Entonces
		Si turno = "MAÑANA" Entonces
			total = precio + (precio * 0.15) 
		SiNo
			Si turno = "TARDE" Entonces
				total = precio + (precio * 0.10)
			FinSi
		Fin Si
	SiNo
		Si dia = "DOMINGO" Entonces
			total = precio + (precio * 0.03)
		Fin Si
	Fin Si
	
	Escribir "TOTAL A PAGAR: $", total
FinAlgoritmo
