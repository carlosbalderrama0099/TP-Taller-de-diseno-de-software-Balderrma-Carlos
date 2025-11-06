Algoritmo Ejercicio_2
	Definir varones Como Entero
	Definir mujeres Como Entero
	Definir total Como Entero
	Definir totalAumento Como Real
	
	Escribir "Ingrese cantidad de niños"
	Leer varones
	Escribir "Ingrese cantidad de niñas"
	Leer mujeres
	
	total = varones + mujeres
	//Aumento del 15%
	totalAumento = total * 1.15
 	
	Escribir "La porcentaje de niños es: ", varones * 100 / total, " %"
	Escribir "La porcentaje de niñas es: ", mujeres * 100 / total, " %"
	Escribir ""
	Escribir "El total que se proyecta para el proximo año con un aumento del 15% son"
	Escribir "Niños esperados: ", trunc((varones * 100) / (total) * totalAumento / 100), " niños"
	Escribir "Niñas esperadas: ", trunc((mujeres * 100) / (total) * totalAumento/ 100), " niñas"
	
	
FinAlgoritmo
